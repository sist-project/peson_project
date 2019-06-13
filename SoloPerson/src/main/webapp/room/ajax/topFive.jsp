<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="pricing-table">
		<div class="col col-first">
			<div class="thead" id="top5">
				<div class="center-v">TOP 5</div>
			</div>
			<div class="td pname">상품명</div>
			<div class="td">가격</div>
			<div class="td">배송비</div>
			<div class="td option">옵션</div>
			<div class="td">주문</div>
		</div>
		<c:forEach var="vo" items="${fList}">
			<div class="col col-five">
				<div class="thead">
					<img src="${vo.productimg}">
				</div>
				<div class="td pname">
					<ul>
						<li class="text-purple"><b>${vo.productname}</b></li>
						<li>${vo.content}</li>
					</ul>
				</div>
				<div class="td">
					<del>${vo.retailprice }</del>
					 <span class="text-danger">${vo.saleprice }</span>
				</div>
				<div class="td">
					${vo.shippingfee }
				</div>
				<div class="td option">
					<c:if test="${vo.option_select eq null && vo.option_color eq null }">
						<i class="fa fa-times"></i>
					</c:if>
					<c:if test="${vo.option_select ne null && vo.option_color eq null}">
						<ul>
							<c:forEach items="${fn:split(vo.option_select, '/') }" var="item">
	    						<li>${item}</li>
							</c:forEach>
						</ul>
					</c:if>
					<c:if test="${vo.option_select eq null && vo.option_color ne null}">	
						<ul>
							<c:forEach items="${fn:split(vo.option_color, '/') }" var="item">
	    						<li>${item}</li>
							</c:forEach>
						</ul>
					</c:if>

				</div>
				<div class="td">
					<a href="${vo.link}" target="_blank" class="btn-order js__popup_open"
						data-target="#register-form-popup-2">ORDER NOW</a>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>