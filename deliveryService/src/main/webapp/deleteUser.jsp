<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="deliveryService.model.MemberDAO" %>
<%@ page import="deliveryService.model.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>회원탈퇴 완료</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/layout.css">
</head>
<body>
<div class="page-main">
   <h1>회원탈퇴 완료</h1>
   <div class="result-display">
      <div class="align-center">
         회원탈퇴 완료<br>
         <button onclick="location.href='index.jsp';">홈으로</button>
      </div>
   </div>
</div>
</body>
</html>
