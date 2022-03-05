<%@page import="java.util.List"%>
<%@page import="deliveryService.model.ExchangeVO"%>
<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>������ȯ �Խ��� - �ɺθ�</title>
		<meta charset="EUC-KR">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/deliverymain5.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload" id="nanno">
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
	%>
	<script>
   document.getElementById('nanno').style.font = '20px �ؽ�Lv1��� OTF Light';
   </script>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.jsp" class="logo"><strong>�ɺθ�</strong> <span></span></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
						<ul class="actions stacked">
							<li><a href="index.jsp" class="button fit">Home</a></li>
							<li><a href="deliveryBoard.jsp" class="button fit">�ɺθ� �Խ���</a></li>
							<li><a href="myPage.jsp" class="button fit">����������</a></li>
							<li><a href="CallCenter.jsp" class="button fit">������</a></li>
						
						<%if(vo == null){ %>
							<li><a href="#" class="button fit">ȸ������</a></li>
							<li><a href="Login.jsp" class="button fit">�α���</a></li>
							<%}else{ %>
							<li><a href="index.jsp" class="button fit">�α׾ƿ�</a></li>
						<%} %>
						</ul>
						</ul>
					</nav>


				<!-- Main -->
					<div id="main" class="alt">
					<!-- Banner -->
		<!-- Note: The "styleN" class below should match that of the header element. -->
		<section id="banner" class="style2">
			<div class="inner">
				<span class="image"> <img src="images/pic07.jpg" alt="" />
				</span>
				<header class="major">
					<h1>������ȯ �Խ���</h1>
				</header>
				<div class="content">
					<p>It's a barter board.</p>
				</div>
			</div>
		</section>

						<!-- One -->
							<section id="one">
								<div class="inner">
									
									<div class="centergogo">
									
									</div>
									<!-- Table -->
													<h3 class="colo">�Խ���</h3>
													<ul class="actions">
														<li><a href="ExchangePopup.html" id="show" class="button next">������ȯ �ϱ�!</a></li>
													</ul>
													<div class="table-wrapper">
														<table>
															<thead>
																<tr>
																	<th style="color: gray;">��ȣ</th>
																	<th style="color: gray;">����</th>
																	<th style="color: gray;">�ۼ���</th>
																	<th style="color: gray;">�ۼ���</th>
																</tr>
															</thead>
															<tbody>
																
																<tr>
																	<td>1</td>
																	<td><a href="#">dfafsfs</a></td>
																	<td><a href="#">����</a></td>
																	<td><a href="#">2022-03-04</a></td>
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
														<li><span class="button small">Prev</span></li>
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