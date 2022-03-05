<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ - �ɺθ�</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/deliverymain4.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body>
<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
	%>
	<body class="is-preload" id="nanno">
	<script>
   document.getElementById('nanno').style.font = '20px �ؽ�Lv1��� OTF Light';
   </script>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.html" class="logo"><strong>�ɺθ�</strong></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
							<%if(vo.getHelper_check().equals("N")){ %>
				<li><a href="Quiz.jsp" class="button fit">���� ��ȯ�ϱ�</a></li>
				<li><a href="goBoardMain" class="button fit">�ɺθ� �Խ���</a></li>
				<li><a href="Exchange.jsp" class="button fit">������ȯ �Խ���</a></li>
				<li><a href="myPage.jsp" class="button fit">����������</a></li>
				<li><a href="CallCenter.jsp" class="button fit">������</a></li>
				<li><a href="logoutService" class="button fit">�α׾ƿ�</a></li>
				<%}else{ %>
				<li><a href="goBoardMain" class="button fit">�ɺθ� �Խ���</a></li>
				<li><a href="Exchange.jsp" class="button fit">������ȯ �Խ���</a></li>
				<li><a href="myPage.jsp" class="button fit">����������</a></li>
				<li><a href="CallCenter.jsp" class="button fit">������</a></li>
				<li><a href="logoutService" class="button fit">�α׾ƿ�</a></li>
			</ul>
			<%} %>
					</nav>
					</div>

				<!-- Main -->
					<div id="main" class="alt">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<h1>������</h1>
									</header>

									<!-- Content -->
										<fieldset>
										<h2 id="content">��� �Ұ�</h2>

										
										<div class="row">
										
											<div class="col-6 col-12-small">
												<h3>������</h3>
												<span>�̸��� : grace4342@gmail.com</span><br>
												<span>��å : ���� </span><br>
												<span>�ϰ� ���� �� : �Ф�</span>
											</div>
											<div class="col-6 col-12-small">
												<h3>������</h3>
												<span>�̸��� : wlstn6830@gmail.com</span><br>
												<span>��å : ���� </span><br>
												<span>�ϰ� ���� �� : �� ������ּ���!</span>
											</div>
											
											<!-- Break -->
											<div class="col-4 col-12-medium">
												<h3>���¿�</h3>
												<span>�̸��� : taewon1554@gmail.com</span><br>
												<span>��å : ���� </span><br>
												<span>�ϰ� ���� �� : </span>
											</div>
											<div class="col-4 col-12-medium">
												<h3>��â��</h3>
												<span>�̸��� : hckio@naver.com</span><br>
												<span>��å : ���� </span><br>
												<span>�ϰ� ���� �� : </span>
											</div>
											<div class="col-4 col-12-medium">
												<h3>��μ�</h3>
												<span>�̸��� : alstj6009@gmail.com</span><br>
												<span>��å : ���� </span><br>
												<span>�ϰ� ���� �� : </span>
											</div>
										</div>
										</fieldset>
										</div>
										</section>
									<!-- Contact -->
					<section id="one">
								<div class="inner">
									

									<!-- Content -->
										<fieldset>
										<h2 id="content">���Ǳ�</h2>

								<form method="post" action="#">
									<div class="fields">
										<div class="field half">
											<label for="name">My ID</label>
											<input type="text" name="name" id="name" />
										</div>
										<div class="field half">
											<label for="email">Receive ID</label>
											<select>
												<option value="none">����� �����ϼ���.</option>
												<option value="grace4342@gmail.com">������</option>
												<option value="wlstn6830@gmail.com">������</option>
												<option value="taewon1554@gmail.com">���¿�</option>
												<option value="hckio@naver.com">��â��</option>
												<option value="alstj6009@gmail.com">��μ�</option>
											</select>
										</div>
										<div class="field">
											<label for="message">Message</label>
											<textarea name="message" id="message" rows="6"></textarea>
										</div>
									</div>
									<ul class="actions">
										<li><input type="submit" value="������" class="primary"></li>
										
									</ul>
								</form>

										
										</fieldset>
										</div>
										</section>
							<!-- Footer -->
					
			</div>

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