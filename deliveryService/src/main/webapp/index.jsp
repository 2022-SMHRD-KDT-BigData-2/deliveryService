<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�ɺθ�:����</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/deliverymain.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		out.print(vo);
	%>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<a href="index.jsp" class="logo"><strong>�ɺθ�</strong></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
							<ul class="actions stacked">
						<% 
						if(vo == null){
						%>
							<li><a href="index.jsp" class="button fit">Home</a></li>
							<li><a href="Join.jsp" class="button fit">ȸ������</a></li>
							<li><a href="login.jsp" class="button fit">�α���</a></li>
						</ul>
						<%} else { %>
						</ul>
							<li><a href="deliveryBoard.html" class="button fit">�ɺθ� �Խ���</a></li>
							<li><a href="Exchange.html" class="button fit">������ȯ �Խ���</a></li>
							<li><a href="myPage.html" class="button fit">����������</a></li>
							<li><a href="callCenter.html" class="button fit">������</a></li>
							<li><a href="login.html" class="button fit">�α׾ƿ�</a></li>
						</ul>
						
						<%} %>
					</nav>

				<!-- Banner -->
				
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
								<h1>����� �����</h1>
							</header>
							<div class="content">
								<p>Chonnam National University Students, Welcome!</p>
								<ul class="actions">
								<%if(vo == null) {%>
									<li><a href="Login.jsp" class="button next scrolly">�α���</a></li>
									<li><a href="Join.jsp" class="button next scrolly">ȸ������</a></li>
								<%} else { %>
								<li><a href="#one" class="button next scrolly">�ѹ� ������</a></li>
								<%} %>
								</ul>
							</div>
						</div>
					</section>
				<% if(vo != null) { %>
				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one" class="tiles">
								<article>
									<span class="image">
										<img src="images/pic01.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="deliveryBoard.html" class="link">�ɺθ� �Խ���</a></h3>
										<p>The page to request errands</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic02.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="Exchange.html" class="link">������ȯ �Խ���</a></h3>
										<p>Exchange page</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic03.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="myPage.html" class="link">����������</a></h3>
										<p>My Page</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic04.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="callCenter.html" class="link">������</a></h3>
										<p>Customer information center</p>
									</header>
								</article>
							
					</div>
				<%} %>
				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon brands alt fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

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