<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.detail_link, .detail_link:hover{
text-decoration:none;
color:black;
cursor: pointer;
}
</style>
</head>
<body>
	<!-- 리스트 -->
	
		<div class="box-content"> 
			<c:if test="${count!=null }">
				<a href="meet_main.do?pageName=meet">전체목록</a>
				<h4 class="text-right">검색결과 : ${count } 개</h4>
			</c:if>
			
			<c:forEach var="vo" items="${list }">
				<div class="col-xs-4">
					<div class="box-content bordered primary margin-bottom-20">
						<a class="detail_link" href="meet_detail.do?pageName=meet&mno=${vo.mno }">
							<div class="profile-avatar" style="height: 300px;">							
								<img src="${vo.thumbnail }" alt="">				
								<h4><strong>${vo.title }</strong></h4>
								<h6>${vo.subtitle }</h6>							
							</div>	
						</a>						
						<table class="table table-hover no-margin">
							<tbody>								
								<tr>
									<td colspan="2">
										<i class="fa fa-star text-warning"></i>${vo.rate }
										<i class="fa fa-comment-o ico"></i> ${vo.rcount }
									</td>
								</tr>
								<tr>						
									<td colspan="2">
										<fmt:formatNumber value="${vo.price }" pattern="#,###" /> 원
									</td>
								</tr>
							</tbody>
						</table>
					</div>				
				</div>
			</c:forEach>
			
			
			<!-- 페이징 -->
			<c:if test="${count==null }">				
				<div class="col-xs-12 text-center paging">
					<ul class="pagination pagination-lg">
						<c:if test="${curpage>BLOCK }">
							<li>
							  	<a href="meet_main.do?pageName=meet&page=1">&lt&lt</a>
							</li>
							<li>
								<a href="meet_main.do?pageName=meet&page=${page-1 }">&lt</a>
							</li>
						</c:if>				
						
					    <c:forEach var="i" begin="${startPage }" end="${endPage }">
							<c:choose>
								<c:when test="${curpage eq i }">
									<c:set var="type" value="class=active"></c:set>
								</c:when>
								<c:otherwise>
									<c:set var="type" value=""></c:set>
								</c:otherwise>
							</c:choose>
							<li ${type }><a href="meet_main.do?pageName=meet&page=${i }">${i }</a></li>
						</c:forEach>
					    
					    <c:if test="${endPage<allPage }">
							<li>
								<a href="meet_main.do?pageName=meet&page=${endPage+1 }">&gt</a>
							</li>
							<li>
								<a href="meet_main.do?pageName=meet&page=${allPage}">&gt&gt</a>
							</li>
						</c:if>					    
					</ul>
				</div>
			</c:if>
		</div>
	
</body>
</html>