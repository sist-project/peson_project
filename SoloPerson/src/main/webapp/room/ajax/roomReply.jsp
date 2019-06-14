<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<!-- 댓글 -->
	<div class="invoice-box">
		<form method="post" action="room_replyInsert.do">
			<div class="input-group margin-bottom-20">
				
					<div class="input-group-btn">
						<label for="ig-1" class="btn btn-default"><i
							class="fa fa-user"></i> 
						</label>
					</div>
					<input id="ig-1" type="text" class="form-control" placeholder="name" name="name">
	
					<div class="input-group-btn">
						<label for="ig-1" class="btn btn-default">
							<i class="fa fa-key"></i>
						</label>
					</div>
					
					<input type="password" class="form-control" id="inputPassword3" placeholder="password" name="pwd">
			</div>
				<textarea class="form-control" id="inp-type-5" placeholder="댓글 달기" name="content"></textarea>
				<input type="submit" class="btn btn-sm btn-danger" value="댓글">
				<input type="hidden" name="pno" value="" id="replyPno">
				
		</form>
		<hr>

		<div class="row small-spacing">
			<c:forEach var="vo" items="${rList}">
				<div class="col-lg-6 col-md-6">
					<div class="box-contact">
						<h4 class="job">${vo.name}</h4>
						<div class="text-muted">
							<p class="margin-bottom-20">${vo.content}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>
</body>
</html>