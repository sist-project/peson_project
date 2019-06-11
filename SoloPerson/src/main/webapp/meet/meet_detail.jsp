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
				<img src="${vo.thumbnail }" alt="" class="avatar">
				<h4 class="subtitle">${vo.subtitle }</h4>
				<h3 class="name job">${vo.title }</h3> 
				
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
											위치<br>
											HOST
										</td>
										
										<td class="text-left" style="padding-left: 100px;">
											${vo.rate }<br>
											${vo.price }<br>
											${vo.loc }<br>
											${vo.host }
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
						<%-- <table>
						
							<tr class="information">
								<td colspan="2">
									<table>
										<tbody>
											<tr>											
												<td>
													<i class="fa fa-star text-warning"></i>평점
												</td>
												<td>
													${vo.rate}<br>
													${vo.loc }
												</td>
											</tr>
										</tbody>
										
									</table>
								</td>
							</tr>
						</table> --%>							
					
					
				</div>
				
				<div class="invoice-box">
					<div class="comment">				
						<h3>댓글</h3>
					</div>
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