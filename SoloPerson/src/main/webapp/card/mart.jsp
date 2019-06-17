<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#detailBtn{
 float: left;
}
</style>

</head>
<body>
								  <img src="mart.jpg" width="800" height="400" style="margin-left: 130px;margin-bottom: 30px;height: 400px;">
								  <br>
								  <img src="2.png" width="60" height="60" style="margin-left: 130px;">
								 <p class="description_3vlJb forHtml_33E6a" style="margin-left: 200px;">
								 
								 <br>
								 <b style="font-size:large;">매달</b>
								  편의점에서 얼마나 쓰시나요? 편의점의 경우, <br>
								  한 번에 결제하는 금액이 크지 않기 때문에 대수롭지 않게 여기기 쉽지만, <br>
								  자주 이용하는 만큼 쌓이면 꽤 많은 금액이 되곤 하지요. 그렇다고 필요한 걸 안 살 수도 없고, 정말 난감합니다. <br>
								  이러한 고민을 해결하기 위해 편의점 할인을 알차게 챙겨주는 카드를 엄선해보았습니다.
								 <br>
								
								 </p> 	
								 			
				                    <img src="3.png" width="60" height="60" style="margin-left: 860px;">
				              			
				              			<div class="col-md-10 col-xs-12">
				              			<c:forEach var="vo" items="${cardMartList }">
				              				<div class="col-lg-6 col-md-6 col-xs-12"
								style="top: 30px; float: left;">
								<div class="box-content card bordered-all danger js__card"
									style="height: 270px;">
									<h4 class="box-title bg-danger with-control">
										${vo.ccontent }</h4>
									<!-- /.box-title -->
									<div class="card-content js__card_content">
										<div style="margin-top: 10px">
											<img src="${vo.poster }"
												style="width: 200px; float: left; height: 145px;">
										</div>
										<div>
											<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${vo.cname }</h4>
											<br>
											<h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${vo.card }</h6>
											<h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${vo.cost }</h6>
										</div>
										<div>
											<input type="hidden" id="cno" value="${vo.cno }">
											<a href="detail.do?cno=${vo.cno }" target="_blank"><button type="button"
												class="btn btn-sm btn-danger btn-rounded waves-effect waves-light detailBtn"
												id="detailBtn" style="left: 10px; top: 5px;"
												onclick="btn_click()">상세보기</button></a>
											<a href="${vo.apply }" target="_blank"><button
													type="button"
													class="btn btn-sm btn-primary btn-rounded waves-effect waves-light"
													style="left: 20px; top: 5px;">카드신청</button></a>
										</div>
									</div>
								</div>
								<!-- /.box-content -->
								<p>${vo.scontent }</p>
							</div>      
				               				
							</c:forEach>
							</div>
				
			
</body>
</html>