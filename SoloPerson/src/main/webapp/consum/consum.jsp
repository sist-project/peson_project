<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
			<!-- /.col-lg-6 col-xs-12 -->
			<div class="col-lg-6 col-xs-12">
				<div class="box-content">
					<h4 class="box-title">Pie Chart</h4>
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
					<div id="3dpie-highcharts"></div>
				</div>
				<!-- /.box-content -->
			</div>
			
			<!-- /.col-lg-6 col-xs-12 -->
			<div class="col-lg-6 col-xs-12">
				<div class="box-content">
					<h4 class="box-title">Stacking Chart</h4>
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
			
			
		<div id="wrapper">
			<div class="main-content">
				<div class="row small-spacing">
					<div class="col-xs-12">
						<div class="box-content">
							<h4 class="box-title">Jquery UI Slider</h4>
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
							<div class="js__ui_slider" data-min="0" data-max="500"
								data-value-1="75" data-value-2="300">
								<p>
									<label for="amount-1">Price range:</label> <input type="text"
										id="amount-1"
										class="input-no-style text-danger js__slider_amount" readonly />
								</p>
								<div class="js__slider_range"></div>
							</div>
							<!-- .js__ui_slider -->
							<div class="margin-top-30 js__ui_slider" data-range="max"
								data-min="1" data-max="200" data-value-1="20">
								<p>
									<label for="amount-2">Minimum price:</label> <input type="text"
										id="amount-2"
										class="input-no-style text-danger js__slider_amount" readonly />
								</p>
								<div class="js__slider_range"></div>
							</div>
							<!-- .js__ui_slider -->
							<div class="margin-top-30 js__ui_slider" data-range="min"
								data-min="1" data-max="200" data-value-1="120">
								<p>
									<label for="amount-3">Maximum price:</label> <input type="text"
										id="amount-3"
										class="input-no-style text-danger js__slider_amount" readonly />
								</p>
								<div class="js__slider_range"></div>
							</div>
							<!-- .js__ui_slider -->
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>