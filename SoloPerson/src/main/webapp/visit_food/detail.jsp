<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
var i=0;
var u=0;
var d=0;
$(function(){
	$('.reply').click(function(){
		$('.reply_win').hide();
		var no=$(this).attr("value");
		if(i==0)
		{
			
			$('#m'+no).show();
			i=1;
		}
		else
		{
			$('#m'+no).hide();
			i=0;
		}
	});
	
	$('.rupdate').click(function(){
		$('.reply_win').hide();
		var no=$(this).attr("value");
		if(u==0)
		{
			
			$('#u'+no).show();
			u=1;
		}
		else
		{
			$('#u'+no).hide();
			u=0;
		}
	});
	
	$('.del').click(function(){
		$('.reply_win').hide();
		var no=$(this).attr("value");
		if(d==0)
		{
			
			$('#d'+no).show();
			d=1;
		}
		else
		{
			$('#d'+no).hide();
			d=0;
		}
	});
});
</script>
</head>
<body>
	<a href="../visit_food/visitFood.do" class="btn btn-sm btn-rounded btn-bordered btn-violet waves-effect waves-light ">목록</a>
	<div class="text-center" style="margin-bottom: 20px;">
		<img src="http://korean.visitseoul.net/${vo.img }"><br>
		<h1>${vo.title }</h1>
	</div>
	<div class="col-sm-12">
		<div class="col-sm-8">
		${vo.content }
		</div>
		<div class="col-sm-4">
			<div class="right-content-inner">
				${vo.aside }
			</div>
		</div>
	</div>
	
	<!-- <div>
		<table class="text-center">
			<tr>
				<a href="#" class="btn btn-sm btn-success"></a>
			</tr>
		</table>
	</div> -->
	
	<!-- 추가 =========================================================================================================-->
	<div class="card shadow mb-4">
              <div class="card-header py-3">
                            댓글
              </div>
              <div class="table-responsive">
               <c:if test="${count==0 }">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <tr>
                    <td class="text-center">댓글이 없습니다</td>
                  </tr>
                </table>
               </c:if>
               <c:if test="${count!=0 }">
                <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
                  <c:forEach var="rvo" items="${rList }">
                    <tr>
                      <td class="text-left">
                       <c:if test="${rvo.group_tab>0 }">
                         <c:forEach var="i" begin="1" end="${rvo.group_tab }">
                           &nbsp;&nbsp;
                         </c:forEach>
                         <img src="icon_reply.gif">
                       </c:if>
                       <span style="color:blue">${rvo.name }</span>&nbsp;${rvo.db_day }
                      </td>
                      <td class="text-right">
                       <a href="#" class="btn btn-sm btn-success rupdate" value="${rvo.no }">수정</a>
                       <a href="#" class="btn btn-sm btn-danger del" value="${rvo.no }">삭제</a>
                       <a href="#" class="btn btn-sm btn-info reply" value="${rvo.no }">댓글</a>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2">
                      <c:if test="${rvo.group_tab>0 }">
                         <c:forEach var="i" begin="1" end="${rvo.group_tab }">
                           &nbsp;&nbsp;&nbsp;
                         </c:forEach>
                       </c:if>
                      ${rvo.msg }
                      </td>
                    </tr>
                    <!-- 삭제 -->
                    <tr style="display:none" id="d${rvo.no }" class="reply_win">
                      <td colspan="2">
                       <form method=post action="../visit_food/reply_delete.do">
                                             비밀번호:<input type="password" name=pwd size=15>
                               <input type=hidden name=vno value="${vo.no }">
			                   <input type=hidden name=no value="${rvo.no }">
			                   <input type=submit value="삭제">
                       </form>
                      </td>
                    </tr>
                    <!-- 댓글 -->
                    <tr style="display:none" id="m${rvo.no }" class="reply_win">
                      <td colspan="2">
                        <form method=post action="../visit_food/reply_reply_insert.do">
			                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			                  <tr>
			                    <td>이름:<input type=text name=name size=15>&nbsp;&nbsp;
			                                             비밀번호:<input type=password name=pwd size=15>
			                         <input type=hidden name=vno value="${vo.no }">
			                         <input type=hidden name=no value="${rvo.no }">
			                    </td>
			                  </tr>
			                  <tr>
			                    <td>
			                      <textarea rows="3" cols="150" name=msg style="float: left"></textarea>
			                      &nbsp;
			                      <input type=submit value="댓글쓰기" style="float: left;height: 78px"
			                        class="btn btn-sm btn-danger"
			                      >
			                    </td>
			                  </tr>
			                </table>
		                </form>
                      </td>
                    </tr>
                    <!-- 수정  -->
                    <tr style="display:none" id="u${rvo.no }" class="reply_win">
                      <td colspan="2">
                        <form method=post action="../visit_food/reply_update.do">
			                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			                  <tr>
			                    <td>이름:<input type=text name=name size=15 value="${rvo.name }">&nbsp;&nbsp;
			                                             비밀번호:<input type=password name=pwd size=15>
			                         <input type=hidden name=vno value="${vo.no }">
			                         <input type=hidden name=no value="${rvo.no }">
			                    </td>
			                  </tr>
			                  <tr>
			                    <td>
			                      <textarea rows="3" cols="50" name=msg style="float: left">${rvo.msg }</textarea>
			                      &nbsp;
			                      <input type=submit value="수정하기" style="float: left;height: 78px"
			                        class="btn btn-sm btn-danger"
			                      >
			                    </td>
			                  </tr>
			                </table>
		                </form>
                      </td>
                    </tr>
                  </c:forEach>
                </table>
               </c:if>
                <form method=post action="../visit_food/reply_insert.do">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <tr>
                    <td>이름:<input type=text name=name size=15>&nbsp;&nbsp;
                                             비밀번호:<input type=password name=pwd size=15>
                         <input type=hidden name=vno value="${vo.no }">
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <textarea rows="4" cols="120" name=msg style="float: left"></textarea>
                      &nbsp;
                      <input type=submit value="댓글쓰기" style="float: left;height: 78px"
                        class="btn btn-sm btn-rounded btn-bordered btn-danger waves-effect waves-light"
                      >
                    </td>
                  </tr>
                </table>
                </form>
              </div>
            </div>               
          </div>
	
	
	<!-- 지도========================================================================================================= -->
	<div id="map" style="width: 100%; height: 350px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=60c4bc023c22e029c517e071fd16363c&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(
						'${vo.addr}',
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === daum.maps.services.Status.OK) {

								var coords = new daum.maps.LatLng(result[0].y,result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new daum.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new daum.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">${vo.title}</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>
</body>
</html>