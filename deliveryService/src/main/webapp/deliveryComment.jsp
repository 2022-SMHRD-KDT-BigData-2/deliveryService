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
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	DeliveryBoardVO dvo = (DeliveryBoardVO)session.getAttribute("dvo");
%>
<body class="dimmed">

	<form action="DCommentService" method="post">
		<div class="popup">
			<div class="title" align="center">
				<span> <%=vo.getId()%></span> ���� �ɺθ� ��û��
			</div>
			<div class="content">
				<fieldset class="fie1" align="center">
					<label class="legend"><b>�ɺθ� �׸�</b> </label> 

					<div data-role="content">
						<p>
							<label class="legend"><b>�ɺθ� ����</b> 
								
							</label>
						</p>
						
						<p>
							<label class="legend"><b>���� ����</b>
								<%= dvo.getDeadLine() %>							
							 </label> 
						</p>

						<hr>
						
					</div>

					<div data-role="content">
						
					</div>

					<div data-role="content">

						<p>
							<label class="legend"><b>�ɺθ� ���</b> </label> 
						</p>
						
						<div onclick="search()">���� �˻�</div>

						<div id="map" style="width: 100%; height: 350px;"></div>



						<p>
							<label class="legend"><b>�ɺθ���</b> </label> <input type="text"
								name="money" placeholder="ex) 5000"
								style="text-align: left; width: 250px; height: 30px;">
						</p>
					</div>

					<hr>
					<div data-role="fieldcontain">
						<label class="legend"><b>�ɺθ� ��û ����</b> </label>  
						
					</div>

				</fieldset>
				<br>
				<div data-role="footer" data-position="fixed" align="center">
					<a href="index.jsp" class="button next">Ȩ����</a> <a
						href="goBoardMain" class="button next">���</a>
					<button type="submit" class="button next">�ø���</button>

				</div>
				
			</div>
		</div>
	</form>



	<div class="cmd">
		<input type="submit" name="btnclose" class="btn btn-primary"
			style="height: 50px; font-size: 20px;" value="�ݱ�"> <input
			type="submit" class="btn btn-primary" style="margin-left: 400px;"
			value="���� �Ϸ�">
	</div>

	<!-- ���� �����ֱ� -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c32ffcc6e0f6ca8625b3a6db6be3e2&libraries=services"></script>
	<script>
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
	</script>


	<script>
		function search() {
			console.log(1);
			var text = document.getElementById('txt1').value;
			console.log(text);

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

			var place = document.getElementById('txt1').value;

			// Ű����� ��Ҹ� �˻��մϴ�
			ps.keywordSearch(text, placesSearchCB);

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
	</script>

</body>
</html>