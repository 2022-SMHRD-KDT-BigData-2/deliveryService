<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/Loginn.css" />
<title>�ɺθ� : �α��� ������</title>
</head>
<body id="nanno">
<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
	
	%>
	<script>
   document.getElementById('nanno').style.font = '20px �ؽ�Lv1���� OTF Light';
   </script>
		<header>
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
				<button type="submit" style="cursor: pointer;">�α���</button>
				<a href="index.jsp"><button type="button" style="cursor: pointer;">���</button></a>
			</div>

			 </form>
		</section>
		
</body>
</html>