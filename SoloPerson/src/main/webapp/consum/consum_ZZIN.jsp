<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- google chart -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<!-- knob chart -->
<!-- Main Styles -->
<link rel="stylesheet" href="assets/styles/style.min.css">
<!-- Material Design Icon -->
<link rel="stylesheet"
	href="assets/fonts/material-design/css/materialdesignicons.css">
<!-- mCustomScrollbar -->
<link rel="stylesheet"
	href="assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.min.css">
<!-- Waves Effect -->
<link rel="stylesheet" href="assets/plugin/waves/waves.min.css">
<!-- Sweet Alert -->
<link rel="stylesheet" href="assets/plugin/sweet-alert/sweetalert.css">

<!-- profile active -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Profile - My Admin Template</title>

<!-- Main Styles -->
<link rel="stylesheet" href="assets/styles/style.min.css">

<!-- Material Design Icon -->
<link rel="stylesheet"
	href="assets/fonts/material-design/css/materialdesignicons.css">

<!-- mCustomScrollbar -->
<link rel="stylesheet"
	href="assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.min.css">

<!-- Waves Effect -->
<link rel="stylesheet" href="assets/plugin/waves/waves.min.css">

<!-- Sweet Alert -->
<link rel="stylesheet" href="assets/plugin/sweet-alert/sweetalert.css">

<script type="text/javascript">

	<!-- google chart -->
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ '식료품', 32 ], [ '기타지출', 23 ],
				[ '주거비', 20 ], [ '교통비', 9 ], [ '의료비', 8 ], [ '통신비', 6 ],
				[ '교육비', 1 ] ]);
		var options = {
			title : ''
		};
		var chart = new google.visualization.PieChart(document
				.getElementById('piechart'));
		chart.draw(data, options);
	}
	
	
	

</script>


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
			<div id="piechart" style="width: 100%; height: 230px;"></div>
		</div>
	</div>

	<!-- Range Slider -->
	<div class="col-lg-8 col-md-12">
		<div class="box-content">
			<h4 class="box-title">Ion Ranger Slider</h4>
			<!-- /.box-title -->
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
				<!-- /.sub-menu -->
			</div>
			<!-- /.dropdown js__dropdown -->
			<p>한 달 수입을 입력해주세요</p>
			<div id="ion-range-03"></div>

			<p>저축 목표(%)</p>
			<div id="ion-range-01"></div>

			<p>나의 한달 생활비</p>
			<div id="ion-range-02"></div>

		</div>
		<!-- /.box-content -->
	</div>
	<!-- /.col-xs-12 -->


	<!-- angle offset -->
	<c:forEach begin="1" end="8">
		<div class="col-lg-3 col-xs-12">
			<div class="box-content">
				<h4 class="box-title">Angle offset</h4>
				<!-- /.box-title -->

				<!-- /.dropdown js__dropdown -->
				<div class="text-center">
					<div class="knob-wrap">
						<input class="knob" data-width="150" data-height="150"
							data-bgColor="#ebeff2" data-fgColor="#f60e0e" data-angleOffset=90
							data-linecap=round value="75" />
					</div>
					<!-- .knob-wrap -->
				</div>
			</div>
			<!-- /.box-content -->
		</div>
		<!-- /.col-lg-3 col-xs-12 -->
	</c:forEach>



	<!-- profile activity 이걸 안하면 이걸한다 -->
	<div class="col-md-4 col-xs-12">
		<div class="box-content card">
			<h4 class="box-title">
				<i class="fa fa-globe ico"></i> Activity
			</h4>
			<!-- /.box-title -->
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
				<!-- /.sub-menu -->
			</div>
			<!-- /.dropdown js__dropdown -->
			<div class="card-content">
				<ul class="notice-list">
					<li><a href="#"> <span class="avatar"><img
								src="assets/images/avatar-1.jpg" alt=""></span> <span
							class="name">Betty Simmons</span> <span class="desc">There
								are new settings available</span> <span class="time">2 hours ago</span>
					</a></li>
				</ul>
				<!-- <!-- /.notice-list -->
				<div class="text-center margin-top-20">
					<a href="#" class="btn btn-default">See All Activities <i
						class="fa fa-angle-double-right"></i></a>
				</div> -->
			</div>
			<!-- /.card-content -->
		</div>
		<!-- /.box-content card -->
	</div>
	<!-- /.col-md-6 -->



	<!-- Ion Ranger SLider -->
	<script
		src="../assets/plugin/ion-range-slider/js/ion.rangeSlider.min.js"></script>
	<script src="../assets/scripts/ion.rangeSlider.init.min.js"></script>

	<!-- Ion Range SLider -->
	<link rel="stylesheet"
		href="../assets/plugin/ion-range-slider/css/ion.rangeSlider.css">
	<link rel="stylesheet"
		href="../assets/plugin/ion-range-slider/css/ion.rangeSlider.skinFlat.css">


	<!-- profile active -->
	<script src="../assets/scripts/jquery.min.js"></script>
	<script src="../assets/scripts/modernizr.min.js"></script>
	<script src="../assets/plugin/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="../assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="../assets/plugin/nprogress/nprogress.js"></script>
	<script src="../assets/plugin/sweet-alert/sweetalert.min.js"></script>
	<script src="../assets/plugin/waves/waves.min.js"></script>

	<script src="../assets/scripts/main.min.js"></script>
</body>


</html>