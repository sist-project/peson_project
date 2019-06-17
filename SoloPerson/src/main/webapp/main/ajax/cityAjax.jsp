<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
<script type="text/javascript">
$(function() {
	// 뒤로 가기 버튼
	$("#backBtn").click(function() {
		location.href="main.do";
	});
	
	
	// 해당 시/구 인원분포 비율	
	$(".sidoArea").click(function() {
		var $thisId = $(this).attr("id");
		var $this2016 = parseInt($(this).attr("year2016"));
		var $this2017 = parseInt($(this).attr("year2017"));
		
		alert(typeof $this2016);
				
		$(".year2016").val($this2016);
		$(".year2017").val($this2017);
		
		console.log(typeof $this2016);
		
	});
	
});
</script>
<style type="text/css">
#backBtn {
	position: relative; 
	left: 300px;
}
.row1 {
	margin-bottom: 30px;
}
#print {
	width: 450px;
	height: 500px;
}
.knob {
width: 79px;
    height: 50px;
    position: absolute;
    vertical-align: middle;
    margin-top: 50px;
    margin-left: -114px;
    border: 0px;
    background: none;
    font: bold 30px Arial;
    text-align: center;
    color: rgb(255, 138, 204);
    padding: 0px;
    -webkit-appearance: none;
}

</style>
</head>
<body>
	<div class="row" id="sidoPrint">
		<div class="row">
			<div class="col-lg-6">
				<i class="fa fa-pie-chart"><span class="box-title">&nbsp;&nbsp;시/도별 비율 분포(${siName })</span></i>
				<span class="box-title" style="position: relative; left: 500px;">단위(%)</span>
			</div>
		</div>
		<div class='row row1'>
			<button id="backBtn" class='btn btn-rounded btn-bordered btn-xs waves-effect waves-light'>Back</button>
		</div>
		<div class="row">
			<div class="col-lg-4" id="print">
				<img src="../assets/images/main/${mapName }.png" usemap="#${mapName }">
				<map name="${mapName }" id="${mapName }">
					<c:forEach	var="list" items="${jsonList }">
						<area id="${list.id }" class="sidoArea" shape="rect" coords="${list.coords }" year2016="${list.year2016 }" year2017="${list.year2017 }">
					</c:forEach>
				</map>
			</div>
			
			<div class="col-lg-3">
				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico fa fa-users text-primary"></i>
						<h2 class="counter text-primary">283</h2>
						<p class="text">Some text here</p>
					</div>
				</div>
			</div>	
			<div class="col-lg-3 col-md-6 col-xs-12">
				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico fa fa-users text-primary"></i>
						<h2 class="counter text-primary">283</h2>
						<p class="text">Some text here</p>
					</div>
				</div>
				<!-- /.box-content -->
			</div>
		</div>
	</div>
	<script src="../assets/plugin/knob/jquery.knob.min.js"></script>
	<script src="../assets/scripts/jquery.knob.init.min.js"></script>
</body>
</html>