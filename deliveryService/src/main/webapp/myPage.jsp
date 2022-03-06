<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ɺθ� : ����������</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/deliverymain3.css" />
	<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body>
<body class="is-preload" id="nanno">
<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		out.print(vo);
	%>
	<script>
   document.getElementById('nanno').style.font = '20px �ؽ�Lv1��� OTF Light';
   </script>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.jsp" class="logo"><strong>�ɺθ�</strong> </a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
						<ul class="actions stacked">
						<%if(vo == null){ %>
							<li><a href="Join.jsp" class="button fit">ȸ������</a></li>
							<li><a href="Login.jsp" class="button fit">�α���</a></li>
						<%}else{ %>
							<li><a href="index.jsp" class="button fit">Home</a></li>
							<li><a href="deliveryBoard.jsp" class="button fit">�ɺθ� �Խ���</a></li>
							<li><a href="Exchange.jsp" class="button fit">������ȯ �Խ���</a></li>
							<li><a href="CallCenter.jsp" class="button fit">������</a></li>
							<li><a href="logoutService" class="button fit">�α׾ƿ�</a></li>
						<%} %>
						</ul>			
						</ul>
					</nav>

				<!-- Main -->
               <div id="main" class="alt">

                  <!-- One -->
                     <section id="one">
                        <div class="inner">
                           <header class="major">
                              <h1>����������</h1>
                           </header>

                           <!-- Content -->
                           <!-- ȸ������ -->
                              <h2 id="content"><%=vo.getId() %>���� ȸ������</h2>   
                              <table>
                                 <tr>
                                    <td>����</td>
                                    <%if(vo.getGender().equals("M")){%>
                                       <td>����</td>
                                    <%}else{ %>
                                       <td>����</td>
                                    <%} %>
                                 </tr>
                                                                  
                                 <tr>
                                 <td>�а�</td>
                                 <%if(vo.getMajor()==10){%>
                                       <td>��ȣ��</td>
                                 <%}else if(vo.getMajor()==20){ %>   
                                       <td>�濵��</td>
                                 <%}else if(vo.getMajor()==30){ %>   
                                       <td>������</td>
                                 <%}else if(vo.getMajor()==40){ %>   
                                       <td>���������д�</td>
                                 <%}else if(vo.getMajor()==50){ %>   
                                       <td>������</td>
                                 <%}else if(vo.getMajor()==60){ %>   
                                       <td>�����</td>
                                 <%}else if(vo.getMajor()==70){ %>   
                                       <td>��ȸ����</td>
                                 <%}else if(vo.getMajor()==80){ %>   
                                       <td>��Ȱ����</td>
                                 <%}else if(vo.getMajor()==90){ %>   
                                       <td>���ǰ���</td>
                                 <%}else if(vo.getMajor()==100){ %>   
                                       <td>���д�</td>
                                 <%}else if(vo.getMajor()==110){ %>   
                                       <td>������</td>
                                 <%}else if(vo.getMajor()==120){ %>   
                                       <td>�ǰ���</td>
                                 <%}else if(vo.getMajor()==130){ %>   
                                       <td>�ι���</td>
                                 <%}else if(vo.getMajor()==140){ %>   
                                       <td>�ڿ����д�</td>
                                 <%}else{ %>
                                       <td>AI���մ�</td>
                                 <%} %>
                                 </tr>
                                 <tr>
                                 <td>�̸���</td>
                                 <td><%=vo.getEmail() %></td>
                                 </tr>
                                 <tr>
                                 <td>������������</td>
                                 <td><%=vo.getHelper_check() %></td>
                                 </tr>
                              </table>
                              
                     <!-- �̿� ���� -->
                     		  <h2 id="content"><%=vo.getId() %>���� �̿� ����</h2>   
                              <table>
                                 <tr>
                                    <td>�̿� ����</td>
                                    
                                 </tr>
                              </table>


                     <!-- �� -->         
                              <h2 id="content"><%=vo.getId() %>�Կ� ���� ��</h2>   
                              <table>
                                 <tr>
                                    <td>�⺻ ����</td>
                                    
                                 </tr>
                              </table>	

			

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>