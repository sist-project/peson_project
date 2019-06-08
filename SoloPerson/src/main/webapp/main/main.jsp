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
					<i class="fa fa-credit-card" aria-hidden="true"><span class="box-title">&nbsp;&nbsp;1인 가구 소비 지출</span></i>
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
					<div id="3dstacking-highcharts"></div>
				</div>
				<!-- /.box-content -->		
			</div>

			<div class="col-lg-6 col-xs-12">
				<div class="box-content">
						<i class="fa fa-bar-chart-o"><span class="box-title">&nbsp;&nbsp;1인 가구 성별 차트</span></i>		
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
						<div id="bar-morris-chart" class="morris-chart" style="height: 320px"></div>
						<div class="text-center">
							<ul class="list-inline morris-chart-detail-list">
							<li><button class="btn btn-primary btn-circle btn-xs waves-effect waves-light">&lt;</button></li>
								<li><i class="fa fa-circle"></i>Total</li>
								<li><i class="fa fa-circle"></i>Female</li>
								<li><i class="fa fa-circle"></i>Male</li>	
								<li><button class="btn btn-primary btn-circle btn-xs waves-effect waves-light">&gt;</button></li>													
							</ul>
						</div>
						<!-- /#bar-morris-chart.morris-chart -->
					</div>
					<!-- /.box-content -->
			</div>
			<!-- /.col-lg-6 col-xs-12 -->
			
			<div class="col-lg-6 col-xs-12">
				<div class="box-content">
					<div class="row">
						<div class="col-lg-6">
							<i class="fa fa-pie-chart"><span class="box-title">&nbsp;&nbsp;시/도별 비율 분포</span></i>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4">
							<img src="../assets/images/main/south_korea.jpg" width="233">					
						</div>
						<div class="col-lg-4">
							<h4 class="box-title knob_year">2016년</h4>
							<div class="knob-wrap">
								<input class="knob" data-width="150" data-height="150" data-bgColor="#ebeff2" data-fgColor="#00aeff" data-readOnly=true data-thickness=".4" value="30"  />
							</div>
						</div>
						<div class="col-lg-4">
							<h4 class="box-title knob_year">2017년</h4>
							<div class="knob-wrap">
								<input class="knob" data-width="150" data-height="150" data-bgColor="#ebeff2" data-fgColor="#ff8acc" data-readOnly=true data-thickness=".4" value="30"  />
							</div>
						</div>						
						<!-- .knob-wrap -->
					</div>
				</div>
			</div>
			<!-- /.col-lg-6 col-xs-12 -->
		</div>
		<!-- /.row -->
</body>
</html>