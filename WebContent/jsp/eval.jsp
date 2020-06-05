<%@page import="model.EvaluationBean"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.EvalBookBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.AppleDao"%>
<%@page import="model.BookBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bily</title>
<meta name="description"
	content="Fullscreen Pageflip Layout with BookBlock" />
<meta name="keywords"
	content="fullscreen pageflip, booklet, layout, bookblock, jquery plugin, flipboard layout, sidebar menu" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="/web/css/jquery.jscrollpane.custom.css" />
<link rel="stylesheet" type="text/css" href="/web/css/bookread.css" />
<link rel="stylesheet" type="text/css" href="/web/css/custom.css" />
<script src="/web/js/modernizr.custom.79639.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">

<link rel="stylesheet" href="/web/css/eval1.css">
<link rel="stylesheet" href="/web/css/eval2.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript"
	src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script>
	
<%String code = request.getParameter("code");
  String id = request.getParameter("id");
			ArrayList<BookBean> beanList = (ArrayList<BookBean>) AppleDao.selectRead(code);
			ArrayList<EvalBookBean> evalList = (ArrayList<EvalBookBean>) AppleDao.selectEval(code);%>
	$(function() {
		$("*").css("font-family", "times new roman");

		$("a#1page").click(function() {
			$("div#ipage").show();
		});

		$("button#btn").click(function() {
			//alert("test") ;
			if ($("input#eval").val().length == 0) {
				alert("감상평을 입력해 주세요.");
				return false;
			}
			//alert($("input#eval").val());
			$("form#frm").submit();

		});

		$("input[name='radio-1']").click(function() {

			/* $("input.chGroup").each(function(index,dom) {
				alert(index+":"+dom);
			}); */
		});
		
		$( "input" ).checkboxradio();
		
		
	});
	
	function reLoad(){
		document.location.reload();
	}
</script>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	//request.getParameter(id); 로긍인이 될 경우 아이디를 파라미터로 같이 넘길것
	EvaluationBean bean = new EvaluationBean();
	/* String id = "cyvk567"; *///같은 아이디로 2번 평가 안됨 db애서 제약 걸어둠
	System.out.println(request.getParameter("radio-1"));
	String str = request.getParameter("radio-1");
	
	if(str!=null){
	int score = Integer.parseInt(request.getParameter("radio-1"));
	String evaluation = request.getParameter("eval");

	//System.out.println(evaluation);
	bean.setBookcode(code);
	bean.setEvaluation(evaluation);
	bean.setId(id);
	bean.setScore(score);

	AppleDao.insertEvaluation(bean);
	

	/* System.out.print(AppleDao.searchEval(id, code));
	 */
	}
%>
<body style="overflow: scroll;">

	<div id="container" class="container slideRight" >
		<%
			for (BookBean b : beanList) {
		%>
		<div class="menu-panel">
			<h3><%=id%>'s Book</h3>
			<ul id="menu-toc" class="menu-toc2">

				<li class="menu-toc-current"><a href="index.jsp">HOME</a></li>
				<!-- <li><a id="1page" href="#">첫페이지</a> </li> -->
				<li><a href="read.jsp?code=<%=code%>&id=<%=id%>">돌아가기</a></li>
				<!-- <li><a href="#">찜하기</a></li> -->
				<li><a href="<%=b.getLink()%>" target="_blank">종이책 구매하기</a></li>
			</ul>
		</div>
		<!-- menu-panel -->
		<%
			}
		%>
		<form action="" name="frm" id="frm" method="POST"
			accept-charset="UTF-8" enctype="application/x-www-form-urlencoded">

			<div class="w3-col m7">

				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card w3-round w3-white">
							<div class="w3-container w3-padding">
								<h6 class="w3-opacity"><%=id%>
									님의 한줄평을 입력해주세요.
								</h6>
								<input id="eval" type="text" name="eval"
									class="w3-border w3-padding" size="80%"
									style="margin-right: 5px; ime-mode: active;">
								<div style="display: inline; margin-left: 20px;">
									<%
										for (int i = 1; i < 6; i++) {
									%>
										<input type="radio" name="radio-1" id="radio-<%=i%>" value="<%=i%>"/>
										<%=i%>점
									<%
										}
									%>
								</div>
								<button type="button" id="btn" class="w3-button w3-theme"
									style="margin-left: 15px; margin-bottom: 5px;"><a href="javascript:reLoad()">입력</a></button>
							</div>
						</div>
					</div>
				</div>


				<%
					for (EvalBookBean e : evalList) {
				%>
				<div class="w3-container w3-card w3-white w3-round w3-margin">
					<span class="w3-right w3-opacity">작성자: <%=e.getId()%>&emsp;작성일: <%=e.getWritedate()%></span>
					<h4 style="display: inline;"><%=e.getBookname()%></h4>&emsp;평점:<%=e.getScore()%>
					<hr class="w3-clear">
					<p style="margin-bottom: 10px;"><%=e.getEvaluation()%></p>
				</div>
				<%
					}
				%>
			</div>
			<!-- w3-col m7 -->
		</form>
	</div>
	<!-- /container -->



	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="/web/js/jquery.mousewheel.js"></script>
	<script src="/web/js/jquery.jscrollpane.min.js"></script>
	<script src="/web/js/jquerypp.custom.js"></script>
	<script src="/web/js/jquery.bookblock.js"></script>
	<script src="/web/js/page.js"></script>
	<script>
		$(function() {

			Page.init();

		});
	</script>
</body>
</html>