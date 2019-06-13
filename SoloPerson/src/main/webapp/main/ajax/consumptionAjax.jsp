<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
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
</head>
<body>
	<span class="box-title" style="position: relative; left: 60px;">(${consumptionName })</span>
	<canvas id="pie-chartjs-chart" class="chartjs-chart" width="480" height="320"></canvas>
</body>
</html>