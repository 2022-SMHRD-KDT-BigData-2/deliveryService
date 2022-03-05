<%@page import="deliveryService.model.DeliveryCommentVO"%>
<%@page import="java.util.List"%>
<%@page import="deliveryService.model.DeliveryBoardVO"%>
<%@page import="deliveryService.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/popup.css" />
<title>Insert title here</title>
</head>
<%
	MemberVO uvo = (MemberVO)session.getAttribute("vo");
	DeliveryBoardVO bvo = (DeliveryBoardVO) request.getAttribute("bvo");

	List<DeliveryCommentVO> list = (List<DeliveryCommentVO>) request.getAttribute("list");
%>

<body class="dimmed">
	<form action="DCommentService" method="post" enctype="multipart/form-data">
		<div class="popup">
			<div class="title" align="center"><%=uvo.getId() %>���� �ɺθ� ����</div>
			<div class="content">
				<div data-role="content">
					<p>
						<label class="legend"><b>�ɺθ� ���� :</b>&nbsp;&nbsp;&nbsp; <span><%=bvo.getTitle()%></span> 
						</label>
					</p>
					<!-- <p><label class = "legend"><b>���� ��¥</b> </label> <input type="date" style="text-align: left; width: 250px; height: 30px;"></p> -->
					<p>
						<label class="legend"><b>���� ���� : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getDeadLine()%>
						</label>
					</p>

					<hr>
					<%-- <label class = "legend"><b>��ȣ ���� ���� : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getHelperGender() %> </label> --%>
					<br>
				</div>
				<div id="map" style="width: 100%; height: 350px;"></div>
				<div onclick="search(`<%=bvo.getPlace() %>`)" >�����˻�</div>
				<div data-role="content">
					<p>
						<label class="legend"><b>�ɺθ� ��� : </b>&nbsp;&nbsp;&nbsp;<span id="txt1" value=<%=bvo.getPlace() %>><%=bvo.getPlace()%></span>
						</label>
					</p>
					<p>
						<label class="legend"><b>�ɺθ��� : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getMoney()%>
						</label>
					</p>
				</div>

				<hr>
				<div data-role="fieldcontain">
					<label class="legend"><b>�ɺθ� ���� : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getContent()%>
					</label> <br> <br> <label class="legend"><b>���� ÷�� : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getContent()%>
					</label> <img alt="" src="images/<%=bvo.getFileName()%>"> <br> <br>
				</div>
				<%if(uvo.getHelper_check().equals("N")){ %>
				<br>
				<div data-role="footer" data-position="fixed" align="center">
					<a href="index.jsp" class="button next">Ȩ����</a> 
					<a href="goBoardMain" class="button next">�ڷΰ���</a>
				</div>
				<% } else{%>
					<br>
				<div data-role="footer" data-position="fixed" align="center" style="text-align: center;">
					<a  href="index.jsp" class="button next">Ȩ����</a> 
					<a href="goBoardMain" class="button next">�ڷΰ���</a>
					<button type="submit" class="button next">��û�ϱ�</button>
				</div><%} %>
			</div>
		</div>
	</form>

	<div class="table-wrapper">
		<table>
			<thead>
				<tr>
					<th>��� ��ȣ</th>
					<th>�ۼ��� ���̵�</th>
					<th>����</th>
					<th>�ɺθ���</th>
					<th>�ۼ���</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (DeliveryCommentVO vo : list) {
				%>
				<tr>
					<%
						if (vo.getDcid().equals(uvo.getId())) {
					%>
					<td><%=vo.getCnum()%></td>
					<td><%=vo.getDcid()%></td>
					<td><%=vo.getContent()%></td>
					<td><%=vo.getMoney()%></td>
					<td><%=vo.getDay()%></td>
				</tr>
				<%
					} else {
				%>
				<!--  <td><input tyep="text" placeholder="����� �Է��ϼ���."></td>
				<td>�ݾ� ���� : <input tyep="text" placeholder="���ϴ� �ݾ��� �Է��ϼ���."></td>-->
				<%
					}
				%>
				<%
					}
				%> 
				

			</tbody>

		</table>
	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c32ffcc6e0f6ca8625b3a6db6be3e2&libraries=services"></script>
<!-- 	<script>
		// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // ������ �߽���ǥ
			level : 3
		// ������ Ȯ�� ����
		};

		// ������ �����մϴ�    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// ��� �˻� ��ü�� �����մϴ�
		var ps = new kakao.maps.services.Places();

		// Ű����� ��Ҹ� �˻��մϴ�
		ps.keywordSearch('���� �������б�', placesSearchCB);

		// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
				// LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
				var bounds = new kakao.maps.LatLngBounds();

				for (var i = 0; i < data.length; i++) {
					displayMarker(data[i]);
					bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
				}

				// �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
				map.setBounds(bounds);
			}
		}

		// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
		function displayMarker(place) {

			// ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
			var marker = new kakao.maps.Marker({
				map : map,
				position : new kakao.maps.LatLng(place.y, place.x)
			});

			// ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
			kakao.maps.event.addListener(marker, 'click', function() {
				// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
				infowindow
						.setContent('<div style="padding:5px;font-size:12px;">'
								+ place.place_name + '</div>');
				infowindow.open(map, marker);
			});
		}
	</script> -->
	<script>
		
		function search(place) {
			console.log(1);
			var text = document.getElementById('txt1').value;
			console.log(place);

			// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
			var infowindow = new kakao.maps.InfoWindow({
				zIndex : 1
			});

			var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
			mapOption = {
				center : new kakao.maps.LatLng(37.566826, 126.9786567), // ������ �߽���ǥ
				level : 3
			// ������ Ȯ�� ����
			};

			// ������ �����մϴ�    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// ��� �˻� ��ü�� �����մϴ�
			var ps = new kakao.maps.services.Places();


			// Ű����� ��Ҹ� �˻��մϴ�
			ps.keywordSearch(place, placesSearchCB);

			// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
			function placesSearchCB(data, status, pagination) {
				if (status === kakao.maps.services.Status.OK) {

					// �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
					// LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
					var bounds = new kakao.maps.LatLngBounds();

					for (var i = 0; i < data.length; i++) {
						displayMarker(data[i]);
						bounds.extend(new kakao.maps.LatLng(data[i].y,
								data[i].x));
					}

					// �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
					map.setBounds(bounds);
				}
			}

			// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
			function displayMarker(place) {

				// ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
				var marker = new kakao.maps.Marker({
					map : map,
					position : new kakao.maps.LatLng(place.y, place.x)
				});

				// ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
				kakao.maps.event
						.addListener(
								marker,
								'click',
								function() {
									// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
									infowindow
											.setContent('<div style="padding:5px;font-size:12px;">'
													+ place.place_name
													+ '</div>');
									infowindow.open(map, marker);
								});
			}
		}
		
		search('<%=bvo.getPlace()%>');
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