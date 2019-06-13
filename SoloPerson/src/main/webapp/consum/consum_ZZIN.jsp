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

<!-- profile active -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	<!-- google chart -->
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], 
				[ '식료품', ${vo.grocery} ], 
				[ '주거비', ${vo.residence} ],
				[ '교육비', ${vo.education} ], 
				[ '의료비', ${vo.medication} ], 
				[ '교통비', ${vo.transportation} ], 
				[ '통신비', ${vo.phone} ],
				[ '기타지출', ${vo.etc} ],
				[ '비소비지출', ${vo.nonliving} ] 
				]);
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
		<div class="box-content pay_input">
			<h4 class="box-title">Ion Ranger Slider</h4>
			<div class="dropdown js__drop_down">
				<a href="#"	class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>				
			</div>
			
			<p>한 달 수입을 입력해주세요</p>
			<div id="ion-range-02"></div>
			<p>저축 목표(%)</p>
			<div id="ion-range-01"></div>
			<p>나의 한달 생활비</p>
			<div id="ion-range-011"></div>
			<!-- 한달수입-(한달수입*저축목표%) -->

		</div>
	</div>
	

	<!-- angle offset -->
	<c:forEach begin="1" end="8">
		<div class="col-lg-3 col-xs-12">
			<div class="box-content">
				<h4 class="box-title">Angle offset</h4>
				<div class="text-center">
					<div class="knob-wrap">
						<input class="knob" data-width="150" data-height="150"
							data-bgColor="#ebeff2" data-fgColor="#f60e0e" data-angleOffset=90
							data-linecap=round value="75" />
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
					<p class="text text-white">SUCCESS</p>
					<h2 class="counter">72943</h2>
				</div>
			</div>
			<!-- /.box-content -->
		</div>
		<!-- /.col-lg-3 col-md-6 col-xs-12 -->
		<div class="col-lg-6">
			<div class="box-content bg-info text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-download"></i>
					<p class="text text-white">DOWNLOAD</p>
					<h2 class="counter">6382</h2>
				</div>
			</div>
			<!-- /.box-content -->
		</div>
		<!-- /.col-lg-3 col-md-6 col-xs-12 -->
		<div class="col-lg-6">
			<div class="box-content bg-danger text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-bug"></i>
					<p class="text text-white">FIXED BUG</p>
					<h2 class="counter">12564</h2>
				</div>
			</div>
			<!-- /.box-content -->
		</div>
		<!-- /.col-lg-3 col-md-6 col-xs-12 -->
		<div class="col-lg-6">
			<div class="box-content bg-warning text-white">
				<div class="statistics-box with-icon">
					<i class="ico small fa fa-usd"></i>
					<p class="text text-white">SALES</p>
					<h2 class="counter">2,637</h2>
				</div>
			</div>
			<!-- /.box-content -->
		</div>
		<!-- /.col-lg-3 col-md-6 col-xs-12 -->
	</div>
	</div>


		<!-- profile activity 이걸 안하면 이걸한다 -->
		<div class="col-md-6">
			<div class="box-content card">
				<h4 class="box-title">
					<i class="fa fa-globe ico"></i> Activity
				</h4>
				<!-- /.box-title -->
				<div class="dropdown js__drop_down">
					<a href="#"
						class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
				</div>
				<div class="card-content">
					<ul class="notice-list">
						<li><a href="#"> <span class="avatar"><img
									src="assets/images/avatar-1.jpg" alt=""></span> <span
								class="name">Betty Simmons</span> <span class="desc">There
									are new settings available</span> <span class="time">2 hours
									ago</span>
						</a></li>
					</ul>
					<div class="text-center margin-top-20">
						<a href="#" class="btn btn-default">See All Activities <i
							class="fa fa-angle-double-right"></i></a>
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