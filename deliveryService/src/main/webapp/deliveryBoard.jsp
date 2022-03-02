<%@page import="java.util.List"%>
<%@page import="deliveryService.model.DeliveryBoardVO"%>
<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/deliverymain.css" />
<link rel="stylesheet" href="assets/css/categorylist.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>

<body class="is-preload">
	<%
	List<DeliveryBoardVO> list = (List<DeliveryBoardVO>) request.getAttribute("list");
	
	%>


	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<!-- Note: The "styleN" class below should match that of the banner element. -->
		<header id="header" class="alt style2">
			<a href="index.jsp" class="logo"><strong>�ɺθ�</strong> </a>
			<nav>
				<a href="#menu">Menu</a>
			</nav>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="goBoardMain">�ɺθ� �Խ���</a></li>
				<li><a href="Exchange.html">������ȯ �Խ���</a></li>
				<li><a href="myPage.jsp">����������</a></li>
				<li><a href="callCenter.html">������</a></li>
			</ul>
			<ul class="actions stacked">
				<li><a href="Join.jsp" class="button fit">ȸ������</a></li>
				<li><a href="Login.jsp" class="button fit">�α���</a></li>
			</ul>
		</nav>

		<!-- Banner -->
		<!-- Note: The "styleN" class below should match that of the header element. -->
		<section id="banner" class="style2">
			<div class="inner">
				<span class="image"> <img src="images/pic07.jpg" alt="" />
				</span>
				<header class="major">
					<h1>�ɺθ� �Խ���</h1>
				</header>
				<div class="content">
					<p>It's a page where you can request errands.</p>
				</div>
			</div>
		</section>

		<!-- Main -->
		<div id="main">

			<!-- One -->
			
			<section id="one">
				<div class="inner">
					<header class="major">
						<h2>�ɺθ� ī�װ�</h2>
					</header>
					<div class="list">
						<a href="all.jsp">��ü</a>&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="1.jsp">���</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="2.jsp">����</a>&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="3.jsp">���б�</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="4.jsp">���Ҵ���</a>&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="5.jsp">�뺴���ϱ�</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="6.jsp">����</a>&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="7.jsp">���� ����ֱ�</a>&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="8.jsp">��Ȱ�� ����</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="9.jsp">�ݷ���</a>&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="10.jsp">��Ÿ</a>
					</div>
				</div>
			</section>

			<!-- Three-->
			<section id="three">
				<div class="inner">
					<header class="major">
						<h2>�Խ���</h2>

					</header>
					<div class="table-wrapper">
						<table>
							<thead>
								<tr>
									<th>��ȣ</th>
									<th>����</th>
									<th>�ۼ���</th>
									<th>�ۼ���</th>
								</tr>
							</thead>
							<tbody>
								<%for(DeliveryBoardVO vo: list){ %>
								<tr>
									<td><%= vo.getNum() %></td>
									<td><a href="goViewBoard?num=<%=vo.getNum() %>"><%=vo.getTitle() %></a></td>
									<td><%= vo.getBid() %></td>
									<td><%= vo.getDay() %></td>
								</tr>
								<%} %>
							</tbody>

						</table>

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

					<ul class="actions">
						<li><a href="request.jsp" id="show" class="button next">�ɺθ�
								��û�ϱ�!</a></li>
						<!--  <input type="button" value="�˾�â ȣ��" onclick="showPopup();">
									<script>
										function showPopup() {
											window.open("08_2_popup.html", "a", "width=400, height=300, left=100, top=50");
										}
									</script>-->
					</ul>

				</div>
			</section>
			
		</div>

		<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<ul class="icons">
					<li><a href="#" class="icon brands alt fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands alt fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands alt fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands alt fa-github"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands alt fa-linkedin-in"><span
							class="label">LinkedIn</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled</li>
					<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
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