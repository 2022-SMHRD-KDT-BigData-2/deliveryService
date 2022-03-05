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
				<span> <%=vo.getId()%></span> 님의 심부름 요청서
			</div>
			<div class="content">
				<fieldset class="fie1" align="center">
					<label class="legend"><b>심부름 항목</b> </label> 

					<div data-role="content">
						<p>
							<label class="legend"><b>심부름 제목</b> 
								
							</label>
						</p>
						
						<p>
							<label class="legend"><b>마감 일자</b>
								<%= dvo.getDeadLine() %>							
							 </label> 
						</p>

						<hr>
						
					</div>

					<div data-role="content">
						
					</div>

					<div data-role="content">

						<p>
							<label class="legend"><b>심부름 장소</b> </label> 
						</p>
						
						<div onclick="search()">지도 검색</div>

						<div id="map" style="width: 100%; height: 350px;"></div>



						<p>
							<label class="legend"><b>심부름비</b> </label> <input type="text"
								name="money" placeholder="ex) 5000"
								style="text-align: left; width: 250px; height: 30px;">
						</p>
					</div>

					<hr>
					<div data-role="fieldcontain">
						<label class="legend"><b>심부름 요청 내용</b> </label>  
						
					</div>

				</fieldset>
				<br>
				<div data-role="footer" data-position="fixed" align="center">
					<a href="index.jsp" class="button next">홈으로</a> <a
						href="goBoardMain" class="button next">취소</a>
					<button type="submit" class="button next">올리기</button>

				</div>
				
			</div>
		</div>
	</form>



	<div class="cmd">
		<input type="submit" name="btnclose" class="btn btn-primary"
			style="height: 50px; font-size: 20px;" value="닫기"> <input
			type="submit" class="btn btn-primary" style="margin-left: 400px;"
			value="가입 완료">
	</div>

	<!-- 지도 보여주기 -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c32ffcc6e0f6ca8625b3a6db6be3e2&libraries=services"></script>
	<script>
		// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		// 키워드로 장소를 검색합니다
		ps.keywordSearch('광주 전남대학교', placesSearchCB);

		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				var bounds = new kakao.maps.LatLngBounds();

				for (var i = 0; i < data.length; i++) {
					displayMarker(data[i]);
					bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
				}

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
				map.setBounds(bounds);
			}
		}

		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {

			// 마커를 생성하고 지도에 표시합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : new kakao.maps.LatLng(place.y, place.x)
			});

			// 마커에 클릭이벤트를 등록합니다
			kakao.maps.event.addListener(marker, 'click', function() {
				// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
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

			// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
			var infowindow = new kakao.maps.InfoWindow({
				zIndex : 1
			});

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places();

			var place = document.getElementById('txt1').value;

			// 키워드로 장소를 검색합니다
			ps.keywordSearch(text, placesSearchCB);

			// 키워드 검색 완료 시 호출되는 콜백함수 입니다
			function placesSearchCB(data, status, pagination) {
				if (status === kakao.maps.services.Status.OK) {

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					var bounds = new kakao.maps.LatLngBounds();

					for (var i = 0; i < data.length; i++) {
						displayMarker(data[i]);
						bounds.extend(new kakao.maps.LatLng(data[i].y,
								data[i].x));
					}

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					map.setBounds(bounds);
				}
			}

			// 지도에 마커를 표시하는 함수입니다
			function displayMarker(place) {

				// 마커를 생성하고 지도에 표시합니다
				var marker = new kakao.maps.Marker({
					map : map,
					position : new kakao.maps.LatLng(place.y, place.x)
				});

				// 마커에 클릭이벤트를 등록합니다
				kakao.maps.event
						.addListener(
								marker,
								'click',
								function() {
									// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
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