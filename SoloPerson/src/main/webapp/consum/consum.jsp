<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Main Styles -->
<link rel="stylesheet" href="../assets/styles/style.min.css">

<!-- Material Design Icon -->
<link rel="stylesheet" href="../assets/fonts/material-design/css/materialdesignicons.css">

<!-- mCustomScrollbar -->
<link rel="stylesheet" href="../assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.min.css">

<!-- Waves Effect -->
<link rel="stylesheet" href="../assets/plugin/waves/waves.min.css">

<!-- Sweet Alert -->
<link rel="stylesheet" href="../assets/plugin/sweet-alert/sweetalert.css">

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
		output2.innerHTML =parseInt(parseInt(slider.value) - (parseInt(slider.value)) * ((parseInt(slider1.value)/100)));		
		
		<!-- angle offset -->
		var slider3 = $('#demo2').text();
		var yongdon=null;
		<c:forEach items="${list}" var="vo" varStatus="i">
			  var perc = <c:out value="${vo.percent}"/>
			  yongdon = (slider3 * parseFloat(perc)).toFixed(2);
			  var index = <c:out value="${i.index}"/>;
			  var idname = "#yong"+index;
			  $(idname).text(yongdon);
		</c:forEach>
	}
	
	<!-- 유흥비 -->
	var temp1; 

	function input1(){
	var input1 = document.getElementById("input1").value; 
	temp1 = input1/18000;
	$('#output1').text("치킨"+temp1.toFixed(0)+"마리를 먹을수있었습니다");
	}
	
	var temp2; 

	function input2(){
	var input2 = document.getElementById("input2").value; 
	temp2 = input2/10000;
	$('#output2').text("집에"+temp2.toFixed(0)+"권의 책이 생겼네요");
	}
	
	var temp3; 

	function input3(){
	var input3 = document.getElementById("input3").value; 
	temp3 = input3/1;
	$('#output3').text("미래를 위한"+temp3.toFixed(0)+"을 저축했습니다");
	}
	
	var temp4; 

	function input4(){
	var input4 = document.getElementById("input4").value; 
	temp4 = input4/10000;
	$('#output4').text("이번 달 영화를"+temp4.toFixed(0)+"편 볼 수 있었네요");
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
	background: #FAFAC8;
	border: 1px solid yellow;
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
			<h4 class="box-title">1인 가구 평균 월별 소비</h4>
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
		<div class="box-content" style="height: 281px;">
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
				<p align="right">
					<span id="demo"></span> &nbsp;만원
				</p>
			</div>

			<p>저축 목표(%)</p>
			<div class="slidecontainer">
				<input type="range" min="1" max="100" value="50" class="slider" id="saving" onchange="setValue()">
				<p align="right">
					<span id="demo1"></span>&nbsp; %
				</p>
			</div>

			<hr>
			<div class="slidecontainer text-center">
				<p>나의 한달 생활비</p>
				<p>	<span id="demo2"></span>&nbsp; 만원 </p>
			</div>
		</div>
	</div>


	<div class="row small-spacing">
		<c:forEach items="${list}" var="vo" varStatus="i">
			<div class="col-lg-3 col-xs-12">
				<div class="box-contact">
					<img src="../assets/images/${vo.no}.png" lt="" class="avatar">
					<h3 class="name margin-top-10"><c:out value="${vo.category}"/></h3>
					<h4 class="job" id="yong${i.index}">${fn:substring(vo.percent*100,0,4) } 만원</h4>
				</div>
			</div>
		</c:forEach>
	</div>

	
				


	<!-- widget -->
	
	<div class="row small-spacing">
		<div class="col-lg-3">
			<div class="box-content bg-success text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-beer"></i>
					<p class="text text-white">당신이 담배를 피우지 않았다면...</p>
					<input type="text" placeholder="한달 담배값 입력" id="input1" style="color: black;width:120px;">
					<button onclick="input1()" class="btn btn-xs btn-active" style="color: black;">보기</button>
					<h2 class="counter" id="output1"></h2>
				</div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="box-content bg-info text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-book"></i>
					<p class="text text-white">당신이 음주를 하지 않았다면...</p>
					<input type="text" placeholder="한달 주류비 입력" id="input2" style="color: black;width:120px;">
					<button onclick="input2()" class="btn btn-xs btn-active" style="color: black;">보기</button>
					<h2 class="counter" id="output2"></h2>
				</div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="box-content bg-danger text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-diamond"></i>
					<p class="text text-white">당신이 조금만 덜 먹었다면...</p>
					<input type="text" placeholder="한달 식비 입력" id="input3" style="color: black;width:120px;">
					<button onclick="input3()" class="btn btn-xs btn-active" style="color: black;">보기</button>
					<h2 class="counter" id="output3"></h2>
				</div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="box-content bg-warning text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-caret-square-o-right"></i>
					<p class="text text-white">당신이 그 옷을 구매하지 않았다면...</p>
					<input type="text" placeholder="한달 의류비 입력" id="input4" style="color: black;width:120px;">
					<button onclick="input4()" class="btn btn-xs btn-active" style="color: black;">보기</button>
					<h2 class="counter" id="output4"></h2>
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