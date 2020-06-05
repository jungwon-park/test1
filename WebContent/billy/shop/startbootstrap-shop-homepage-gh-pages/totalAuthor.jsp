<%@page import="dao.AppleDao"%>
<%@page import="model.AuthorBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!--jQ-->
<script src="vendor/jquery/adminMain.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<%
	List<AuthorBean> bean = null;
	bean = AppleDao.selectAuthorListAdmin();
%>
<body>
	<h3
		style="margin: 1em; background-color: #9e9e9e; border-radius: 10px; padding: 0.2em; font: bold; align-content: center;">
		<strong>Total Author</strong>
	</h3>


	<table class="w3-table w3-bordered">
		<tr>
			<th>AUTHORCODE</th>
			<th>AUTHORNAME</th>
			<th>MOD/DEL</th>
		</tr>
		<%
			
		for (AuthorBean b : bean) {
		%>
		<tr>
			<td><%=b.getAuthorcode()%></td>
			<td><%=b.getAuthorname()%></td>

			<td><input type="button" value="수정" name="btnCss"><input
				type="button" value="삭제" name="btnCss"></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>