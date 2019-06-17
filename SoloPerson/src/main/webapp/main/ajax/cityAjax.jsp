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
		var $this2016 = $(this).attr("year2016");
		var $this2017 = $(this).attr("year2017");
		
		$.ajax({
			url : "graphAjax.do",
			type : "post",
			data : {"year2016":$this2016, "year2017":$this2017, "gu":$thisId},
			success : function(res) {
				$("#printGraph").html(res);
			}
	
		});
		
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
	<div class="row">
		<div class="row">
			<div class="col-lg-6">
				<i class="fa fa-pie-chart"><span class="box-title">&nbsp;&nbsp;시/도별 비율 분포(${siName })</span></i>
				<span class="box-title" style="position: relative; left: 450px;">단위(%)</span>
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
			<div class="row" id="printGraph">
				<div class="col-lg-4 text-center">
					<h4 class="box-title knob_year" style="margin-bottom: 15px;">2016년(전국)</h4>
					<div class="knob-wrap">
						<input class="knob" data-width="150" data-height="150" data-bgColor="#ebeff2" data-fgColor="#ff8acc" data-readOnly=true data-thickness=".4" value="28"  />		
					</div>
				</div>
				<div class="col-lg-4 text-center">
					<h4 class="box-title knob_year" style="margin-bottom: 15px; margin-top: 15px;">2017년(전국)</h4>
					<div class="knob-wrap">
						<input class="knob" data-width="150" data-height="150" data-bgColor="#ebeff2" data-fgColor="#00aeff" data-readOnly=true data-thickness=".4" value="29"  />
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../assets/plugin/knob/jquery.knob.min.js"></script>
	<script src="../assets/scripts/jquery.knob.init.min.js"></script>
</body>
</html>