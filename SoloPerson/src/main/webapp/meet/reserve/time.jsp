<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- chart -->
<link rel='stylesheet' href='https://cdn.jsdelivr.net/jquery.easy-pie-chart/1.0.1/jquery.easy-pie-chart.css'>

<style type="text/css">
.times, .times:hover{
cursor: pointer;
}
</style>

<script type="text/javascript">
$(function(){
	$('.times').click(function(){
		var time=$(this).text();
		$("#ftime").text(time);
		
		$("#ok").show();
		
		
		var title=$('#fname').text();
		var day=$('#fday').text();
		var time=$('#ftime').text();
		
		$('#t').attr("value",title);
		$('#r').attr("value",day);
		$('#ti').attr("value",time);
	});
	
});

</script>
</head>
<body>
	<table class="table">
		<h4>시간 정보</h4>
		<c:forEach var="vo" items="${list }">
			<tr>
				<td class="text-center times">${vo }</td>
			</tr>
			
		</c:forEach>
		<tr>
			
						
		</tr>
	</table>
	
	
	
</body>
</html>