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
								  <img src="shopping.jpg" width="800" height="400" style="margin-left: 130px;margin-bottom: 30px;height: 400px;">
								  <br>
								  <img src="2.png" width="60" height="60" style="margin-left: 130px;">
								 <p class="description_3vlJb forHtml_33E6a" style="margin-left: 200px;">
								 
								 <br>
								 <b style="font-size:large;">요즘</b>
								 정말 많은 분들이 온라인 쇼핑을 이용하고 계신데요.  <br>
								 혹시 이런 경험 있으신가요?  <br>
								 알뜰하게 초저가 상품만 샀는데, 나중에 청구서를 보니 10만원, 20만원이 훌쩍 넘어있는..!  <br>
								 이러면 안된다고 반성해보지만 ... 다음 달이 되면 또 똑같죠! 이런 상황의 무한루프!  <br>
								 이런 분들을 위해 뱅크샐러드가 오픈마켓과 쇼셜커머스에서 알뜰하게 할인 받을 수 있는 카드들을 정리해봤어요
								 <br>
								
								 </p> 				
				                    <img src="3.png" width="60" height="60" style="margin-left: 860px;">
				                    
				                 
				                 			<div class="col-md-10 col-xs-12">
				                 			<c:forEach var="vo" items="${cardShoppingtList }">
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
												id="detailBtn" style="left: 10px; top: 5px;">상세보기</button></a>
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