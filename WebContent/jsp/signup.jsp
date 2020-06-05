<%@page import="dao.AppleDao"%>
<%@page import="model.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Sign-Up</title>

<!-- Bootstrap Core CSS -->
<link href="/web/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<!-- <link href="css/login.css" rel="stylesheet"> -->
<link href="/web/css/clean-blog.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
   href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link
   href='http://fonts.googleapis.com/css?faweb=Lora:400,700,400italic,700italic'
   rel='stylesheet' type='text/css'>
<link
   href='http://fonts.googleapis.com/css?faweb=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
   rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script src="/web/js/sign.js" charset="UTF-8"></script>
<body style="background-image: url(#)">

   <div class="container" style="margin-top: 120px">
      <div class="row">
         <div class="main">
            <h1 align="center">Billy</h1>
            <h3>
               SIGN UP
            </h3>

            <form role="form" method="post" name="form" action="insertmember.jsp">
               <div class="form-group">
                  <input type="text" placeholder="아이디" class="form-control"
                     id="identifier" name="identifier"/>

               </div>
               <div class="form-group">
                  <input type="text" placeholder="이름" class="form-control"
         
                     id="name" name="name"/>
               </div>
               <div class="form-group">
                  <input type="text" placeholder="닉네임" class="form-control"
                     id="nname" name="nname"/>

               </div>
               <div class="form-group">
                  <input type="password" placeholder="비밀번호" class="form-control"
                     id="password1" name="password1"/>

               </div>
               <div class="form-group">
                  <!--<a class="pull-right" href="#">Esqueci a senha</a>-->
                  <input type="password" placeholder="비밀번호 확인" class="form-control"
                     id="password2" name="password2"/>
               </div>
               <div class="form-group">
                  <!--<a class="pull-right" href="#">Esqueci a senha</a>-->
                  <input type="hidden" placeholder="passCheck" class="form-control"
                     id="password" name="password"/>
               </div>
               <div class="form-group">
                  <!--<a class="pull-right" href="#">Esqueci a senha</a>-->
                  <input type="text" placeholder="생년월일" class="form-control"
                     id="snumber" name="snumber"/>
               </div>
               <div class="form-group">
                  <!--<a class="pull-right" href="#">Esqueci a senha</a>-->
                  <input type="text" placeholder="전화번호" class="form-control"
                     id="tel" name="tel"/>
               </div>
               <div class="form-group">
                  <!--<a class="pull-right" href="#">Esqueci a senha</a>-->
                  <input type="text" placeholder="이메일" class="form-control"
                     id="email" name="email"/>
               </div>
               <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12">
                     <a href="#" class="btn btn-sm btn-info btn-block" id="signup">SIGN UP</a>
                  </div>
               </div>
               <h6 style="font-weight: 400;font-size: 0.85714rem; color: gray " align="center">
                  회원가입을 클릭함으로써 <u><br><a
                     href="#">사용약관</a></u> 및 <u><a
                     href="#">개인정보취급방침</a></u> 에 동의합니다.
               </h6>
         </form>
         </div>
      </div>
   </div>
</body>

</html>