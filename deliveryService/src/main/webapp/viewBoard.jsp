<%@page import="deliveryService.model.DeliveryBoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
	<%
		DeliveryBoardVO bvo = (DeliveryBoardVO)request.getAttribute("bvo");		
	%>			
			<div id = "board">
				<table id="list">
					<tr>
						<td><%=bvo.getTitle() %></td>
					</tr>
					<tr>
						<td><%=bvo.getDeadLine() %></td>
					</tr>
					<tr>
						<td><%=bvo.getPlace() %></td>
					</tr>
					<tr>
						<td><%=bvo.getMoney() %></td>
					</tr>
					<tr>
						<td><%=bvo.getBid() %></td>
					</tr>
					<tr>
						<td colspan="2"><%=bvo.getContent() %></td>
					</tr>
					<tr>
						<td colspan="2">
							<img alt="" src="img/<%=bvo.getFileName()%>">
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="goBoardMain"><button>뒤로가기</button></a></td>
					</tr>
				</table>
			</div>
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