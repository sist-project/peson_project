<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
$(function() {
	$("#backBtn").click(function() {
		location.href="main.do";
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
</style>
</head>
<body>
<div class='row row1'>
	<button id="backBtn" class='btn btn-rounded btn-bordered btn-xs waves-effect waves-light'>Back</button>
</div>
<img src="../assets/images/main/${mapName }.png" usemap="#${id }">
</body>
</html>