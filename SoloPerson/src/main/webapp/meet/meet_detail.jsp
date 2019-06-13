<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../assets/fonts/themify-icons/themify-icons.css">


<style type="text/css">
.subtitle{
	font-size: 20px;
	color: #a8a8a8;	
	margin-top: 200px;
}
.box-contact .job{
	font-size: 30px;
	color: black;	
}
.box-contact .avatar{
	width: 300px;
	height: 300px;
}

.text-muted{
	width: 35%;
	margin: auto;
	margin-bottom: 30px;
	font-size: 18px;
}

#h{
	width: 100px;
}
</style>
</head>
<body>
	<div class="row small-spacing">
		<div class="col-lg-8">
			<div class="box-contact">
				<img src="${vo.thumbnail }" alt="" class="avatar">
				<h4 class="subtitle">${vo.subtitle }</h4>
				<h3 class="name job">${vo.title }</h3> 
				
				<!-- /.job -->
				<div class="text-muted">
					<table>
					
						<tr class="information">
							<td colspan="2">
								<table>
									<tbody>
										<tr>											
											<td class="text-right">
												<i class="fa fa-star text-warning"></i> 평점
											</td>
											<td class="text-left" style="padding-left: 50px;">
												${vo.rate}
											</td>
										</tr>
										<tr>											
											<td class="text-right">
												<span class="ico ti-money"></span> 가격
											</td>
											<td class="text-left" style="padding-left: 50px;">
												${vo.price}
											</td>
										</tr>
										<tr>											
											<td class="text-right">
												<span class="ico ti-location-pin"></span> 위치
											</td>
											<td class="text-left" style="padding-left: 50px;">
												${vo.loc}
											</td>
										</tr>
										<tr>											
											<td class="text-right">
												<span class="ico ti-user"></span> HOST
											</td>
											<td class="text-left" style="padding-left: 50px;">
												${vo.host}
											</td>
										</tr>
									</tbody>										
								</table>
							</td>
						</tr>
					</table>	
				</div>
				
				<div class="text-muted" style="width: 70%;">
					<c:forEach var="content" items="${fn:split(vo.content, ', ') }">
   						<p><img src="${fn:replace(content,'\'','')}"></p>   		 				
					</c:forEach>
				</div>
				
				<div class="invoice-box">						
					<h4 class="box-title text-info text-left">후기</h4>	
					
					<div class="box-content card white">
						<h4 class="box-title">후기 작성</h4>
						<!-- /.box-title -->
						<div class="card-content">
							<form class="form-horizontal" method="post" action="replyInsert.do">
								<div class="form-group">
									<label for="inp-type-1" class="col-sm-3 control-label" id="h">이름</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="name">
										<input type=hidden name=rno value="${vo.mno }">
									</div>
								</div>
								<div class="form-group">
									<label for="inp-type-5" class="col-sm-3 control-label" id="h">내용</label>
									<div class="col-sm-9">
										<textarea class="form-control" name="msg"></textarea>
									</div>
								</div>
								<div class="form-group">
									<input type=submit value="OK" class="btn btn-sm btn-primary">
				                </div>
							</form>							
						</div>
						<!-- /.card-content -->
					</div>
					<hr>
					<!-- /.box-content card white -->
					
					<c:forEach var="rvo" items="${rList }">
						<div class="box-content text-left">											
							<div class="task-lists">
								<div class="title"><span style="color: blue;">${rvo.name }</span> [${rvo.db_day }]</div>	
								<br>							
								<div class="content"><pre>${rvo.msg }</pre></div>								
							</div>						
						</div>
					</c:forEach>
					<!-- /.box-content -->					
					
				</div>
			</div>
		</div>	
		
		<div class="col-lg-4">
			<div class="box-contact">
				<h3>신청</h3>
				
			</div>
		</div>	
	</div>	
	
</body>


</html>