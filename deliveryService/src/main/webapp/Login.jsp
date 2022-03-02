<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/Login.css" />
<title>Insert title here</title>
</head>
<body>
<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		out.print(vo);
		
		
	%>
		<header>
			<div class="sel-lang-wrap">
				<select class="lang-select" id="lange">
					<option>한국어</option>
					<option>English</option>
				</select>
			</div>
			<div class="logo-wrap">
				<img src="">
			</div>
		</header>
		<section class="login-input-section-wrap">
			<form action="loginService" method="post">
			
			<div class="login-input-wrap">	
				<input  placeholder="Username" name ="id" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">
				<input placeholder="Password" name= "pw" type="password"></input>
			</div>
		
			<div class="login-button-wrap">
				<a href="Main.jsp"><button id ="" type="button" value="" style="cursor: pointer;">Back</button></a>
				<button id ="" type="submit" style="cursor: pointer;">Sign in</button>
			</div>
			 </form>
		</section>
			<p class="forget-msg">Forgot your Username or Password? | Sign up</p>
		
</body>
</html>