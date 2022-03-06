<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="deliveryService.model.MemberDAO" %>
<%@ page import="deliveryService.model.MemberVO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>회원탈퇴 폼</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/layout.css">
<script type="text/javascript">
   window.onload = function(){
      let form = document.getElementById('delete_form');
      form.onsubmit = function(){
         let id = document.getElementById('id');
         if(id.value.trim() == ''){
            alert('아이디를 입력해주세요.');
            id.focus();
            id.value = '';
            return false;
         }
         let passwd = document.getElementById('passwd');
         if(passwd.value.trim() == ''){
            alert('비밀번호 입력해주세요.');
            passwd.focus();
            passwd.value = '';
            return false;
         }
         let cpasswd = document.getElementById('cpasswd');
         if(cpasswd.value.trim() == ''){
            alert('비밀번호 확인 입력란을 입력해주세요.');
            cpasswd.focus();
            cpasswd.value = '';
            return false;
         }
         if(passwd.value != cpasswd.value){
            alert('입력하신 비밀번호와 비밀번호 확인란이 일치하지 않습니다.');
            cpasswd.focus();
            cpasswd.value = '';
            return false;   
         }
      };
   };

</script>
</head>
<body>
<div class="page-main">
   <h1>회원탈퇴</h1>
   <form action="deleteService" id="delete_form" method="post">
      <ul>
         <li>
            <label for="id">아이디</label>
            <input type="text" name="id" id="id" maxlength="12">
         </li>
         <li>
            <label for="passwd">비밀번호</label>
            <input type="password" name="passwd" id="passwd" maxlength="12">
         </li>
         <li>
            <label for="cpasswd">비밀번호 확인</label>
            <input type="password" name="cpasswd" id="cpasswd" maxlength="12">
         </li>
      </ul>
      <hr size="1" noshade="noshade">
      <div class="align-center">
         <input type="submit" value="회원탈퇴">
         <input type="button" value="홈" onclick="location.href='index.jsp';">
      </div>
   </form>
</div>
</body>
</html>
