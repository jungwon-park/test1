<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="model.InsertBookBean"%>
<%@page import="java.util.List"%>
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
		<meta name="description" content="Book Preview with BookBlock" />
		<meta name="keywords" content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="/web/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="/web/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="/web/css/bookblock.css" />
		<link rel="stylesheet" type="text/css" href="/web/css/component.css" />
		<script src="js/modernizr.custom.js"></script>
		<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
		<script src="/web/js/sign.js" charset="UTF-8"></script>
		<script >
		$(function(){
			//total font 
		      $("*").css("font-family", "times new roman")
		      
		});	
		
		      function checkFunction(){
				if(confirm("구매 하시겠습니까?")==true){
					document.form.submit();
				}else{
					return;
				}
			 }
		</script>

<style>

</style> 

	</head>
	<body>	
		<div id="scroll-wrap" class="container">
		
			<header class="codrops-header">
				<div class="codrops-top clearfix" style="font-size: 15px;">
				
               	<!-- 검색 -->
               <a class="searchBox" > 
               		<!-- 검색카테고리 -->
                <select name="query" id="query" style="width: 60px; height: 25px; margin-right: 5px;">
                     <option value="empty" selected="selected">전체</option>
                     <option value="bookname">제목</option>
                     <option value="authorname">저자</option>
               </select> 
               <input style="border-radius: 10px;" class="searchInput" type="text" name="data" id="data" placeholder="   Search Data" size="40"> 
                  <a href="javascript:searchData()" id="search"><span >search</span></a>
                  </a>
               		<!-- 검색 카테고리 -->
               		 
                <span class="right">
                <a class="codrops-icon codrops-icon-drop" href="#" id="login"><span>LogIn</span><span hidden="">LogOut</span></a></span>
               <span class="right">
               <a class="codrops-icon codrops-icon-drop" href="#" id="join"><span>Join</span><span hidden="">MyPage</span></a></span>
            </div>
             
            <h1>Bily's Book</h1>
            </header>            
			<form name="frm" id="frm" method="POST">
			<div class="main">					
			
			<div id="bookshelf" class="bookshelf">
					<figure>
					    <div class="book" data-book="" style="background:url('/web/img/sub1.JPG')"></div>
						<div class="buttons"><a href="javascript:checkFunction()">구매하기</a></div>
						<figcaption><h2>1 MONTH</h2></figcaption>
					</figure>
					<figure>
					    <div class="book" data-book="" style="background:url('/web/img/sub2.JPG')"></div>
						<div class="buttons"><a href="javascript:checkFunction()">구매하기</a></div>
						<figcaption><h2>1 YEAR</h2></figcaption>
					</figure>
			</div>
			
			
			
			
			</div><!-- /main -->
			</form><!-- /<form name="frm" id="frm" method="POST"> -->
		</div><!-- /container -->
			<div class="related">
			<!--하단-->
			</div>
	</body>
</html>