<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<div class="col-lg-4 col-md-6 col-xs-12">

 	                <div class="box-content detailexp" style="left: 523px;">
					<h3 class="box-title">${vo.cname }</h3>
					<h5 class="box-title">${vo.bank } | ${vo.card }</h5>
					<table class="table table-striped">
						
							<tr>
							 <td colspan="2">
							  <img src="${vo.poster }" width="200" height="120" style="margin-left: 110px">
							 </td>
							</tr> 
							<tr>
							<th colspan="2" class="text-center">${vo.ccontent }</th>
					        </tr>
							  <tr> 
							 <th>«˝≈√¡§∫∏</th>
							 <td>${vo.benefit }</td>
					        </tr>
					</table>
			</div>

 </div>
</body>
</html>