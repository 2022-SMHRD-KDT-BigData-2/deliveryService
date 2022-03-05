<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>고객센터 - 심부릉</title>
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
   document.getElementById('nanno').style.font = '20px 넥슨Lv1고딕 OTF Light';
   </script>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.html" class="logo"><strong>심부릉</strong></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
							<%if(vo.getHelper_check().equals("N")){ %>
				<li><a href="Quiz.jsp" class="button fit">헬퍼 전환하기</a></li>
				<li><a href="goBoardMain" class="button fit">심부름 게시판</a></li>
				<li><a href="Exchange.jsp" class="button fit">물물교환 게시판</a></li>
				<li><a href="myPage.jsp" class="button fit">마이페이지</a></li>
				<li><a href="CallCenter.jsp" class="button fit">고객센터</a></li>
				<li><a href="logoutService" class="button fit">로그아웃</a></li>
				<%}else{ %>
				<li><a href="goBoardMain" class="button fit">심부름 게시판</a></li>
				<li><a href="Exchange.jsp" class="button fit">물물교환 게시판</a></li>
				<li><a href="myPage.jsp" class="button fit">마이페이지</a></li>
				<li><a href="CallCenter.jsp" class="button fit">고객센터</a></li>
				<li><a href="logoutService" class="button fit">로그아웃</a></li>
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
										<h1>고객센터</h1>
									</header>

									<!-- Content -->
										<fieldset>
										<h2 id="content">운영진 소개</h2>

										
										<div class="row">
										
											<div class="col-6 col-12-small">
												<h3>박형빈</h3>
												<span>이메일 : grace4342@gmail.com</span><br>
												<span>직책 : 팀장 </span><br>
												<span>하고 싶은 말 : ㅠㅠ</span>
											</div>
											<div class="col-6 col-12-small">
												<h3>신진수</h3>
												<span>이메일 : wlstn6830@gmail.com</span><br>
												<span>직책 : 팀원 </span><br>
												<span>하고 싶은 말 : 꼭 사용해주세요!</span>
											</div>
											
											<!-- Break -->
											<div class="col-4 col-12-medium">
												<h3>윤태원</h3>
												<span>이메일 : taewon1554@gmail.com</span><br>
												<span>직책 : 팀원 </span><br>
												<span>하고 싶은 말 : </span>
											</div>
											<div class="col-4 col-12-medium">
												<h3>이창현</h3>
												<span>이메일 : hckio@naver.com</span><br>
												<span>직책 : 팀원 </span><br>
												<span>하고 싶은 말 : </span>
											</div>
											<div class="col-4 col-12-medium">
												<h3>김민서</h3>
												<span>이메일 : alstj6009@gmail.com</span><br>
												<span>직책 : 팀원 </span><br>
												<span>하고 싶은 말 : </span>
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
										<h2 id="content">문의글</h2>

								<form method="post" action="#">
									<div class="fields">
										<div class="field half">
											<label for="name">My ID</label>
											<input type="text" name="name" id="name" />
										</div>
										<div class="field half">
											<label for="email">Receive ID</label>
											<select>
												<option value="none">운영진을 선택하세요.</option>
												<option value="grace4342@gmail.com">박형빈</option>
												<option value="wlstn6830@gmail.com">신진수</option>
												<option value="taewon1554@gmail.com">윤태원</option>
												<option value="hckio@naver.com">이창현</option>
												<option value="alstj6009@gmail.com">김민서</option>
											</select>
										</div>
										<div class="field">
											<label for="message">Message</label>
											<textarea name="message" id="message" rows="6"></textarea>
										</div>
									</div>
									<ul class="actions">
										<li><input type="submit" value="보내기" class="primary"></li>
										
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