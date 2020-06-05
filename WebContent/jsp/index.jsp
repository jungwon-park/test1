<%@page import="java.util.HashMap"%>
<%@page import="model.InsertBookBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.AppleDao"%>
<%@page import="model.BookBean"%>
<%@
page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Billy</title>
<meta name="description" content="Book Preview with BookBlock" />
<meta name="keywords"
	content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="/web/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="/web/css/demo.css" />
<link rel="stylesheet" type="text/css" href="/web/css/bookblock.css" />
<link rel="stylesheet" type="text/css" href="/web/css/component.css" />
<link rel="stylesheet" type="text/css" href="/web/css/3wc.css" />
<script src="js/modernizr.custom.js"></script>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script src="/web/js/sign.js" charset="UTF-8"></script>
<link href="/web/css/jquery.bxslider.css" rel="stylesheet">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="/web/js/jquery.bxslider.js"></script>
<script>
	$(function() {
		//total font 
		$("*").css("font-family", "times new roman");

		//accrdion css 
		$(".category").css({
			"background-color" : '#FFEB60',
			"border-radius" : "10px",
			"margin" : "80px 20px 20px 20px",
			"text-align" : "center",
			"box-shadow" : "3px 3px #787878"

		});

		$(document).ready(function() {
			$('.bxslider').bxSlider({
				auto : true,
				speed : 500,
				pause : 4000,
				mode : 'fade',
				autoControls : true,
				pager : true,
			});
		});

		$("a#search").click(function() {
			//alert("fucking good") ;
			/* if($("select#query").val()=='empty' || $("input#data").val().length==0){
			 alert("검색창 좀 확인하셈!!!");
			 return false;
			} */
			$("form#frm").submit();
		});

	});

	function searchData() {
		var obj = document.frm;
		if (!obj.data.value) {
			alert('검색 값이 없습니다.');
			obj.query.selectedIndex = 0;
			obj.data.value = '';
			return false;
		}
		obj.submit();
	}
</script>

<style>
.imgBox {
	width: 60%;
	padding-top: 100px;
	padding-bottom: 100px;
}

.ui-menu {
	width: 150px;
}

.category {
	display: inline;
	padding: 10px 5px;
}

.accordion_title {
	font-size: 20px;
}
</style>

</head>
<%	
	//검색
	request.setCharacterEncoding("UTF-8");
	String query=request.getParameter("query");
	String data=request.getParameter("data");
	String id= (String)session.getAttribute("id"); 

	HashMap<String,Object> map= new HashMap<String,Object>();
	map.put("query", query);
	map.put("data", data);
	AppleDao.searchBookBean(map);
	List<InsertBookBean>list =AppleDao.searchBookBean(map);
	
	if(id!=null){
		session.setAttribute("id", id);
	}
%>	
<body>
	<form action="#" name="frm" id="frm" method="POST">
		<div id="scroll-wrap" class="container">
			<header class="codrops-header">
				<div class="codrops-top clearfix" style="font-size: 15px;">

					<!-- 검색 -->
					<a class="searchBox"> 
					<select name="query" id="query" style="width: 60px; height: 25px; margin-right: 5px;">
							<option value="all" selected="selected">전체</option>
							<option value="bookname">제목</option>
							<option value="authorname">저자</option>
					</select> 
					<input style="border-radius: 10px;" class="searchInput" type="text" name="data" id="data" 
					placeholder="   Search Data" size="40"> 
					<a href="javascript:searchData()" id="search"><span>search</span></a>
					</a>
					<!-- 검색 카테고리 -->
					<% if(id!=null && id.equals("admin")){ %>
					<span class="right"> 
					<a class="codrops-icon codrops-icon-drop" href="/web/billy/shop/startbootstrap-shop-homepage-gh-pages/adminMain.jsp" id="Admin"><span>AdminPage</span></a>
					<a class="codrops-icon codrops-icon-drop" href="logoutProcess.jsp" id="login"><span><%=id%>님LogOut</span></a>
					</span>
					<% }else if(id!=null && !id.equals("admin")){ %>
					<span class="right"> 
					<a class="codrops-icon codrops-icon-drop" href="/web/billy/shop/startbootstrap-shop-homepage-gh-pages/mypage.jsp" id="user"><span>MyPage</span></a>
					<a class="codrops-icon codrops-icon-drop" href="logoutProcess.jsp" id="LogOut"><span><%=id%>님
								LogOut</span></a>
					</span>
					<% }else{ %>
					<span class="right"> 
					<a class="codrops-icon codrops-icon-drop" href="signin.jsp" id="login"><span>SignIn</span></a>
					<a class="codrops-icon codrops-icon-drop" href="signup.jsp" id="join"><span>SignUp</span></a>
					</span>
					<%} %>
					<!--  <span class="right">
               <a class="codrops-icon codrops-icon-drop" href="#" id="join"><span>Join</span><span hidden="">MyPage</span></a></span> -->
				</div>

				<h1>Billy's Book</h1>
			</header>

			<!-- 카테고리 -->
			<!-- <div align="center" style="margin: 40px auto 20px; " >
               <div class="category">
                  <strong id="sc">&emsp;코믹(CO)&emsp;</strong>
               </div>
               <div class="category">
                  <strong>&emsp;추리()&emsp;</strong>
               </div>
               <div class="category">
                  <strong>&emsp;COMIC&emsp;</strong>
               </div>
               <div class="category">
                  <strong>&emsp;HEALING&emsp;</strong>
               </div>
               <div class="category">
                  <strong>&emsp;TREND&emsp;</strong>
               </div>
            </div> -->

			<div class="main">

				<div
					style="max-width: 100%; margin-top: 50px; margin-left: 20%; margin-right: 20%">
					<ul class="bxslider">
						<li>
							<div style="position: absolute;">
								<h1></h1>
							</div> <img src="/web/img/baner1.JPG" />
						</li>
						<li>
							<div style="position: absolute;">
								<h1></h1>
							</div> <img src="/web/img/baner2.JPG" />
						</li>
						<li>
							<div style="position: absolute;">
								<h1></h1>
							</div> <img src="/web/img/baner3.JPG" />
						</li>
						<li>
							<div style="position: absolute;">
								<h1></h1>
							</div> <img src="/web/img/baner4.JPG" />
						</li>
					</ul>
				</div>
				<!-- bxslider -->

				<div id="bookshelf" class="bookshelf">

					<%int i=1; 
				   for(InsertBookBean b:list){ %>					
					<figure>
						<div class="book" data-book="book-<%=i%>"
							style="background:url('/web/img/<%=b.getBookcode().trim()%>.jpg' "></div>
						<div class="buttons">
							<a href="read.jsp?code=<%=b.getBookcode()%>&id=<%=id%>">Look
								inside</a>
							<!-- <a href="#">Details</a> -->
						</div>
						<figcaption>
							<h2><%=b.getBookname() %><span><%=b.getAuthorname()%></span>
							</h2>
						</figcaption>
						<div class="details">
							<ul>
								<li>출간일 : <%=b.getPublicationdate() %></li>
								<li>등록일 : <%=b.getRegistrationdate() %></li>
								<li>장르 : <%=b.getCategoryname() %></li>
								<li>출판사 : <%=b.getPublishername() %></li>
							</ul>
						</div>
					</figure>
					<%
					i++;
					} 
					%>

				</div>
			</div>
			<!-- /main -->
			<div class="related"></div>
		</div>
		<!-- /container -->
	</form>
	<script src="js/bookblock.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/bookshelf.js"></script>
</body>
</html>