<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function() {
	// 성별 비율 분포
	$("#nextBtn").click(function() {
		$('#bar-morris-chart').bxSlider({
		
		});
	});
	
	$("#prevBtn").click(function() {
		$('#bar-morris-chart').bxSlider({
	
		});
	});
	
	
	// 시도별 비율 분포
	$(".sidoArea").click(function() {
		var $this = $(this).attr("id");		
		console.log(location.hash);
		$.ajax({
			url : "sido.json",
			type : "post",
			dataType : "json",
			success : function(res) {
				for (var i = 0; i < 17; i++) {
					if (res.images[i].title === $this) {
						var $url = res.images[i].url;		
						$("#sidoPrint").html("<div class='row'>"
											+  "<button class='backBtn btn btn-rounded btn-bordered btn-xs waves-effect waves-light' style='position: relative; left: 300px;'>Back</button>"
											+"</div>"
										    +  "<img src=" + $url + " usemap=#seoulMap>");
						
					}
								
				}
				
			}
			
		});
		
	});
	
	
});

</script>
<style type="text/css">
#sidoPrint {
	width: 400px;
}
#bar-morris-chart {
	height: 335px;
}
    
</style>
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
					<div id="bar-morris-chart" class="morris-chart"></div>
					<div class="text-center">
						<ul class="list-inline morris-chart-detail-list">
							<li><button id="prevBtn" class="btn btn-primary btn-circle btn-xs waves-effect waves-light">&lt;</button></li>
							<li><i class="fa fa-circle"></i>Total</li>
							<li><i class="fa fa-circle"></i>Female</li>
							<li><i class="fa fa-circle"></i>Male</li>	
							<li><button id="nextBtn" class="btn btn-primary btn-circle btn-xs waves-effect waves-light">&gt;</button></li>													
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
					<div class="col-lg-4" id="sidoPrint">

						<img src="../assets/images/main/south_korea.jpg" width="233" usemap="#koreaMap">
						<map name="koreaMap" id="koreaMap">
							<area id="seoul" class="sidoArea" shape="rect" coords="61,60,73,80">
							<area id="incheon" class="sidoArea" shape="rect" coords="46,73,60,89">
							<area id="gyeonggi" class="sidoArea" shape="rect" coords="65,92,77,107">
							<area id="gangwon" class="sidoArea" shape="rect" coords="144,40,157,56">
							<area id="chungcheongbukdo" class="sidoArea" class="sidoArea" shape="rect" coords="109,107,122,122">
							<area id="chungcheongnamdo" class="sidoArea" shape="rect" coords="39,128,54,145">
							<area id="sejong" class="sidoArea" shape="rect" coords="84,141,98,155">
							<area id="daejeon" class="sidoArea" shape="rect" coords="85,159,99,173">
							<area id="gyeongsangbukdo" class="sidoArea" shape="rect" coords="164,138,177,154">
							<area id="gyeongsangnamdo" class="sidoArea" shape="rect" coords="126,230,138,246">
							<area id="daegu" class="sidoArea" shape="rect" coords="163,189,177,205">
							<area id="ulsan" class="sidoArea" shape="rect" coords="195,212,207,227">
							<area id="busan" class="sidoArea" shape="rect" coords="180,244,194,260">
							<area id="jeollabukdo" class="sidoArea" shape="rect" coords="57,199,71,215">
							<area id="jeollanamdo" class="sidoArea" shape="rect" coords="36,260,50,277">
							<area id="gwangju" class="sidoArea" shape="rect" coords="52,240,64,257">
							<area id="jeju" class="sidoArea" shape="rect" coords="37,334,50,350">
						</map>	
								
					</div>
					<div class="col-lg-4 text-center">
						<h4 class="box-title knob_year" style="margin-bottom: 15px;">2016년</h4>
						<div class="knob-wrap">
							<input class="knob" data-width="150" data-height="150" data-bgColor="#ebeff2" data-fgColor="#ff8acc" data-readOnly=true data-thickness=".4" value="30"  />
						</div>
					</div>
					<div class="col-lg-4 text-center">
						<h4 class="box-title knob_year" style="margin-bottom: 15px; margin-top: 15px;">2017년</h4>
						<div class="knob-wrap">
							<input class="knob" data-width="150" data-height="150" data-bgColor="#ebeff2" data-fgColor="#00aeff" data-readOnly=true data-thickness=".4" value="30"  />
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