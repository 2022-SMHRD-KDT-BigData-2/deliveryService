<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>심부릉 : 마이페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/deliverymain3.css" />
	<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body>
<body class="is-preload">
<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		out.print(vo);
	%>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.jsp" class="logo"><strong>심부릉</strong> </a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
						<ul class="actions stacked">
						<%if(vo == null){ %>
							<li><a href="Join.jsp" class="button fit">회원가입</a></li>
							<li><a href="Login.jsp" class="button fit">로그인</a></li>
						<%}else{ %>
							<li><a href="index.jsp" class="button fit">Home</a></li>
							<li><a href="deliveryBoard.html" class="button fit">심부름 게시판</a></li>
							<li><a href="Exchange.jsp" class="button fit">물물교환 게시판</a></li>
							<li><a href="callCenter.jsp" class="button fit">고객센터</a></li>
							<li><a href="logoutService" class="button fit">로그아웃</a></li>
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
										<h1>마이페이지</h1>
									</header>

									<!-- Content -->
										<h2 id="content">회원정보</h2>
										<p>
											
										</p>
										<div class="row">
											<div class="col-6 col-12-small">
												<h3>Sem turpis amet semper</h3>
												<p>Nunc lacinia ante nunc ac lobortis. Interdum ad
												ipiscing gravida odio porttitor sem non mi integer non faucibus 
												ornare mi ut ante amet placerat aliquet. Volutpat commodo eu sed 
												ante lacinia. Sapien a lorem in integer ornare praesent commodo ad
												ipiscing arcu in massa commodo lorem accumsan at odio massa ac ac.
												 Semper adipiscing varius montes viverra nibh in adipiscing blandi
												 t tempus accumsan.</p>
											</div>
											<div class="col-6 col-12-small">
												<h3>Magna odio tempus commodo</h3>
												<p>In arcu accumsan arcu adipiscing accumsan orci ac. Felis id enim aliquet. Accumsan ac integer lobortis commodo ornare aliquet accumsan erat tempus amet porttitor. Ante commodo blandit adipiscing integer semper orci eget. Faucibus commodo adipiscing mi eu nullam accumsan morbi arcu ornare odio mi adipiscing nascetur lacus ac interdum morbi accumsan vis mi accumsan ac praesent.</p>
											</div>
											<!-- Break -->
											<div class="col-4 col-12-medium">
												<h3>Interdum sapien gravida</h3>
												<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
											</div>
											<div class="col-4 col-12-medium">
												<h3>Faucibus consequat lorem</h3>
												<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
											</div>
											<div class="col-4 col-12-medium">
												<h3>Accumsan montes viverra</h3>
												<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
											</div>
										</div>

									<hr class="major" />
<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										
									</header>

									<!-- Content -->
										<h2 id="content">나의 평가</h2>
										<p>
											
										</p>
										<div class="row">
											<div class="col-6 col-12-small">
												<h3>Sem turpis amet semper</h3>
												<p>Nunc lacinia ante nunc ac lobortis. Interdum ad
												ipiscing gravida odio porttitor sem non mi integer non faucibus 
												ornare mi ut ante amet placerat aliquet. Volutpat commodo eu sed 
												ante lacinia. Sapien a lorem in integer ornare praesent commodo ad
												ipiscing arcu in massa commodo lorem accumsan at odio massa ac ac.
												 Semper adipiscing varius montes viverra nibh in adipiscing blandi
												 t tempus accumsan.</p>
											</div>
											<div class="col-6 col-12-small">
												<h3>Magna odio tempus commodo</h3>
												<p>In arcu accumsan arcu adipiscing accumsan orci ac. Felis id enim aliquet. Accumsan ac integer lobortis commodo ornare aliquet accumsan erat tempus amet porttitor. Ante commodo blandit adipiscing integer semper orci eget. Faucibus commodo adipiscing mi eu nullam accumsan morbi arcu ornare odio mi adipiscing nascetur lacus ac interdum morbi accumsan vis mi accumsan ac praesent.</p>
											</div>
											<!-- Break -->
											<div class="col-4 col-12-medium">
												<h3>Interdum sapien gravida</h3>
												<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
											</div>
											<div class="col-4 col-12-medium">
												<h3>Faucibus consequat lorem</h3>
												<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
											</div>
											<div class="col-4 col-12-medium">
												<h3>Accumsan montes viverra</h3>
												<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
											</div>
										</div>

									<hr class="major" />

									
									<!-- Elements -->
										<h2 id="elements">나의 평가</h2>

												<!-- Text stuff -->
													<h3>Text</h3>
													<p>This is <b>bold</b> and this is <strong>strong</strong>. This is <i>italic</i> and this is <em>emphasized</em>.
													This is <sup>superscript</sup> text and this is <sub>subscript</sub> text.
													This is <u>underlined</u> and this is code: <code>for (;;) { ... }</code>.
													Finally, this is a <a href="#">link</a>.</p>
													<hr />
													<h2>Heading Level 2</h2>
													<h3>Heading Level 3</h3>
													<h4>Heading Level 4</h4>
													<hr />
													<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
									
												<!-- Lists -->
													<h3>Lists</h3>
													<div class="row">
														<div class="col-6 col-12-small">

															<h4>Unordered</h4>
															<ul>
																<li>Dolor etiam magna etiam.</li>
																<li>Sagittis lorem eleifend.</li>
																<li>Felis dolore viverra.</li>
															</ul>

															<h4>Alternate</h4>
															<ul class="alt">
																<li>Dolor etiam magna etiam.</li>
																<li>Sagittis lorem eleifend.</li>
																<li>Felis feugiat viverra.</li>
															</ul>

														</div>
														<div class="col-6 col-12-small">

															<h4>Ordered</h4>
															<ol>
																<li>Dolor etiam magna etiam.</li>
																<li>Etiam vel lorem sed viverra.</li>
																<li>Felis dolore viverra.</li>
																<li>Dolor etiam magna etiam.</li>
																<li>Etiam vel lorem sed viverra.</li>
																<li>Felis dolore viverra.</li>
															</ol>

															<h4>Icons</h4>
															<ul class="icons">
																<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
																<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
																<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
																<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
																<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
																<li><a href="#" class="icon brands fa-tumblr"><span class="label">Tumblr</span></a></li>
															</ul>
															<ul class="icons">
																<li><a href="#" class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
																<li><a href="#" class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
																<li><a href="#" class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
															</ul>

														</div>
													</div>
													<h4>Definition</h4>
													<dl>
														<dt>Item1</dt>
														<dd>
															<p>Lorem ipsum dolor vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent. Lorem ipsum dolor.</p>
														</dd>
														<dt>Item2</dt>
														<dd>
															<p>Lorem ipsum dolor vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent. Lorem ipsum dolor.</p>
														</dd>
														<dt>Item3</dt>
														<dd>
															<p>Lorem ipsum dolor vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent. Lorem ipsum dolor.</p>
														</dd>
													</dl>

													<h4>Actions</h4>
													<ul class="actions">
														<li><a href="#" class="button primary">Default</a></li>
														<li><a href="#" class="button">Default</a></li>
													</ul>
													<ul class="actions small">
														<li><a href="#" class="button primary small">Small</a></li>
														<li><a href="#" class="button small">Small</a></li>
													</ul>
													<div class="row">
														<div class="col-6 col-12-small">
															<ul class="actions stacked">
																<li><a href="#" class="button primary">Default</a></li>
																<li><a href="#" class="button">Default</a></li>
															</ul>
														</div>
														<div class="col-6 col-12-small">
															<ul class="actions stacked">
																<li><a href="#" class="button primary small">Small</a></li>
																<li><a href="#" class="button small">Small</a></li>
															</ul>
														</div>
														<div class="col-6 col-12-small">
															<ul class="actions stacked">
																<li><a href="#" class="button primary fit">Default</a></li>
																<li><a href="#" class="button fit">Default</a></li>
															</ul>
														</div>
														<div class="col-6 col-12-small">
															<ul class="actions stacked">
																<li><a href="#" class="button primary small fit">Small</a></li>
																<li><a href="#" class="button small fit">Small</a></li>
															</ul>
														</div>
													</div>

													<h4>Pagination</h4>
													<ul class="pagination">
														<li><span class="button small disabled">Prev</span></li>
														<li><a href="#" class="page active">1</a></li>
														<li><a href="#" class="page">2</a></li>
														<li><a href="#" class="page">3</a></li>
														<li><span>&hellip;</span></li>
														<li><a href="#" class="page">8</a></li>
														<li><a href="#" class="page">9</a></li>
														<li><a href="#" class="page">10</a></li>
														<li><a href="#" class="button small">Next</a></li>
													</ul>				

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