<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="deliveryService.model.MemberDAO" %>
<%@ page import="deliveryService.model.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>ȸ��Ż�� �Ϸ�</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/layout.css">
</head>
<body>
<div class="page-main">
   <h1>ȸ��Ż�� �Ϸ�</h1>
   <div class="result-display">
      <div class="align-center">
         ȸ��Ż�� �Ϸ�<br>
         <button onclick="location.href='index.jsp';">Ȩ����</button>
      </div>
   </div>
</div>
</body>
</html>
