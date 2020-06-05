<%@page import="model.InsertBookBean"%>
<%@page import="model.BookBean"%>
<%@page import="model.WishListBean"%>
<%@page import="dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	InsertBookBean bbean=new InsertBookBean();
	String bookname=request.getParameter("code");
	String id=request.getParameter("id");
	
	/* WishListBean bean=new WishListBean();
	bean.setBookcode(bookname);
	bean.setId(id);
	
	AppleDao.insertWishList(bean);
	
	response.sendRedirect("/web/billy/shop/startbootstrap-shop-homepage-gh-pages/myPageMain.jsp"); */
%>
<%=bookname %>
<%=id%>
</body>
</html>