<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-lg-4 text-center">
		<h4 class="box-title knob_year" style="margin-bottom: 15px;">2016년(${guName })</h4>
		<div class="knob-wrap">
			<input class="knob" data-width="150" data-height="150"
				data-bgColor="#ebeff2" data-fgColor="#ff8acc" data-readOnly=true
				data-thickness=".4" value="${get2016 }" />
		</div>
	</div>
	<div class="col-lg-4 text-center">
		<h4 class="box-title knob_year"
			style="margin-bottom: 15px; margin-top: 15px;">2017년(${guName })</h4>
		<div class="knob-wrap">
			<input class="knob" data-width="150" data-height="150"
				data-bgColor="#ebeff2" data-fgColor="#00aeff" data-readOnly=true
				data-thickness=".4" value="${get2017 }" />
		</div>
	</div>
	<script src="../assets/plugin/knob/jquery.knob.min.js"></script>
	<script src="../assets/scripts/jquery.knob.init.min.js"></script>
</body>
</html>