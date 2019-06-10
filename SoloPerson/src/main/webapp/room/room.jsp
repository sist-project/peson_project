<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$('div.box-contact > img.cate_img').click(function() {
		var cateno = this.val();
		alert(cateno);
	});
});
</script>
<style type="text/css">
div.thead>img {
	height: 100%;
}

div.box-contact>img.cate_img {
	border-radius: 0%;
	top: 7px;
}

.small-spacing div.cate_container {
	padding: 60px 20px 60px 20px;
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="row small-spacing">
		<c:forEach var="vo" items="${cateList}">
			<div class="col-lg-2 col-md-6">
				<div class="box-contact cate_container">
					<img src="${vo.cateimg}" class="avatar cate_img" value="${vo.cateno}">
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