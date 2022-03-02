<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>물물교환 게시판 - 심부릉</title>
		<meta charset="EUC-KR">
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
					<header id="header">
						<a href="index.jsp" class="logo"><strong>심부릉</strong> <span></span></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
						<%if(vo == null){ %>
							<li><a href="index.jsp" class="button fit">Home</a></li>
							<%}else{ %>
							<li><a href="deliveryBoard.html" class="button fit">심부름 게시판</a></li>
							<li><a href="Exchange.jsp" class="button fit">물물교환 게시판</a></li>
							<li><a href="myPage.html" class="button fit">마이페이지</a></li>
							<li><a href="callCenter.html" class="button fit">고객센터</a></li>
							<%} %>
						</ul>
						<ul class="actions stacked">
						<%if(vo == null){ %>
							<li><a href="#" class="button fit">회원가입</a></li>
							<li><a href="Login.jsp" class="button fit">로그인</a></li>
							<%}else{ %>
							<li><a href="index.jsp" class="button fit">로그아웃</a></li>
						<%} %>
						</ul>
					</nav>


				<!-- Main -->
					<div id="main" class="alt">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<h1>물물교환 게시판</h1>
										<h2>This is where you trade goods</h2>
									</header>
									<span class="image main"><img src="images/R.jpg" alt="" /></span>
									<!-- Table -->
													<h3>게시판</h3>
													<ul class="actions">
														<li><a href="ExchangePopup.html" id="show" class="button next">물물교환 하기!</a></li>
													</ul>
													<div class="table-wrapper">
														<table>
															<thead>
																<tr>
																	<th>번호</th>
																	<th>제목</th>
																	<th>작성자</th>
																	<th>작성일</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>1</td>
																	<td><a href="#">Ante turpis integer aliquet porttitor.</a></td>
																	<td><a href="#">29.99</a></td>
																	<td><a href="#">2022-02-26</a></td>
																</tr>
																<tr>
																	<td>2</td>
																	<td><a href="#">Vis ac commodo adipiscing arcu aliquet.</a></td>
																	<td><a href="#">19.99</a></td>
																	<td><a href="#">2022-02-26</a></td>
																</tr>
																<tr>
																	<td>3</td>
																	<td><a href="#">Morbi faucibus arcu accumsan lorem.</a></td>
																	<td><a href="#">29.99</a></td>
																	<td><a href="#">2022-02-26</a></td>	
																</tr>
																<tr>
																	<td>4</td>
																	<td><a href="#">Vitae integer tempus condimentum.</a></td>
																	<td><a href="#">19.99</a></td>
																	<td><a href="#">2022-02-26</a></td>
																</tr>
																<tr>
																	<td>5</td>
																	<td><a href="">Ante turpis integer aliquet porttitor.</a></td>
																	<td><a href="#">29.99</a></td>
																	<td><a href="#">2022-02-26</a></td>
																</tr>
															</tbody>
															
														</table>
													</div>
													<ul class="pagination">
														<li><span class="button small disabled">Prev</span></li>
														<li><a href="#" class="page">1</a></li>
														<li><a href="#" class="page">2</a></li>
														<li><a href="#" class="page">3</a></li>
														<li><span>&hellip;</span></li>
														<li><a href="#" class="page">8</a></li>
														<li><a href="#" class="page">9</a></li>
														<li><a href="#" class="page">10</a></li>
														<li><a href="#" class="button small">Next</a></li>
													</ul>
									
								</div>
							</section>

					</div>

				

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