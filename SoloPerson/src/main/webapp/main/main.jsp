<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
$(function() { 
	// 시도별 비율 분포
	$(".sidoArea").click(function() {
		var $thisId = $(this).attr("id");
		var $thisSi = $(this).attr("si");
		
		$.ajax({
			url : "cityAjax.do",
			type : "post",
			data : {"id":$thisId, "siName":$thisSi},
			success : function(res) {
				$("#sidoPrint").html(res);
			}
	
		});
		
	});
	
	// 성별 차트 버튼
	$("#refreshBtn").click(function() {
		$.ajax({
			url : "genderAjax.do",
			type : "post",
			success : function(res) {
				$("#genderPrint").html(res);
			}
			
		});
	});
	

	// 소비 지출 버튼
	$("#nextBtn").click(function() {
		
		$.ajax({
			url : "consumptionAjax.do",
			type : "post",
			success : function(res) {
				$("#consumptionPrint").html(res);
			}
			
		});
	});
	
});

//성별 비율 분포
!function(e) {
	"use strict";
	var a, r = {};
	e(document)
			.ready(
					function() {
						return e("#bar-morris-chart").length && r.bar.init()	
					}), e(window).on(
			"resize",
			function() {
				return e("#bar-morris-chart").length && r.bar.update()			
			}), r = {
			
		bar : {
			graph : null,
			data : <%=request.getAttribute("json1")%>,
			init : function() {
				return Morris.Bar({
					element : "bar-morris-chart",
					behaveLikeLine : !0,
					data : r.bar.data,
					barColors : [ "#fcb03b", "#ea65a2", "#566FC9" ],
					xkey : "age",
					ykeys : [ "total", "female", "male" ],
					labels : [ "총합", "여자", "남자" ]
				}), !1
			},
			update : function() {
				return r.bar.graph.setData(r.bar.data), !1
			}
		}
	}
}(jQuery);

!function(e) {
	"use strict";
	var t = {};
	e(document).ready(
			function() {
				return e("#bar-chartjs-chart").length && t.bar("bar-chartjs-chart", "top", "bar"),
						e("#horizontal-bar-chartjs-chart").length && t.bar("horizontal-bar-chartjs-chart","right", "horizontalBar"),
						e("#line-chartjs-chart").length && t.line("line-chartjs-chart", !1),
						e("#area-chartjs-chart").length && t.line("area-chartjs-chart", !0),
						e("#pie-chartjs-chart").length && t.pie("pie-chartjs-chart", "pie"),
						e("#donut-chartjs-chart").length && t.pie("donut-chartjs-chart", "doughnut"),
						e("#polar-chartjs-chart").length && t.polar("polar-chartjs-chart"),
						e("#radar-chartjs-chart").length && t.radar("radar-chartjs-chart"), !1
			}), t = {

		pie : function(e, t) {
			var i = document.getElementById(e).getContext("2d"), o = {
				type : t,
				data : {
					datasets : [{
						data : <%=request.getAttribute("json2")%>,
						backgroundColor : <%=request.getAttribute("colorJson")%>,
						hoverBackgroundColor : <%=request.getAttribute("colorJson")%>,
						hoverBorderColor : "#fff"
					}],
					labels : <%=request.getAttribute("arrLabel") %>
				},
				options : {
					responsive : !0
				}
			};
			return new Chart(i, o), !1
		}
	}
}(jQuery);

</script>
<style type="text/css">
#sidoPrint {
	width: 450px;
	height: 500px;
}
#bar-morris-chart {
	height: 335px;
}
    
