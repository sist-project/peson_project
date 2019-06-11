<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="text-center">
		<img src="${vo.img }">
		<h4 align="center">${vo.title } 상세정보</h4>
	</div>
	<div>
		<div class="col-sm-8">
			<table align="center" width="300px" height="300px" style="vertical-align: top; border: 1px; border-color: gray;">
				<tr>
					<th width="30%" style="text-align: center;">주소</th>
					<td width="70%" class="text-left">${vo.addr }</td>
				</tr>
				<tr>
					<th width="30%" style="text-align: center;">음식 종류</th>
					<td width="70%" class="text-left">${vo.kind }</td>
				</tr>
				<tr>
					<th width="30%" style="text-align: center;">전화번호</th>
					<td width="70%" class="text-left">${vo.tel }</td>
				</tr>
				<tr>
					<th width="30%" style="text-align: center;">가격대</th>
					<td width="70%" class="text-left">${vo.price }</td>
				</tr>
				<tr>
					<th width="30%" style="text-align: center;">영업시간</th>
					<td width="70%" class="text-left">${vo.time }</td>
				</tr>
			</table>
		</div>
		<div class="col-sm-4">
			<h4 align="center">${vo.title } 위치</h4>
				<div id="map" style="width: 100%; height: 350px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=60c4bc023c22e029c517e071fd16363c&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(
						'${vo.addr}',
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === daum.maps.services.Status.OK) {

								var coords = new daum.maps.LatLng(result[0].y,result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new daum.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new daum.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">${vo.title}</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>
		</div>
	</div>
	
</body>
</html>