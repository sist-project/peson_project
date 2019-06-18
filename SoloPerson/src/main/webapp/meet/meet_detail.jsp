<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../assets/fonts/themify-icons/themify-icons.css">
<link rel="stylesheet" href="../assets/fonts/fontello/fontello.css">


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
#up{
	cursor: pointer;
}
.reserve-area{
	height: 500px;
}
</style>

<script type="text/javascript">
$(function(){
	$('.rday').click(function(){
		var day=$(this).text();
		$('#rd').attr("value",day);
		
		var year=$(this).attr("year");
		var month=$(this).attr("month");
		var rday=year+"년도 "+month+"월 "+day+"일";
		$('#fday').text(rday);
		// 예약 시간 
		$.ajax({
			type:'get',
			url:'time.do',
			data:{"day":day},
			success:function(response)
			{				
				$('#time').html(response);
				var offset = $(".rday").offset();
	            $('html, body').animate({scrollTop : offset.top});
			}
		})
	});
	
	$('#up').click(function(){
		var offset = $("#wrapper").offset();
        $('html, body').animate({scrollTop : offset.top});
	});
});
</script>

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
												<fmt:formatNumber value="${vo.price }" pattern="#,###" /> 원
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
				<!-- Content -->
				<div class="text-muted" style="width: 70%;">
					<c:forEach var="content" items="${fn:split(vo.content, ', ') }">
   						<p><img src="${fn:replace(content,'\'','')}"></p>   		 				
					</c:forEach>
				</div>
				
				<!-- 후기작성 -->
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
										<input type=hidden name=rno value="${vo.mno }" id=rmno>
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
				
				<div class="text-right">
					<a id="up"><i class="ico icon-up-open"></i></a>
				</div>
			</div>
		</div>	
		
		<!-- 신청 -->
		<div class="col-lg-4">
			<div class="box-contact">
				<h3 class="text-left">신청</h3>						
				<div class="box-content reserve-area">
					<h4>신청일 선택</h4>
					<table class="table">						
						<tr>
							<td class="text-center">${year }년도${month }월</td>
						</tr>
					</table>
					<table class="table">
						<tr class="danger">
							<c:forEach var="i" items="${strWeek }">
								<th class="text-center">${i }</th>
							</c:forEach>
						</tr>
					</table>
					<%--달력 출력  --%>
					<%-- 변수 --%>
					<c:set var="week" value="${week-1 }" />
					<table class="table">
						<c:forEach var="i" begin="1" end="${lastDay }">
							<c:if test="${i==1 }">
								<%-- 공백(요일만큼 공백) --%>
								<tr>
									<c:forEach var="j" begin="1" end="${week }">
										<td class="text-center">&nbsp</td>
									</c:forEach>
							</c:if>

							<c:set var="color" value="" />

							<c:if test="${i==day }">
								<c:set var="color" value="danger" />
							</c:if>
							<c:if test="${i!=day }">
								<c:set var="color" value="" />
							</c:if>

							<td class="text-center ${color }"><c:if
									test="${i==rdata[i-1] }">
									<span class="btn btn-xs rday" year="${year }"
										month="${month }" style="background: black; color: white;">${i }</span>
								</c:if> <c:if test="${i!=rdata[i-1] }">
					         ${i }
					        </c:if></td>
							<c:set var="week" value="${week+1}" />
							<%-- int week=week+1 --%>
							<c:if test="${week>6 }">
								</tr>
								<tr>
									<c:set var="week" value="0" />
									<%-- int week=0 --%>
							</c:if>
						</c:forEach>
						</tr>
					</table>
				</div>
				
				<!-- 시간 선택 -->
				<div class="box-content reserve-area" id="time">					
				</div>
				
				<div class="box-content" style="height: 250px;">
					<h4>신청 정보</h4>
					<table class="table text-left">						
						<tr>
							<td>모임명 : <span id="fname">${vo.title }</span></td>
						</tr>
						<tr>
							<td>신청일 : <span id="fday"></span></td>
						</tr>
						<tr>
							<td>예약시간 : <span id="ftime"></span></td>
						</tr>
						<tr id="ok" style="display: none">
							<td class="text-center">
								<form method="post" action="reserve.do">
									<!-- ㅡmno,dno -->
									<input type="hidden" name="rmno" id="rm" value="${vo.mno }">
									<input type="hidden" name="rdno" id="rd">
									<input type=hidden name="rtitle" id="t"> 
									<input type=hidden name="rdate" id="r"> 
									<input type=hidden name="rtime" id="ti">
									<input type="submit" value="신청하기" class="btn btn-sm btn-danger" onclick="alert('신청이 완료되었습니다!!')">
								</form>
							</td>
						</tr>
					</table>
				</div>
			</div>
			
		</div>	
		
		
				
	</div>	
		
</body>


</html>