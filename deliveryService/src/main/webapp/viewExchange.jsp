<%@page import="deliveryService.model.ExchangeCommentVO"%>
<%@page import="java.util.List"%>
<%@page import="deliveryService.model.MemberVO"%>
<%@page import="deliveryService.model.ExchangeVO"%>
<%@page import="deliveryService.model.DeliveryBoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="assets/css/popup3.css" />
</head>
<body id="nanno">
	<%
		MemberVO uvo = (MemberVO)session.getAttribute("vo");
		ExchangeVO bvo = (ExchangeVO)request.getAttribute("bvo");
		List<ExchangeCommentVO> list = (List<ExchangeCommentVO>)request.getAttribute("list");
			
	%>			
	<script>
   document.getElementById('nanno').style.font = '20px �ؽ�Lv1��� OTF Light';
   </script>
			<div class="popup">
			<div class="title" align="center">
			<h4><%=uvo.getId() %>���� ������ȯ ��û ����</h4>
			</div>
			<div class="content">
				<div data-role="content">
					<p>
						<label class="legend"><b>������ȯ ���� :</b>&nbsp;&nbsp;&nbsp; <span><%=bvo.getTitle()%></span> 
						</label>
					</p>
					<!-- <p><label class = "legend"><b>���� ��¥</b> </label> <input type="date" style="text-align: left; width: 250px; height: 30px;"></p> -->
					<p>
						<label class="legend"><b>���� ���� : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getDeadline()%>
						</label>
					</p>

					<hr>
					<%-- <label class = "legend"><b>��ȣ ���� ���� : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getHelperGender() %> </label> --%>
					<br>
				</div>
				<div data-role="content">
					
				</div>

				<hr>
				<div data-role="fieldcontain">
					<label class="legend"><b>������ȯ ���� : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getContent()%>
					</label> <br> <br> <label class="legend"><b>���� ÷�� : </b>&nbsp;&nbsp;&nbsp;
					</label> <img alt="" src="images/<%=bvo.getExfileName()%>"> <br> <br>
				</div>
				
					<br>
				<div data-role="footer" data-position="fixed" align="center" style="text-align: center;">
					<a  href="index.jsp" class="button next">Ȩ����</a> 
					<a href="goBoardMain" class="button next">�ڷΰ���</a>
					<button type="submit" class="button next">��û�ϱ�</button>
				</div>
			</div>
		</div>
	</form>

	
	
	</script>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>