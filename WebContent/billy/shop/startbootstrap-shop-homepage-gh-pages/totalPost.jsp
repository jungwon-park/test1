<%@page import="model.EvaluationBean"%>
<%@page import="dao.AppleDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<%
   List<EvaluationBean> bean = null;
   bean = AppleDao.selectEvalListAdmin();
%>
<body>
   <h3
      style="margin: 1em; background-color: #9e9e9e; border-radius: 10px; padding: 0.2em; font: bold; align-content: center;">
      <strong>Total Post</strong>
   </h3>

   <div class="w3-container">
      <ul class="w3-ul w3-card-4">
         <%
            for (EvaluationBean b : bean) {
               /* String score;
               score=b.getScore(); */
         %>
         <li class="w3-bar"><span
            onclick="this.parentElement.style.display='none'"
            class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span> <img
            src="/web/billy/shop/startbootstrap-shop-homepage-gh-pages/img/<%=b.getBookcode()%>.jpg"
            class="w3-bar-item w3-hide-small" style="width: 85px">

            <div class="w3-bar-item">
               <span class="w3-large"> <%=b.getId()%>
               </span>| <span class="w3-large"> <%=AppleDao.selectBookAdmin(b.getBookcode()).getBookname()%>
               </span>
               <%
               for (int i = 0; i < b.getScore(); i++) {
               %>
               <b style="color: orange; font-size: 1em">★</b>
               <%
                  }
               %><br> <br> <span><%=b.getEvaluation()%></span>



            </div></li>

         <%
            }
         %>


      </ul>
      <br>
      <br>
   </div>
</body>
</html>