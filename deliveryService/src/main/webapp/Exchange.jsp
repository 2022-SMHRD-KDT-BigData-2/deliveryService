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
		MemberVO mvo = (MemberVO)session.getAttribute("vo");
		List<ExchangeVO> list = (List<ExchangeVO>)request.getAttribute("list");
		
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
							<li><a href="goBoardMain" class="button fit">�ɺθ� �Խ���</a></li>
							<li><a href="myPage.jsp" class="button fit">����������</a></li>
							<li><a href="CallCenter.jsp" class="button fit">������</a></li>
						
						<%if(mvo == null){ %>
							<li><a href="Join.jsp" class="button fit">ȸ������</a></li>
							<li><a href="Login.jsp" class="button fit">�α���</a></li>
							<%}else{ %>
							<li><a href="logoutService" class="button fit">�α׾ƿ�</a></li>
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
																<%for(ExchangeVO vo : list){ %>
																<tr>
																	<td><%=vo.getNum() %></td>
																	<td><a href="goViewExchange?num=<%=vo.getNum() %>"><%=vo.getTitle() %></a></td>
																	<td><%= vo.getExid() %></td>
																	<td><%=vo.getDay() %></td>
																</tr>
																<%} %>
																
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