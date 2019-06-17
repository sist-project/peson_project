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
							<td class="text-center" colspan="2">
							<a href="${vo.apply }" target="_blank"> <input type="button" value="카드 신청" class="btn btn-sm btn-primary"></a>
							</td>
							</tr>
							<tr> 
							 <th>연회비</th>
							 <td>${vo.cost }</td>
					        </tr>
					        <tr> 
							 <th>통합한도</th>
							 <td>${vo.limit }</td>
					        </tr>
					         <tr> 
							 <th>특별서비스</th>
							 <td>${vo.sservice }</td>
							 </tr>
							  <tr> 
							 <th>혜택정보</th>
							 <td>${vo.benefit }</td>
					        </tr>
					       <tr>
					        <td>
					         <input type="button" value="목록" onclick="javascript:history.back()" class="btn btn-sm btn-danger">
					        </td>
					       </tr>
					</table>
			</div>

 </div>
</body>
</html>