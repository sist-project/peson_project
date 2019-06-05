<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div class="row small-spacing">
			<div class="col-xs-12">
				<div class="box-content">
					<h4 class="box-title">Activity</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div id="real-time-flot-chart" class="flot-chart" style="height: 320px"></div>
					<!-- /#flot-chart-1.flot-chart -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xs-12 -->


			<div class="col-lg-6 col-xs-12">
				<div class="box-content">
					<h4 class="box-title">Visitor Analytics</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div id="bar-morris-chart" class="morris-chart" style="height: 240px"></div>
					<div class="text-center">
						<ul class="list-inline morris-chart-detail-list">
							<li><i class="fa fa-circle"></i>Series A</li>
							<li><i class="fa fa-circle"></i>Series B</li>
							<li><i class="fa fa-circle"></i>Series C</li>
						</ul>
					</div>
					<!-- /#bar-morris-chart.morris-chart -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-lg-6 col-xs-12 -->

			<div class="col-lg-6 col-xs-12">
				<div class="box-content">
					<h4 class="box-title">Memory usage</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div id="donut-morris-chart" class="morris-chart" style="height: 240px"></div>
					<div class="text-center">
						<ul class="list-inline morris-chart-detail-list">
							<li><i class="fa fa-circle"></i>Series A</li>
							<li><i class="fa fa-circle"></i>Series B</li>
							<li><i class="fa fa-circle"></i>Series C</li>
						</ul>
					</div>
					<!-- /#donut-morris-chart.morris-chart -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-lg-6 col-xs-12 -->
		</div>
		<!-- /.row -->
</body>
</html>