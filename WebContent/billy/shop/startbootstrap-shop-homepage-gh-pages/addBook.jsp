<%@page import="model.CategoryBean"%>
<%@page import="model.PublisherBean"%>
<%@page import="model.AuthorBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {

		$("input#add").click(
				function() {

					if ($("input#bookcode").val() == 0
							|| $("input#bookname").val() == 0
							|| $("input#authorcode").val() == 0
							|| $("input#publishercode").val() == 0
							|| $("input#publicationdate").val() == 0
							|| $("input#categorycode").val() == 0
							|| $("input#contents").val() == 0
							|| $("input#link").val() == 0) {

						alert("누락된 값이 있습니다");
						//bookcode bookname authorcode  publishercode 
						//publicationdate categorycode contents link

					} else {
						//alert 반복 문제 생길 시 여기 삭제 

						alert("책이 추가되었습니다.");
						$("#addBookFrm").submit();

					}

				});
		$("table#authorList").hide();

		$("small#authorBtn").click(function() {
			if ($("small#authorBtn").text() == "작가목록 확인하기") {
				$("table#authorList").show();
				$("small#authorBtn").text("접기");
			} else if ($("small#authorBtn").text() == "접기") {
				$("table#authorList").hide();
				$("small#authorBtn").text("작가목록 확인하기");
			}

		});
		$("table#publList").hide();

		$("small#publBtn").click(function() {
			if ($("small#publBtn").text() == "출판사목록 확인하기") {
				$("table#publList").show();
				$("small#publBtn").text("접기");
			} else if ($("small#publBtn").text() == "접기") {
				$("table#publList").hide();
				$("small#publBtn").text("출판사목록 확인하기");
			}

		});
		$("table#cateList").hide();

		$("small#cateBtn").click(function() {
			if ($("small#cateBtn").text() == "장르코드 확인하기") {
				$("table#cateList").show();
				$("small#cateBtn").text("접기");
			} else if ($("small#cateBtn").text() == "접기") {
				$("table#cateList").hide();
				$("small#cateBtn").text("장르코드 확인하기");
			}

		});
		$("button").css({
			"margin" : "5px",
			"padding" : "5px"
		});
	}); // jQ load
</script>
<body>

	<h3
		style="margin: 1em; background-color: #9e9e9e; border-radius: 10px; padding: 0.2em; font: bold; align-content: center;">
		<strong>Add Book</strong>
	</h3>
	<form id="addBookFrm" class="w3-container w3-card-4 w3-light-grey"
		action="addTotal.jsp?job=book" method="post">
		<h2>NEW BOOK</h2>


		<h6>
			<b>You should add publisher and author first when they are new. </b>
		</h6>
		<p>
			<label>BOOKCODE</label> <input class="w3-input w3-border-0"
				type="text" id="bookcode" name="bookcode">
		</p>
		<p>
			<label>BOOKNAME</label> <input class="w3-input w3-border-0"
				type="text" id="bookname" name="bookname">
		</p>
		<p>
			<label>AUTHORCODE</label> <input class="w3-input w3-border-0"
				type="text" id="authorcode" name="authorcode"> <small
				id="authorBtn"
				style="background-color: grey; padding: 1px; color: white">작가목록
				확인하기</small>

		</p>
		<table id="authorList">
			<tr>
				<th>AUTHORCODE</th>
				<th>AUTHORNAME</th>

			</tr>
			<%
				List<AuthorBean> bean = null;
				bean = AppleDao.selectAuthorListAdmin();
				for (AuthorBean b : bean) {
			%>
			<tr>
				<td><%=b.getAuthorcode()%></td>
				<td><%=b.getAuthorname()%></td>
			</tr>
			<%
				}
			%>
		</table>




		<p>
			<label>PUBLISHERCODE</label> <input class="w3-input w3-border-0"
				type="text" id="publishercode" name="publishercode"> <small
				id="publBtn"
				style="background-color: grey; padding: 1px; color: white">출판사목록
				확인하기</small>

		</p>
		<table id="publList">
			<tr>
				<th>PUBLISHERCODE</th>
				<th>PUBLISHERNAME</th>
			</tr>
			<%
				List<PublisherBean> bean1 = null;
				bean1 = AppleDao.selectPublListAdmin();
				for (PublisherBean b : bean1) {
			%>
			<tr>
				<td><%=b.getPublishercode()%></td>
				<td><%=b.getPublishername()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<p>
			<label>CATEGORYCODE</label> <input class="w3-input w3-border-0"
				type="text" id="categorycode" name="categorycode"><small
				id="cateBtn"
				style="background-color: grey; padding: 1px; color: white">장르코드
				확인하기</small>
		</p>
		<table id="cateList">
			<tr>
				<th>CATEGORYCODE</th>
				<th>CATEGORYNAME</th>
			</tr>
			<%
				List<CategoryBean> bean2 = null;
				bean2 = AppleDao.selectCateListAdmin();
				for (CategoryBean b : bean2) {
			%>
			<tr>
				<td><%=b.getCategorycode()%></td>
				<td><%=b.getCategoryname()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<p>
			<label>CONTENTS</label> <input class="w3-input w3-border-0"
				type="text" id="contents" name="contents">
		</p>
		<p>
			<label>LINK</label> <input class="w3-input w3-border-0" type="text"
				id="link" name="link"><br> <small>구매링크가 없는 경우
				'없음' 으로 입력해주세요.</small>
		</p>
		<input id="add" value="ADD" type="button"></input> <br> <br>
		<br> <br>
	</form>
	<br>
	<br>
</body>
</html>