</style>
</head>
<body>
	<div class="row small-spacing">
		<div class="col-lg-6 col-md-12">
			<div class="box-content">
				<div class="row">
					<div class="col-lg-6">
						<i class="fa fa-pie-chart"><span class="box-title">&nbsp;&nbsp;시/도별 비율 분포(${siName })</span></i>
						<span class="box-title" style="position: relative; left: 500px;">단위(%)</span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4" id="sidoPrint">
						<img src="../assets/images/main/south_korea.jpg" width="300" usemap="#koreaMap">
						<map name="koreaMap" id="koreaMap">
							<area id="seoul" si="서울특별시" class="sidoArea" shape="rect" coords="79,85,97,105">
							<area id="incheon" si="인천광역시" class="sidoArea" shape="rect" coords="60,95,77,115">
							<area id="gyeonggi" si="경기도" class="sidoArea" shape="rect" coords="83,118,104,138">
							<area id="gangwon" si="강원도" class="sidoArea" shape="rect" coords="186,51,206,74">
							<area id="chungcheongbukdo" si="충청북도" class="sidoArea" class="sidoArea" shape="rect" coords="143,138,160,160">
							<area id="chungcheongnamdo" si="충청남도" class="sidoArea" shape="rect" coords="52,168,71,190">
							<area id="sejong" si="세종특별자치시" class="sidoArea" shape="rect" coords="109,184,126,203">
							<area id="daejeon" si="대전광역시" class="sidoArea" shape="rect" coords="111,206,129,227">
							<area id="gyeongsangbukdo" si="경상북도" class="sidoArea" shape="rect" coords="212,179,230,200">
							<area id="gyeongsangnamdo" si="경상남도" class="sidoArea" shape="rect" coords="165,298,180,320">
							<area id="daegu" si="대구광역시" class="sidoArea" shape="rect" coords="212,249,229,266">
							<area id="ulsan" si="울산광역시" class="sidoArea" shape="rect" coords="253,275,270,297">
							<area id="busan" si="부산광역시" class="sidoArea" shape="rect" coords="234,348,251,269">
							<area id="jeollabukdo" si="전라북도" class="sidoArea" shape="rect" coords="77,259,91,279">
							<area id="jeollanamdo" si="전라남도" class="sidoArea" shape="rect" coords="47,340,64,359">
							<area id="gwangju" si="광주광역시" class="sidoArea" shape="rect" coords="67,314,82,332">
							<area id="jeju" si="제주도" class="sidoArea" shape="rect" coords="48,434,65,456">
						</map>									
					</div>
					<div class="col-lg-4 text-center">
						<h4 class="box-title knob_year" style="margin-bottom: 15px;">2016년(${guName })</h4>
						<div class="knob-wrap">
							<input class="knob" data-width="150" data-height="150" data-bgColor="#ebeff2" data-fgColor="#ff8acc" data-readOnly=true data-thickness=".4" value="${get2016 }"  />		
						</div>
					</div>
					<div class="col-lg-4 text-center">
						<h4 class="box-title knob_year" style="margin-bottom: 15px; margin-top: 15px;">2017년(${guName })</h4>
						<div class="knob-wrap">
							<input class="knob" data-width="150" data-height="150" data-bgColor="#ebeff2" data-fgColor="#00aeff" data-readOnly=true data-thickness=".4" value="${get2017 }"  />
						</div>
					</div>						
				</div>
			</div>
		</div> 
		<!-- /.col-lg-6 col-xs-12 -->	
		<div class="col-lg-6 col-md-12">
			<div class="box-content">
				<i class="fa fa-credit-card" aria-hidden="true">
				<span class="box-title">&nbsp;&nbsp;1인 가구 소비 지출</span>
				<span class="box-title" style="position: relative; left: 500px;">단위(원)
					<button id="nextBtn" class="btn btn-circle btn-xs waves-effect waves-light fa fa-refresh"></button>				
				</span>
				</i>
				<!-- /.box-title -->
					<!-- /.dropdown js__dropdown -->
				<div id="consumptionPrint" class="row">
					<span class="box-title" style="position: relative; left: 60px;">(${consumptionName })</span>
					<canvas id="pie-chartjs-chart" class="chartjs-chart" width="480" height="320"></canvas>
				</div>
				</div>
			<!-- /.box-content -->		
		</div>

		<div class="col-lg-12">
			<div class="box-content">
					<i class="fa fa-bar-chart-o">
						<span class="box-title">&nbsp;&nbsp;1인 가구 성별 차트</span>
					</i>
						<span class="box-title" style="position: relative; left: 1270px;">단위(명)
							<button id="refreshBtn" class="btn btn-circle btn-xs waves-effect waves-light fa fa-refresh"></button>	
						</span>
					<!-- /.box-title -->		
					<!-- /.dropdown js__dropdown -->
					<div id="genderPrint" class="row">
						<div id="bar-morris-chart" class="morris-chart"></div>
						<span class="box-title" style="position: relative; left: 750px;">&nbsp;&nbsp;${sidoName }</span>
					</div>
					<div class="text-center">
						<ul class="list-inline morris-chart-detail-list">
							<li><i class="fa fa-circle"></i>Total</li>
							<li><i class="fa fa-circle"></i>Female</li>
							<li><i class="fa fa-circle"></i>Male</li>	
						</ul>
					</div>
					<!-- /#bar-morris-chart.morris-chart -->
				</div>
				<!-- /.box-content -->
		</div>
		<!-- /.col-lg-6 col-xs-12 -->
	</div>
	<!-- /.row -->

</body>

</html>