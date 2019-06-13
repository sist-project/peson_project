<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
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
</script>
</head>
<body>
	<div id="bar-morris-chart" class="morris-chart"></div>
	<span class="box-title" style="position: relative; left: 750px;">&nbsp;&nbsp;${sidoName }</span>
</body>
</html>