<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Round Range Slider -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- google chart -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
	
	<!-- google chart -->
	google.charts.load('current', {'packages' : [ 'corechart' ]	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], 
				<c:forEach items="${list}" var="vo" varStatus="i">
					[ '<c:out value="${vo.category}"/>', <c:out value="${vo.value}"/> ] 
					<c:if test="${not i.last}">,</c:if>
				</c:forEach>
				]);
		
		var options = {
			title : ''
		};
		var chart = new google.visualization.PieChart(document.getElementById('piechart'));
		chart.draw(data, options);
	}
	
	
	<!-- Round Range Slider -->
	  var slider=null;
	  var output=null;
	  window.onload=function()
	  {
		  slider = document.getElementById("salary");
		  output = document.getElementById("demo");
		  output.innerHTML=slider.value;
		  
		  slider1 = document.getElementById("saving");
		  output1 = document.getElementById("demo1");
		  output1.innerHTML=slider1.value;
		  
		  output2 = document.getElementById("demo2");
		  output2.innerHTML = parseInt(slider.value) - (parseInt(slider.value)) * ((parseInt(slider1.value)/100));
	  }
		
	function setValue()
	{
		output.innerHTML=slider.value;
		output1.innerHTML=slider1.value;
		output2.innerHTML = parseInt(slider.value) - (parseInt(slider.value)) * ((parseInt(slider1.value)/100));
	}
	
</script>
<style type="text/css">
.slidecontainer {
	width: 100%;
}

.slider {
	-webkit-appearance: none;
	width: 100%;
	height: 15px;
	border-radius: 5px;
	background: #d3d3d3;
	outline: none;
	opacity: 0.7;
	-webkit-transition: .2s;
	transition: opacity .2s;
}

.slider:hover {
	opacity: 1;
}

.slider::-webkit-slider-thumb {
	-webkit-appearance: none;
	appearance: none;
	width: 25px;
	height: 25px;
	border-radius: 50%;
	background: #4CAF50;
	cursor: pointer;
}

.slider::-moz-range-thumb {
	width: 25px;
	height: 25px;
	border-radius: 50%;
	background: #4CAF50;
	cursor: pointer;
}
</style>
</head>
<body>
	<!-- Pie Chart -->
	<div class="col-lg-4 col-md-12">
		<div class="box-content">
			<h4 class="box-title">1인 가구 월별 소비</h4>
			<div class="dropdown js__drop_down">
				<a href="#"
					class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
				<ul class="sub-menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else there</a></li>
					<li class="split"></li>
					<li><a href="#">Separated link</a></li>
				</ul>
			</div>
			<div id="piechart" style="width: 100%; height: 195px;"></div>
		</div>
	</div>

	<!-- Range Slider -->
	<div class="col-lg-8 col-md-12">
		<div class="box-content">
			<div class="dropdown js__drop_down">
				<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
				<ul class="sub-menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else there</a></li>
					<li class="split"></li>
					<li><a href="#">Separated link</a></li>
				</ul>
			</div>
			<p>한 달 수입을 입력해주세요</p>
			<div class="slidecontainer">
				<input type="range" min="1" max="1000" value="180" class="slider" id="salary" onchange="setValue()">
				<p>
					Value: <span id="demo"></span> 만원
				</p>
			</div>

			<p>저축 목표(%)</p>
			<div class="slidecontainer">
				<input type="range" min="1" max="100" value="50" class="slider" id="saving" onchange="setValue()">
				<p>
					Value: <span id="demo1"></span> %
				</p>
			</div>

			<p>나의 한달 생활비</p>
			<div class="slidecontainer">
				<input type="range" min="1" max="100" value="demo2" class="slider" id="money" onchange="setValue()">
				<p>
					Value: <span id="demo2"></span> 만원
				</p>
			</div>
		</div>
	</div>


	<!-- angle offset -->
	<c:forEach items="${list}" var="vo" varStatus="i">
		<div class="col-lg-3 col-xs-12">
			<div class="box-content">
				<h4 class="box-title"><c:out value="${vo.category}"/></h4>
				<div class="text-center">
					<div class="knob-wrap">
						<input class="knob" data-width="150" data-height="150"
							data-bgColor="#ebeff2" data-fgColor="#f60e0e" data-angleOffset=90
							data-linecap=round value="<fmt:formatNumber value="${vo.value/10000.0 }" type="number" pattern="0" />" 
						/>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>




	<!-- widget -->
	<div class="col-md-6">
	<div class="row small-spacing">
		<div class="col-lg-6">
			<div class="box-content bg-success text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-diamond"></i>
					<p class="text text-white">만약 당신이 담배를 피우지 않았다면...</p>
					<h2 class="counter">치킨이 123마리</h2>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="box-content bg-info text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-download"></i>
					<p class="text text-white">만약 당신이 음주를 하지 않았다면...</p>
					<h2 class="counter">책 324권</h2>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="box-content bg-danger text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-bug"></i>
					<p class="text text-white">만약 당신이 조금만 덜 먹었다면...</p>
					<h2 class="counter">저축 123만원</h2>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="box-content bg-warning text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-usd"></i>
					<p class="text text-white">만약 당신이 그 옷을 구매하지 않았다면...</p>
					<h2 class="counter">영화 23편</h2>
				</div>
			</div>
		</div>
	</div>
	</div>


		<!-- profile activity 이걸 안하면 이걸한다 -->
		<div class="col-md-6">
			<div class="box-content card">
				<h4 class="box-title">
					<i class="fa fa-globe ico"></i> 당신의 한달은?
				</h4>
				<div class="dropdown js__drop_down">
					<a href="#"	class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
					<ul class="sub-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else there</a></li>
						<li class="split"></li>
						<li><a href="#">Separated link</a></li>
					</ul>
				</div>
				<div class="card-content">
					<ul class="notice-list">
						<li>
							<a href="#"> 
								<span class="avatar">
								<img src="assets/images/avatar-1.jpg" alt=""></span> 
								<span class="name"><c:out value="${vo.category}"/></span> 
								<span class="desc"><c:out value="${vo.value}"/></span> 
								<span class="time"></span>
							</a>
						</li>
					</ul>
					<div class="text-center margin-top-20">
						<a href="#" class="btn btn-default">See All Activities 
							<i class="fa fa-angle-double-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>




	<!-- Ion Ranger SLider -->
	<script src="../assets/plugin/ion-range-slider/js/ion.rangeSlider.min.js"></script>
	<script src="../assets/scripts/ion.rangeSlider.init.min.js"></script>

	<!-- Ion Range SLider -->
	<link rel="stylesheet" href="../assets/plugin/ion-range-slider/css/ion.rangeSlider.css">
	<link rel="stylesheet" href="../assets/plugin/ion-range-slider/css/ion.rangeSlider.skinFlat.css">


	<!-- profile active -->
	<script src="../assets/scripts/jquery.min.js"></script>
	<script src="../assets/scripts/modernizr.min.js"></script>
	<script src="../assets/plugin/bootstrap/js/bootstrap.min.js"></script>
	<script src="../assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="../assets/plugin/nprogress/nprogress.js"></script>
	<script src="../assets/plugin/sweet-alert/sweetalert.min.js"></script>
	<script src="../assets/plugin/waves/waves.min.js"></script>
	<script src="../assets/scripts/main.min.js"></script>
</body>

</html>