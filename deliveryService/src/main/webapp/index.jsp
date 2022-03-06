<%@page import="java.util.List"%>
<%@page import="deliveryService.model.DeliveryBoardVO"%>
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
<title>심부릉:메인</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/deliverymain2.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload" id="nanno">
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
	%>
	<script>
   document.getElementById('nanno').style.font = '20px 넥슨Lv1고딕 OTF Light';
   </script>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<a href="index.jsp" class="logo"><strong>심부릉</strong></a>
			<nav>
				<a href="#menu" style="color: gray">Menu</a>
			</nav>
		</header>


		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<ul class="actions stacked">
					<% 
                  if(vo == null){
                  %>
					<li><a href="Join.jsp" class="button fit" style="color: gray">회원가입</a></li>
					<li><a href="Login.jsp" class="button fit" style="color: gray">로그인</a></li>
				</ul>
				<%} else { %>
				<%if(vo.getHelper_check().equals("N")){ %>
				<li><a href="Quiz.jsp" class="button fit">헬퍼 전환하기</a></li>
				<li><a href="goBoardMain" class="button fit">심부름 게시판</a></li>
				<li><a href="goeb" class="button fit">물물교환 게시판</a></li>
				<li><a href="myPage" class="button fit">마이페이지</a></li>
				<li><a href="CallCenter.jsp" class="button fit">고객센터</a></li>
				<li><a href="logoutService" class="button fit">로그아웃</a></li>
				<%}else{ %>

				<li><a href="goBoardMain" class="button fit">심부름 게시판</a></li>
				<li><a href="goeb" class="button fit">물물교환 게시판</a></li>
				<li><a href="myPage" class="button fit">마이페이지</a></li>
				<li><a href="CallCenter.jsp" class="button fit">고객센터</a></li>
				<li><a href="logoutService" class="button fit">로그아웃</a></li>
			</ul>
			<%} %>
			<%
				}
			%>
		</nav>

		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<ul class="actions stacked">
					<% 
						if(vo == null){
						%>
					<li><a href="Join.jsp" class="button fit">회원가입</a></li>
					<li><a href="Login.jsp" class="button fit">로그인</a></li>
				</ul>
				<%} else { %>
			</ul>
			<li><a href="goBoardMain" class="button fit">심부름 게시판</a></li>
			<li><a href="goeb" class="button fit">물물교환 게시판</a></li>
			<li><a href="myPage" class="button fit">마이페이지</a></li>
			<li><a href="CallCenter.jsp" class="button fit">고객센터</a></li>
			<li><a href="logoutService" class="button fit">로그아웃</a></li>
			</ul>

			<%} %>
		</nav>

		<!-- Banner -->


		<!-- Main -->
		<div id="main">

			<!-- One -->
			<section id="one" class="tiles">
				<article>
					<span class="image"> <img src="images/pic01.jpg" alt="" />
					</span>
					<header class="major">
						<h3>
							<a href="goBoardMain" class="link">심부름 게시판</a>
						</h3>
						<p>The page to request errands</p>
					</header>
				</article>
				<article>
					<span class="image"> <img src="images/pic02.jpg" alt="" />
					</span>
					<header class="major">
						<h3>
							<a href="goeb" class="link">물물교환 게시판</a>
						</h3>
						<p>Exchange page</p>
					</header>
				</article>
				<article>
					<span class="image"> <img src="images/pic03.jpg" alt="" />
					</span>
					<header class="major">
						<%if(vo!=null){ %>
						<h3>
							<a href="myPage" class="link"><%=vo.getId() %>님 환영합니다!</a>
						</h3>
						<p>마이페이지</p>
						<%}else{ %>
						<h3>
							<a href="myPage" class="link">마이페이지</a>
						</h3>
						<p>My Page</p>
						<%} %>
					</header>
				</article>
				<article>
					<span class="image"> <img src="images/pic04.jpg" alt="" />
					</span>
					<header class="major">
						<h3>
							<a href="CallCenter.jsp" class="link">고객센터</a>
						</h3>
						<p>Customer information center</p>
					</header>
				</article>
		</div>

		<!-- Footer -->
		<footer id="footer">
			<div class="centercenter">
				<div class="inner">
					<ul class="icons">
						<li><a href="https://www.jnu.ac.kr/jnumain.aspx"><img
								src="images/JanNamgray.png" class="img3"><span
								class="label"></span></a></li>
						<li><a
							href="https://www.jnu.ac.kr/WebApp/web/HOM/TOP/Schedule300.aspx?type=1"><img
								src="images/Dalgray.png" class="img"><span class="label"></span></a></li>
						<li><a href="https://sel.jnu.ac.kr/login.php"><img
								src="images/Eclassgray.png" class="img"><span
								class="label"></span></a></li>
						<li><a href="https://www.work.go.kr/jobyoung/main.do"><img
								src="images/warknetgray.png" class="img2"><span
								class="label"></span></a></li>
						<li><a href="https://www.kosaf.go.kr/ko/main.do"><img
								src="images/KoreaJanggray.png" class="img"><span
								class="label"></span></a></li>
					</ul>
					<ul class="copyright">
						<li style="color: gray;">&copy; 우리회식하조</li>
					</ul>
				</div>
			</div>
		</footer>

	</div>



	<!-- Scripts "C:/Users/SM015/Desktop/warknet.png"-->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>