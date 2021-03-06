<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function() {
	    $(".menu1").removeClass("current");
		
		var page = "<c:out value='${param.pageName}' />";
		
		$('#' + page).addClass("current"); 
		
	});
</script>
</head>
<body>
<div class="navigation">
			<h5 class="title">Menu</h5>
			<!-- /.title -->
			<ul class="menu js__accordion">
				<li id="main" class="menu1 current">
					<a class="waves-effect" href="../main/main.do?pageName=main"><i class="menu-icon mdi mdi-home"></i><span>1인 가구 통계</span></a>
				</li>
				<li id="mart" class="menu1 current">
					<a class="waves-effect" href="../mart/mart.do?pageName=mart"><i class="menu-icon mdi mdi-store"></i><span>편의점 BEST</span></a>
				</li>
				<li id="room" class="menu1 current">
					<a class="waves-effect" href="../room/room.do?pageName=room"><i class="menu-icon mdi mdi-lamp"></i><span>원룸 인테리어</span></a>
				</li>
				<li id="card" class="menu1 current">
					<a class="waves-effect" href="../card/card.do?pageName=card"><i class="menu-icon mdi mdi-credit-card"></i><span>카드 추천</span></a>
				</li>
				<li id="consum" class="menu1 current">
					<a class="waves-effect" href="../consum/consum.do?pageName=consum"><i class="menu-icon mdi mdi-currency-usd"></i><span>SHOW ME THE MONEY</span></a>
				</li>
				<li id="meet" class="menu1 current">
					<a class="waves-effect" href="../meet/meet_main.do?pageName=meet"><i class="menu-icon mdi mdi-human-greeting"></i><span>일상-모임</span></a>
				</li>
				<li id="visit" class="menu1 current">
					<a class="waves-effect" href="../visit_food/visitFood.do?pageName=visit"><i class="menu-icon mdi mdi-map-marker-radius"></i><span>혼자 놀자</span></a>
				</li>				
			</ul>
			<!-- /.menu js__accordion -->
		</div>
				<!-- /.navigation -->
</body>
</html>