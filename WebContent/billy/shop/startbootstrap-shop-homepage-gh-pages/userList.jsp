<%@page import="dao.AppleDao"%>
<%@page import="model.MemberBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<script src="vendor/jquery/adminMain.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<%
	List<MemberBean> bean = null;
	bean = AppleDao.selectMemberListAdmin();
%>
<body>
	<h3
		style="margin: 1em; background-color: #9e9e9e; border-radius: 10px; padding: 0.2em; font: bold; align-content: center;">
		<strong> User List</strong>
	</h3>


	<div class="w3-container">

		<table class="w3-table w3-striped w3-border">


			<thead>
				<th>ID</th>
				<th>NAME / NICKNAME<br>TEL
				</th>
				<th>BIRTH</th>
				<th>EMAIL</th>
				<th>SUBSCRIBE</th>
			</thead>
			<tbody>
				<%
					for (MemberBean b : bean) {
				%>
				<tr>
					<td><%=b.getId()%></td>
					<td><%=b.getName()%> / <%=b.getNickname()%><br><%=b.getPhonenumber()%></td>
					<td><%=b.getBirth().substring(0, 10)%></td>
					<td><%=b.getEmail()%></td>
					<td><%=b.getSubscribecode()%></td>

				</tr>

				<%
					}
				%>
			</tbody>
		</table>
		<br>
		<br>
	</div>
	
</body>
</html>