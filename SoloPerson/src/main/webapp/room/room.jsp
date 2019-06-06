<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div.thead > img{
	height: 100%;
}

div.box-contact > img.cate_img {
	border-radius: 0%;
	top: 7px;
}
.small-spacing div.cate_container{
	padding: 60px 20px 60px 20px;
	margin-top: 10px;
}    
</style>
</head>
<body>
	<div class="row small-spacing">
		<c:forEach begin="1" end="12">
			<div class="col-lg-2 col-md-6">
				<div class="box-contact cate_container">
					<img
						src="//app-storage-008.cafe24.com/bannermanage2/oneroommake/2019/05/20/040a0a402b278a9dd505a7c5112c37ab.gif"
						class="avatar cate_img">
				</div>
				<!-- /.box-contact -->
			</div>
		</c:forEach>
	</div>

	<div class="pricing-plan">
		<div class="pricing-table">
			<div class="col col-first">
				<div class="thead">
					<div class="center-v">TOP 5</div>
				</div>
				<div class="td">상품명</div>
				<div class="td">가격</div>
				<div class="td">배송비</div>
				<div class="td">설명</div>
				<div class="td">옵션</div>
				<div class="td"></div>
			</div>
			<c:forEach begin="1" end="5">
				<div class="col">
					<div class="thead bg-info">
						
							<img src="//oneroommaking.com/web/product/big/201808/cd5e4f117651ef94d61c6bf03204e3e5.jpg">
						
					</div>
					<div class="td">모노 폴딩 테이블</div>
					<div class="td">
						8900원
					</div>
					<div class="td">
						2500원
					</div>
					<div class="td">모서리에 안 긁혀서 다행이다</div>
					<div class="td">
						<i class="fa fa-times"></i>
					</div>
					<div class="td">
						<a href="#" class="btn-order js__popup_open"
							data-target="#register-form-popup-2">ORDER NOW</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- /.pricing-plan -->

</body>
</html>