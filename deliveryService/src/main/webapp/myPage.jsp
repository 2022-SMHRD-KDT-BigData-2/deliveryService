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
<body class="is-preload" id="nanno">
<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		out.print(vo);
	%>
	<script>
   document.getElementById('nanno').style.font = '20px 넥슨Lv1고딕 OTF Light';
   </script>

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
							<li><a href="deliveryBoard.jsp" class="button fit">심부름 게시판</a></li>
							<li><a href="Exchange.jsp" class="button fit">물물교환 게시판</a></li>
							<li><a href="CallCenter.jsp" class="button fit">고객센터</a></li>
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
                           <!-- 회원정보 -->
                              <h2 id="content"><%=vo.getId() %>님의 회원정보</h2>   
                              <table>
                                 <tr>
                                    <td>성별</td>
                                    <%if(vo.getGender().equals("M")){%>
                                       <td>남자</td>
                                    <%}else{ %>
                                       <td>여자</td>
                                    <%} %>
                                 </tr>
                                                                  
                                 <tr>
                                 <td>학과</td>
                                 <%if(vo.getMajor()==10){%>
                                       <td>간호대</td>
                                 <%}else if(vo.getMajor()==20){ %>   
                                       <td>경영대</td>
                                 <%}else if(vo.getMajor()==30){ %>   
                                       <td>공과대</td>
                                 <%}else if(vo.getMajor()==40){ %>   
                                       <td>농업생명과학대</td>
                                 <%}else if(vo.getMajor()==50){ %>   
                                       <td>법과대</td>
                                 <%}else if(vo.getMajor()==60){ %>   
                                       <td>사범대</td>
                                 <%}else if(vo.getMajor()==70){ %>   
                                       <td>사회과학</td>
                                 <%}else if(vo.getMajor()==80){ %>   
                                       <td>생활과학</td>
                                 <%}else if(vo.getMajor()==90){ %>   
                                       <td>수의과대</td>
                                 <%}else if(vo.getMajor()==100){ %>   
                                       <td>약학대</td>
                                 <%}else if(vo.getMajor()==110){ %>   
                                       <td>예술대</td>
                                 <%}else if(vo.getMajor()==120){ %>   
                                       <td>의과대</td>
                                 <%}else if(vo.getMajor()==130){ %>   
                                       <td>인문대</td>
                                 <%}else if(vo.getMajor()==140){ %>   
                                       <td>자연과학대</td>
                                 <%}else{ %>
                                       <td>AI융합대</td>
                                 <%} %>
                                 </tr>
                                 <tr>
                                 <td>이메일</td>
                                 <td><%=vo.getEmail() %></td>
                                 </tr>
                                 <tr>
                                 <td>헬퍼인증여부</td>
                                 <td><%=vo.getHelper_check() %></td>
                                 </tr>
                              </table>
                              
                     <!-- 이용 내역 -->
                     		  <h2 id="content"><%=vo.getId() %>님의 이용 내역</h2>   
                              <table>
                                 <tr>
                                    <td>이용 내역</td>
                                    
                                 </tr>
                              </table>


                     <!-- 평가 -->         
                              <h2 id="content"><%=vo.getId() %>님에 대한 평가</h2>   
                              <table>
                                 <tr>
                                    <td>기본 점수</td>
                                    
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