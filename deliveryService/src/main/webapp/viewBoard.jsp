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
			<div class="title" align="center"><%=uvo.getId() %>님의 심부름 내역</div>
			<div class="content">
				<div data-role="content">
					<p>
						<label class="legend"><b>심부름 제목 :</b>&nbsp;&nbsp;&nbsp; <span><%=bvo.getTitle()%></span> 
						</label>
					</p>
					<!-- <p><label class = "legend"><b>시작 날짜</b> </label> <input type="date" style="text-align: left; width: 250px; height: 30px;"></p> -->
					<p>
						<label class="legend"><b>종료 일자 : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getDeadLine()%>
						</label>
					</p>

					<hr>
					<%-- <label class = "legend"><b>선호 헬퍼 성별 : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getHelperGender() %> </label> --%>
					<br>
				</div>
				<div id="map" style="width: 100%; height: 350px;"></div>
				<div onclick="search(`<%=bvo.getPlace() %>`)" >지도검색</div>
				<div data-role="content">
					<p>
						<label class="legend"><b>심부름 장소 : </b>&nbsp;&nbsp;&nbsp;<span id="txt1" value=<%=bvo.getPlace() %>><%=bvo.getPlace()%></span>
						</label>
					</p>
					<p>
						<label class="legend"><b>심부름비 : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getMoney()%>
						</label>
					</p>
				</div>

				<hr>
				<div data-role="fieldcontain">
					<label class="legend"><b>심부름 내용 : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getContent()%>
					</label> <br> <br> <label class="legend"><b>사진 첨부 : </b>&nbsp;&nbsp;&nbsp;<%=bvo.getContent()%>
					</label> <img alt="" src="images/<%=bvo.getFileName()%>"> <br> <br>
				</div>
				<%if(uvo.getHelper_check().equals("N")){ %>
				<br>
				<div data-role="footer" data-position="fixed" align="center">
					<a href="index.jsp" class="button next">홈으로</a> 
					<a href="goBoardMain" class="button next">뒤로가기</a>
				</div>
				<% } else{%>
					<br>
				<div data-role="footer" data-position="fixed" align="center" style="text-align: center;">
					<a  href="index.jsp" class="button next">홈으로</a> 
					<a href="goBoardMain" class="button next">뒤로가기</a>
					<button type="submit" class="button next">신청하기</button>
				</div><%} %>
			</div>
		</div>
	</form>

	<div class="table-wrapper">
		<table>
			<thead>
				<tr>
					<th>댓글 번호</th>
					<th>작성자 아이디</th>
					<th>내용</th>
					<th>심부름비</th>
					<th>작성일</th>
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
				<!--  <td><input tyep="text" placeholder="댓글을 입력하세요."></td>
				<td>금액 제시 : <input tyep="text" placeholder="원하는 금액을 입력하세요."></td>-->
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
	</script> -->
	<script>
		
		function search(place) {
			console.log(1);
			var text = document.getElementById('txt1').value;
			console.log(place);

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
			ps.keywordSearch(place, placesSearchCB);

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