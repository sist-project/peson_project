<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
</style>
</head>
<body>
	<div class="row small-spacing">
		<div class="col-lg-8">
			<div class="box-contact">
				<img src="${vo.img }" alt="" class="avatar">
				<h4 class="subtitle">${vo.cname }</h4>
				<h3 class="name job">${vo.cprice }</h3> 
				
				<!-- /.job -->
				<div class="text-muted">
				
					<table>
						<tr class="information">
							<td colspan="2">
								<table>
									<tr>
										<td class="text-left">
											<i class="fa fa-star text-warning"></i>평점<br>
											가격<br>
										
										</td>
										
										<td class="text-left" style="padding-left: 100px;">
											${vo.ccontent }<br>
										
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
	
					
				</div>
	
			</div>
		</div>	
		
	
	</div>	
</body>
</html>