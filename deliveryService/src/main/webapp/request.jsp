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
out.print(vo);
%> 
<body class="dimmed">
	<form action="requestService" method="post"
		enctype="multipart/form-data">
		<div class="popup">
			<div class="title" align="center">
				<span> <%=vo.getId()%></span> ���� �ɺθ� ��û��
			</div>
			<div class="content">
				<fieldset class="fie1" align="center">
					<label class="legend"><b>�ɺθ� �׸� ����</b> </label> <select
						name="errand"
						style="text-align: left; width: 250px; height: 30px;">
						<option value="none">ī�װ� ����</option>
						<option value="10">���</option>
						<option value="20">����</option>
						<option value="30">���б�</option>
						<option value="40">���Ҵ���</option>
						<option value="50">�뺴���ϱ�</option>
						<option value="60">����</option>
						<option value="70">���� ����ֱ�</option>
						<option value="80">��Ȱ�� ����</option>
						<option value="90">�ݷ���</option>
						<option value="100">��ǰ�뿩</option>
						<option value="110">��Ÿ</option>
					</select> <br>

					<div data-role="content">
						<p>
							<label class="legend"><b>�ɺθ� ����</b> </label> <input type="text"
								name="title" placeholder="������ �Է����ּ���!"
								style="text-align: left; width: 250px; height: 30px;">
						</p>
						<!-- <p><label class = "legend"><b>���� ��¥</b> </label> <input type="date" style="text-align: left; width: 250px; height: 30px;"></p> -->
						<p>
							<label class="legend"><b>���� ����</b> </label> <input type="date"
								name="deadline"
								style="text-align: left; width: 250px; height: 30px;">
						</p>

						<hr>
						<label class="legend"><b>��ȣ ���� ���� : </b> </label> ���� <input
							type="radio" name="gender" value="M"> ���� <input
							type="radio" name="gender" value="W"> ���� <input
							type="radio" name="gender" value="G"> <br> <br>
					</div>

					<div data-role="content">
						<label class="legend"><b>���� ���� �а� ����</b> </label> <select
							name="major"
							style="text-align: left; width: 250px; height: 30px;">
							<option value="none">�а� ����</option>
							<option value="10">��ȣ��</option>
							<option value="20">�濵��</option>
							<option value="30">������</option>
							<option value="40">���������д�</option>
							<option value="50">������</option>
							<option value="60">�����</option>
							<option value="70">��ȸ���д�</option>
							<option value="80">��Ȱ���д�</option>
							<option value="90">���ǰ���</option>
							<option value="100">���д�</option>
							<option value="110">������</option>
							<option value="120">�ǰ���</option>
							<option value="130">�ι���</option>
							<option value="140">�ڿ����д�</option>
							<option value="150">AI���մ�</option>
						</select> <br> <br>
					</div>

					<div data-role="content">
						<p>
							<label class="legend"><b>�ɺθ� ���</b> </label> <input type="text"
								name="place" id="txt1" placeholder="�ɺθ� ���� ��Ҹ� �Է����ּ���."
								style="text-align: left; width: 250px; height: 30px;">
						</p>
						<div onclick="search()">���ΰ�ħ</div>
						
						
					
							<div id="map" style="width: 100%; height: 350px;"></div>
							

							
							<p>
								<label class="legend"><b>�ɺθ���</b> </label> <input type="text"
									name="money" placeholder="ex) 5000"
									style="text-align: left; width: 250px; height: 30px;">
							</p>
					</div>

					<hr>
					<div data-role="fieldcontain">
						<label class="legend"><b>�ɺθ� ��û ����</b> </label> <input
							type="image" name="file" value="����÷��"> <br> <input
							type="text" name="content" placeholder="��û ������ ���ϰ� �Է��� �ּ���."
							style="text-align: left; width: 400px; height: 200px;">
					</div>

				</fieldset>
				<br>
				<div data-role="footer" data-position="fixed" align="center">
					<a href="index.jsp" class="button next">Ȩ����</a> 
					<a href="goBoardMain" class="button next">���</a>
					<button type="submit" class="button next">�ø���</button>
						
				</div>

			</div>
		</div>
	</form>
	


	  <div class="cmd">
            <input type="submit" name="btnclose" class="btn btn-primary" style="height:50px; font-size:20px;" value="�ݱ�">
            <input type="submit" class="btn btn-primary" style="margin-left:400px;" value="���� �Ϸ�">
        </div>
        
        <!-- ���� �����ֱ� -->
        <script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c32ffcc6e0f6ca8625b3a6db6be3e2&libraries=services"></script>
		<script>
		// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		var mapContainer = document
				.getElementById('map'), // ������ ǥ���� div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826,
					126.9786567), // ������ �߽���ǥ
			level : 3
		// ������ Ȯ�� ����
		};

		// ������ �����մϴ�    
		var map = new kakao.maps.Map(mapContainer,
				mapOption);

		// ��� �˻� ��ü�� �����մϴ�
		var ps = new kakao.maps.services.Places();

		

		// Ű����� ��Ҹ� �˻��մϴ�
		ps.keywordSearch('���� �������б�', placesSearchCB);

		// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
		function placesSearchCB(data, status,
				pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
				// LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
				var bounds = new kakao.maps.LatLngBounds();

				for (var i = 0; i < data.length; i++) {
					displayMarker(data[i]);
					bounds
							.extend(new kakao.maps.LatLng(
									data[i].y,
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
				position : new kakao.maps.LatLng(
						place.y, place.x)
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
								infowindow.open(map,
										marker);
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

				var mapContainer = document
						.getElementById('map'), // ������ ǥ���� div 
				mapOption = {
					center : new kakao.maps.LatLng(37.566826,
							126.9786567), // ������ �߽���ǥ
					level : 3
				// ������ Ȯ�� ����
				};

				// ������ �����մϴ�    
				var map = new kakao.maps.Map(mapContainer,
						mapOption);

				// ��� �˻� ��ü�� �����մϴ�
				var ps = new kakao.maps.services.Places();

				var place = document.getElementById('txt1').value;

				// Ű����� ��Ҹ� �˻��մϴ�
				ps.keywordSearch(text, placesSearchCB);

				// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
				function placesSearchCB(data, status,
						pagination) {
					if (status === kakao.maps.services.Status.OK) {

						// �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
						// LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
						var bounds = new kakao.maps.LatLngBounds();

						for (var i = 0; i < data.length; i++) {
							displayMarker(data[i]);
							bounds
									.extend(new kakao.maps.LatLng(
											data[i].y,
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
						position : new kakao.maps.LatLng(
								place.y, place.x)
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
										infowindow.open(map,
												marker);
									});
				}
			}
		</script>

</body>
</html>