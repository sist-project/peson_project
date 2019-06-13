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
					<div class="text-right">
						<button type="button" class="btn btn-default waves-effect waves-light" data-toggle="modal" data-target="#addTask">+ Add New</button>
					</div>
					
					<c:forEach var="rvo" items="${rList }">
						<div class="box-content">											
							<div class="task-lists">				
								<div class="title">${rvo.no }</div>				
								<div class="title">${rvo.name }</div>
								<div class="title">${rvo.db_day }</div>
								<div class="title">${rvo.msg }</div>								
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