<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/Loginn.css" />
<title> 심부릉 : 비밀번호변경</title>
</head>
<body id="nanno">
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
	%>
	<script>
   document.getElementById('nanno').style.font = '20px 넥슨Lv1고딕 OTF Light';
   </script>
   <!-- Wrapper -->
   <div id="wrapper">
      <!-- Menu -->
      <nav id="Update">
         <ul class="actions vertical">
            <form action="updateService" method="post">
            <section class="login-input-section-wrap">
            <h1><%=vo.getId() %>님 비밀번호변경</h1>
            <br>
               <div class="login-input-wrap">
               <input  placeholder="변경할 비밀번호를 입력하세요" name ="pw" type="password" ></input>
               </div>
               </section>

            
				<div class="login-button-wrap">
				<a href="updateService"><input type="submit" value="변경하기" class="button fit" style="width: 500px; margin: 0 auto;"></a>
			</div>


            </form>


         </ul>
      </nav>
   </div>


</body>
</html>