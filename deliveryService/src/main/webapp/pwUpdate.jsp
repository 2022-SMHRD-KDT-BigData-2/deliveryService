<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/Loginn.css" />
<title> �ɺθ� : ��й�ȣ����</title>
</head>
<body id="nanno">
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
	%>
	<script>
   document.getElementById('nanno').style.font = '20px �ؽ�Lv1��� OTF Light';
   </script>
   <!-- Wrapper -->
   <div id="wrapper">
      <!-- Menu -->
      <nav id="Update">
         <ul class="actions vertical">
            <form action="updateService" method="post">
            <section class="login-input-section-wrap">
            <h1><%=vo.getId() %>�� ��й�ȣ����</h1>
            <br>
               <div class="login-input-wrap">
               <input  placeholder="������ ��й�ȣ�� �Է��ϼ���" name ="pw" type="password" ></input>
               </div>
               </section>

            
				<div class="login-button-wrap">
				<a href="updateService"><input type="submit" value="�����ϱ�" class="button fit" style="width: 500px; margin: 0 auto;"></a>
			</div>


            </form>


         </ul>
      </nav>
   </div>


</body>
</html>