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
		$('#rpl_insert').click(function() {

			var rpl_name = $('.rpl_name').val();
			var rpl_pwd = $('.rpl_pwd').val();
			var rpl_content = $('.rpl_content').val();
			var pno = $('#replyPno').val();

			$.ajax({
				type : 'post',
				url : 'room_replyInsert.do',
				data : {
					'name' : rpl_name,
					'pwd' : rpl_pwd,
					'content' : rpl_content,
					'pno' : pno
				},
				success : function(res) {
					$("#replyPrint").html(res);

					$('#replyPno').val(pno);
				}
			});
		});
	});
</script>
</head>
<body>
	<hr>
	<!-- 댓글 -->
	<div class="invoice-box">
		<div class="input-group margin-bottom-20">

			<div class="input-group-btn">
				<label for="ig-1" class="btn btn-default"> <i
					class="fa fa-user"></i>
				</label>
			</div>
			<input id="ig-1" type="text" class="form-control rpl_name"
				placeholder="name">

			<div class="input-group-btn">
				<label for="ig-1" class="btn btn-default"> <i
					class="fa fa-key"></i>
				</label>
			</div>

			<input type="password" class="form-control rpl_pwd"
				id="inputPassword3" placeholder="password">
		</div>
		<textarea class="form-control rpl_content" id="inp-type-5"
			placeholder="댓글 달기"></textarea>
		<div class="text-center">
			<hr>
			<button class="btn btn-sm btn-danger" id="rpl_insert">댓글 등록</button>
		</div>
		<input type="hidden" name="pno" value="" id="replyPno">

		<hr>

		<div class="row small-spacing">
			<c:forEach var="vo" items="${rList}">
				<div class="col-lg-6 col-md-6 rpl_list">
					<div class="box-contact reply_box">
						<h4 class="job reply_name">${vo.name}</h4>
						<div class="text-muted">
							<p class="margin-bottom-20 reply_cont">${vo.content}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>
</body>
</html>