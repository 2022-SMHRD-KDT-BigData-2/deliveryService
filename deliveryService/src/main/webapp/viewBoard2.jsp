<%@page import="deliveryService.model.DeliveryBoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body id="nanno">
	<%
		DeliveryBoardVO bvo = (DeliveryBoardVO)request.getAttribute("bvo");		
			
	%>			
	<script>
   document.getElementById('nanno').style.font = '20px �ؽ�Lv1��� OTF Light';
   </script>
			<div id = "board">
				<h2>�ɺθ� ����</h2>
				<fieldset>
				<table id="list">
					<tr>
						<td>���� : <%=bvo.getTitle() %></td>
					</tr>
					<tr>
						<td>���� ���� : <%=bvo.getDeadLine() %></td>
					</tr>
					<tr>
						<td>��� : <%=bvo.getPlace() %></td>
					</tr>
					<tr>
						<td>�ɺθ��� : <%=bvo.getMoney() %></td>
					</tr>
					<tr>
						<td>�ۼ��� ���̵� : <%=bvo.getBid() %></td>
					</tr>
					<tr>
						<td colspan="2">�ɺθ� ���� : <%=bvo.getContent() %></td>
					</tr>
					<tr>
						<td colspan="2">
							���� ÷�� : <img alt="" src="img/<%=bvo.getFileName()%>">
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="goBoardMain"><button>�ڷΰ���</button></a></td>
					</tr>
				</fieldset>
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