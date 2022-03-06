<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="deliveryService.model.MemberDAO" %>
<%@ page import="deliveryService.model.MemberVO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>ȸ��Ż�� ��</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/layout.css">
<script type="text/javascript">
   window.onload = function(){
      let form = document.getElementById('delete_form');
      form.onsubmit = function(){
         let id = document.getElementById('id');
         if(id.value.trim() == ''){
            alert('���̵� �Է����ּ���.');
            id.focus();
            id.value = '';
            return false;
         }
         let passwd = document.getElementById('passwd');
         if(passwd.value.trim() == ''){
            alert('��й�ȣ �Է����ּ���.');
            passwd.focus();
            passwd.value = '';
            return false;
         }
         let cpasswd = document.getElementById('cpasswd');
         if(cpasswd.value.trim() == ''){
            alert('��й�ȣ Ȯ�� �Է¶��� �Է����ּ���.');
            cpasswd.focus();
            cpasswd.value = '';
            return false;
         }
         if(passwd.value != cpasswd.value){
            alert('�Է��Ͻ� ��й�ȣ�� ��й�ȣ Ȯ�ζ��� ��ġ���� �ʽ��ϴ�.');
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
   <h1>ȸ��Ż��</h1>
   <form action="deleteService" id="delete_form" method="post">
      <ul>
         <li>
            <label for="id">���̵�</label>
            <input type="text" name="id" id="id" maxlength="12">
         </li>
         <li>
            <label for="passwd">��й�ȣ</label>
            <input type="password" name="passwd" id="passwd" maxlength="12">
         </li>
         <li>
            <label for="cpasswd">��й�ȣ Ȯ��</label>
            <input type="password" name="cpasswd" id="cpasswd" maxlength="12">
         </li>
      </ul>
      <hr size="1" noshade="noshade">
      <div class="align-center">
         <input type="submit" value="ȸ��Ż��">
         <input type="button" value="Ȩ" onclick="location.href='index.jsp';">
      </div>
   </form>
</div>
</body>
</html>
