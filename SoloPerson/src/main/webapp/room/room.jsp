<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function() {
	$('div.cate_container').click(function() {
		var cateno = $(this).attr('cateno');
		$.ajax({
			type : 'post',
			url : 'topfive.do',
			data : {'cateno' : cateno},
			success : function(res) {
				$(".pricing-plan").html(res);		
				//$('.pricing-plan').load("topFive.jsp");
			}		
		});
	});
});
</script>
<style type="text/css">
.col-five > div.thead, #top5{
	height: 200px;
}

div.thead > img {
	height: 100%;
}

div.box-contact > img.cate_img {
	border-radius: 0%;
	top: 7px;
}

.small-spacing div.cate_container {
	padding: 60px 20px 60px 20px;
	margin-top: 10px;
}
div.td.option{
	overflow: auto;
	height: 200px;
}

.option ul{
	list-style: none;
	text-align: left;
	vertical-align: center;
}

.col-five:nth-child(2) > .thead{
 background-color: #CABB9C;
}

.col-five:nth-child(3) > .thead{
 background-color: #0BA29A;
}

.col-five:nth-child(4) > .thead{
 background-color: #0B41AC;
}

.col-five:nth-child(5) > .thead{
 background-color: #F2E55B;
}

.col-five:nth-child(6) > .thead{
 background-color: #F6A0A0;
}
</style>
</head>
<body>
	<div class="row small-spacing">
		<c:forEach var="vo" items="${cateList}">
			<div class="col-lg-2 col-md-6">
				<div class="box-contact cate_container" cateno="${vo.cateno}">
					<img src="${vo.cateimg}" class="avatar cate_img">
				</div>
				<!-- /.box-contact -->
			</div>
		</c:forEach>
	</div>

	<div class="pricing-plan">
		
	</div>
	<!-- /.pricing-plan -->

</body>
</html>