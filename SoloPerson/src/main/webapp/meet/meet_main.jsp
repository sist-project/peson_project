<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 
<script type="text/javascript">
/* $(function(){	
	$('.gulist').click(function(){
		var no=$(this).attr('id');
		no=no.substring(2);
		alert(no);
		
		$.ajax({
			type:'GET',
			url:'../meet/mapFind.do',
			data:{"no":no},
			success:function(response)
			{
				$('#print').html(response);
			}
		});
	});
}); */
</script>

<link rel="stylesheet" href="../meet/map.css">

<style type="text/css">

</style>
</head>
<body>	

	<div class="row small-spacing">
		<h2>일상-모임</h2>
		<!-- 리스트 -->
		<div class="col-xs-8">
			<div id="print">
				<jsp:include page="${meetList_jsp }"></jsp:include>
			</div>
		</div>
		
		<!-- 지도 -->
		<div class="col-xs-4">
			<div class="box-content">
				<h3>지도 검색</h3>
				<%--지도 --%>
				<div id="a">
					<img src="map/1111.png" id="seoul_1">
					<c:forEach var="i" begin="1" end="25">
						<img id="gu${i }" src="map/gu_${i }_off.png"
							onmouseover="this.src='map/gu_${i }_on.png'" 
							onmouseout="this.src='map/gu_${i }_off.png'" 
							class="gulist"
						>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	
</body>
</html>