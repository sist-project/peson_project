<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
 .cardimg{
 height: 120px;
 }
</style>

</head>
<body>
	<div class="row">
	<div class="col-md-12 margin-bottom-20">
							<ul class="nav nav-tabs nav-justified" id="myTabs-justified" role="tablist">
								<li role="presentation" class="active"><a href="#home-justified" id="home-tab-justified" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true" class="tabBtn">�ſ�ī��</a></li>
								<li role="presentation"><a href="#profile-justified" role="tab" id="profile-tab-justified" data-toggle="tab" aria-controls="profile" class="tabBtn">üũī��</a></li>
								<li role="presentation" class="dropdown">
									<a href="#" class="dropdown-toggle" id="myTabDrop1-justified" data-toggle="dropdown" aria-controls="myTabDrop1-contents" class="tabBtn">ī����Ʈ<span class="caret"></span></a> 
									<ul class="dropdown-menu" aria-labelledby="myTabDrop1-justified" id="myTabDrop1-contents-justified">
										<li><a href="#dropdown1-justified" role="tab" id="dropdown1-tab-justified" data-toggle="tab" aria-controls="dropdown1" class="tabBtn">�ſ�ī�� TOP5</a></li>
										<li><a href="#dropdown2-justified" role="tab" id="dropdown2-tab-justified" data-toggle="tab" aria-controls="dropdown2" class="tabBtn">üũī�� TOP5</a></li>
									</ul>
								</li>
								<li role="presentation" class="dropdown">
									<a href="#" class="dropdown-toggle" id="myTabDrop2-justified" data-toggle="dropdown" aria-controls="myTabDrop2-contents" class="tabBtn">��Ȳ�� ��õī��<span class="caret"></span></a> 
									<ul class="dropdown-menu" aria-labelledby="myTabDrop1-justified" id="myTabDrop2-contents-justified">
										<li><a href="#dropdown5-justified" role="tab" id="dropdown5-tab-justified" data-toggle="tab" aria-controls="dropdown5" class="tabBtn">������, �̱����� ���� ī��</a></li>
										<li><a href="#dropdown6-justified" role="tab" id="dropdown6-tab-justified" data-toggle="tab" aria-controls="dropdown6" class="tabBtn">������ ���� ī��</a></li>
										<li><a href="#dropdown7-justified" role="tab" id="dropdown7-tab-justified" data-toggle="tab" aria-controls="dropdown7" class="tabBtn">�¶��μ��� ���� ī��</a></li>
									</ul>
								</li>
							</ul>
							<!-- /.nav-tabs -->
							<div class="tab-content" id="myTabContent-justified" style="padding-bottom: 30px;">
								<div class="tab-pane fade in active" role="tabpanel" id="home-justified" aria-labelledby="home-tab-justified">
						<!-- 			<div class="col-lg-6 col-xs-12">
									<div class="box-content" style="height: 216px;">
										<h4 class="box-title">ī���</h4>
								
										<ul class="list-inline">
											<li>
											 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-52"><label for="checkbox-circled-52">����ī��</label></div>
										
											</li>
											<li>
											  <div class="checkbox circled primary"><input type="checkbox" id="checkbox-circled-53"><label for="checkbox-circled-53">����ī��</label></div>
										
											</li>
											<li>
											  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-54"><label for="checkbox-circled-54">�Ե�ī��</label></div>
										
											</li>
											<li>
											<div class="checkbox circled info"><input type="checkbox" id="checkbox-circled-55"><label for="checkbox-circled-55">��Ƽī��</label></div>
										
											</li>
											<li>
											<div class="checkbox circled warning"><input type="checkbox" id="checkbox-circled-56"><label for="checkbox-circled-56">NH����ī��</label></div>
										
											</li>
											<li> 
											<div class="checkbox circled danger"><input type="checkbox" id="checkbox-circled-57"><label for="checkbox-circled-57">IBK�������</label></div>
										
											</li>
											<li>
											<div class="checkbox circled purple"><input type="checkbox" id="checkbox-circled-58"><label for="checkbox-circled-58">KB����ī��</label></div>
										
											</li>
											<li>
											<div class="checkbox circled pink"><input type="checkbox" id="checkbox-circled-59"><label for="checkbox-circled-59">�Ｚī��</label></div>
										
											</li>
											<li>
										<div class="checkbox circled inverse"><input type="checkbox" id="checkbox-circled-60"><label for="checkbox-circled-60">�ϳ�ī��</label></div>
										
											</li>
											<li>
											 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-61"><label for="checkbox-circled-61">�츮ī��</label></div>
										
											</li>
											<li>
											  <div class="checkbox circled primary"><input type="checkbox"id="checkbox-circled-62"><label for="checkbox-circled-62">Sh��������</label></div>
											
											</li>
											<li>
											  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-63"><label for="checkbox-circled-63">SC��������</label></div>
											
											</li>
								
										</ul>
										
									</div>
								
								</div>
								 -->
						<!-- 		<div class="col-lg-6 col-xs-12">
									<div class="box-content">
										<h4 class="box-title">����</h4>
					
										<ul class="list-inline">
											<li>
											 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-65"><label for="checkbox-circled-65">��� ������</label></div>
									
											</li>
											<li>
											  <div class="checkbox circled primary"><input type="checkbox" id="checkbox-circled-66"><label for="checkbox-circled-66">������</label></div>
											
											</li>
											<li>
											  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-67"><label for="checkbox-circled-67">���ϸ���</label></div>
										
											</li>
											<li>
											<div class="checkbox circled info"><input type="checkbox" id="checkbox-circled-68"><label for="checkbox-circled-68">����Ʈ</label></div>
										
											</li>
											<li>
											<div class="checkbox circled warning"><input type="checkbox" id="checkbox-circled-69"><label for="checkbox-circled-69">ĳ�ù�</label></div>
										
											</li>
		
											<li>
											 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-74"><label for="checkbox-circled-74">����</label></div>
										
											</li>
											<li>
											  <div class="checkbox circled primary"><input type="checkbox"id="checkbox-circled-75"><label for="checkbox-circled-75">���</label></div>
										
											</li>
											<li>
											  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-76"><label for="checkbox-circled-76">������</label></div>
											
											</li>
											
										
											<li> 
											<div class="checkbox circled danger"><input type="checkbox" id="checkbox-circled-79"><label for="checkbox-circled-79">����</label></div>
										
											</li>
											<li>
											<div class="checkbox circled purple"><input type="checkbox" id="checkbox-circled-80"><label for="checkbox-circled-80">��Ʈ</label></div>
										
											</li>
											<li>
											<div class="checkbox circled pink"><input type="checkbox" id="checkbox-circled-81"><label for="checkbox-circled-81">������</label></div>
									
											</li>
											<li>
										<div class="checkbox circled inverse"><input type="checkbox" id="checkbox-circled-82"><label for="checkbox-circled-82">��Ƽ</label></div>
										
											</li>
											<li>
											 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-83"><label for="checkbox-circled-83">����/�౹</label></div>
									
											</li>
											<li>
											  <div class="checkbox circled primary"><input type="checkbox" id="checkbox-circled-84"><label for="checkbox-circled-84">ī��</label></div>
									
											</li>
											<li>
											  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-85"><label for="checkbox-circled-85">Ǫ��</label></div>
											
											</li>
						
											<li>
											<div class="checkbox circled warning"><input type="checkbox" id="checkbox-circled-87"><label for="checkbox-circled-87">��ȭ</label></div>
										
											</li>
										
											<li>
											<div class="checkbox circled purple"><input type="checkbox" id="checkbox-circled-89"><label for="checkbox-circled-89">������</label></div>
									
											</li>
											<li>
											<div class="checkbox circled pink"><input type="checkbox" id="checkbox-circled-90"><label for="checkbox-circled-90">�ǰ�</label></div>
										
											</li>
											
								
											<li>
											<div class="checkbox circled info"><input type="checkbox" id="checkbox-circled-95"><label for="checkbox-circled-95">����</label></div>
											</li>
										
										
										</ul>
										
									</div>
								
								</div>
									<div>
									<button type="button" class="btn btn-primary btn-rounded waves-effect waves-light" style=" left: 1410px;top: 12px;">Search</button>
									</div> -->
									
								
								<c:forEach var="vo" items="${cardList }">
								<div class="col-lg-4 col-md-6 col-xs-12">
									<div class="box-content bordered info js__card" style="top: 50px;width: 490px;height: 294px;">
										<h4 class="box-title with-control">
											${vo.cname }
											<span class="controls">
												
												<button type="button" class="control fa fa-times js__card_remove"></button>
											</span>
									
										</h4>
										
										<div class="js__card_content">
											<div>
											 <a href="detail.do?cno=${vo.cno }"><img src="${vo.poster }" class="cardimg"></a>
											 <h3>${vo.bank } | ${vo.card }</h3>
											 <h4>${vo.ccontent }</h4>
											</div>
										</div>
									</div>
									
								</div>	
								</c:forEach>	
									
									
										
								</div>
								
								
								
								<div class="tab-pane fade" role="tabpanel" id="profile-justified" aria-labelledby="profile-tab-justified">
									
									
									<!-- <div class="col-lg-6 col-xs-12">
										<div class="box-content" style="height: 216px">
											<h4 class="box-title">ī���</h4>
									
											<ul class="list-inline">
												<li>
												 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-1"><label for="checkbox-circled-1">NH����ī��</label></div>
										
												</li>
												<li>
												  <div class="checkbox circled primary"><input type="checkbox" id="checkbox-circled-2"><label for="checkbox-circled-2">����ī��</label></div>
											
												</li>
												<li>
												  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-3"><label for="checkbox-circled-3">�Ե�ī��</label></div>
										
												</li>
												<li>
												<div class="checkbox circled info"><input type="checkbox" id="checkbox-circled-4"><label for="checkbox-circled-4">�Ｚī��</label></div>
										
												</li>
												<li>
												<div class="checkbox circled warning"><input type="checkbox" id="checkbox-circled-5"><label for="checkbox-circled-5">IBK�������</label></div>
											
												</li>
												<li> 
												<div class="checkbox circled danger"><input type="checkbox" id="checkbox-circled-6"><label for="checkbox-circled-6">�츮ī��</label></div>
											
												</li>
												<li>
												<div class="checkbox circled purple"><input type="checkbox" id="checkbox-circled-7"><label for="checkbox-circled-7">KB����ī��</label></div>
											
												</li>
												<li>
												<div class="checkbox circled pink"><input type="checkbox" id="checkbox-circled-8"><label for="checkbox-circled-8">�ϳ�ī��</label></div>
										
												</li>
												<li>
											<div class="checkbox circled inverse"><input type="checkbox" id="checkbox-circled-9"><label for="checkbox-circled-9">��Ƽī��</label></div>
											
												</li>
												<li>
												 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-10"><label for="checkbox-circled-10">����ī��</label></div>
											
												</li>
												<li>
												  <div class="checkbox circled primary"><input type="checkbox"id="checkbox-circled-11"><label for="checkbox-circled-11">�ڳ�ī��</label></div>
											
												</li>
												<li>
												  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-12"><label for="checkbox-circled-12">īī����ũ</label></div>
										
												</li>
												<li>
												<div class="checkbox circled info"><input type="checkbox" id="checkbox-circled-13"><label for="checkbox-circled-13">���̹�ũ</label></div>
											
												</li>
												<li>
												<div class="checkbox circled pink"><input type="checkbox" id="checkbox-circled-17"><label for="checkbox-circled-17">SC��������</label></div>
										
												</li>
											</ul>
											
										</div>
										
									</div>
									
									<div class="col-lg-6 col-xs-12">
										<div class="box-content">
											<h4 class="box-title">����</h4>
						
											<ul class="list-inline">
												<li>
												 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-19"><label for="checkbox-circled-19">��� ������</label></div>
											
												</li>
												<li>
												  <div class="checkbox circled primary"><input type="checkbox" id="checkbox-circled-20"><label for="checkbox-circled-20">������</label></div>
											
												</li>
												<li>
												  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-21"><label for="checkbox-circled-21">���ϸ���</label></div>
											
												</li>
												<li>
												<div class="checkbox circled info"><input type="checkbox" id="checkbox-circled-22"><label for="checkbox-circled-22">����Ʈ</label></div>
											
												</li>
												<li>
												<div class="checkbox circled warning"><input type="checkbox" id="checkbox-circled-23"><label for="checkbox-circled-23">ĳ�ù�</label></div>
												</li>
											
												<li>
												 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-28"><label for="checkbox-circled-28">����</label></div>
										
												</li>
												<li>
												  <div class="checkbox circled primary"><input type="checkbox"id="checkbox-circled-29"><label for="checkbox-circled-29">���</label></div>
										
												</li>
												<li>
												  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-30"><label for="checkbox-circled-30">������</label></div>
										
												</li>
												<li>
												<div class="checkbox circled info"><input type="checkbox" id="checkbox-circled-31"><label for="checkbox-circled-31">����</label></div>
										
												</li>
												<li> 
												<div class="checkbox circled danger"><input type="checkbox" id="checkbox-circled-33"><label for="checkbox-circled-33">����</label></div>
											
												</li>
												<li>
												<div class="checkbox circled purple"><input type="checkbox" id="checkbox-circled-34"><label for="checkbox-circled-34">��Ʈ</label></div>
											
												</li>
												<li>
												<div class="checkbox circled pink"><input type="checkbox" id="checkbox-circled-35"><label for="checkbox-circled-35">������</label></div>
										
												</li>
												<li>
											<div class="checkbox circled inverse"><input type="checkbox" id="checkbox-circled-36"><label for="checkbox-circled-36">��Ƽ</label></div>
											
												</li>
												<li>
												 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-37"><label for="checkbox-circled-37">����/�౹</label></div>
										
												</li>
												<li>
												  <div class="checkbox circled primary"><input type="checkbox" id="checkbox-circled-38"><label for="checkbox-circled-38">ī��</label></div>
												
												</li>
												<li>
												  <div class="checkbox circled success"><input type="checkbox" id="checkbox-circled-39"><label for="checkbox-circled-39">Ǫ��</label></div>
											
												</li>
											
												<li>
												<div class="checkbox circled warning"><input type="checkbox" id="checkbox-circled-41"><label for="checkbox-circled-41">��ȭ</label></div>
											
												</li>
												
												<li>
												<div class="checkbox circled purple"><input type="checkbox" id="checkbox-circled-43"><label for="checkbox-circled-43">������</label></div>
											
												</li>
												<li>
												<div class="checkbox circled pink"><input type="checkbox" id="checkbox-circled-44"><label for="checkbox-circled-44">�ǰ�</label></div>
										
												</li>
												
												<li>
												 <div class="checkbox circled"><input type="checkbox" id="checkbox-circled-46"><label for="checkbox-circled-46">�������</label></div>
										
												</li>
				
												<li>
												<div class="checkbox circled info"><input type="checkbox" id="checkbox-circled-49"><label for="checkbox-circled-49">����</label></div>
											
												</li>
												
												
											</ul>
										
										</div>
										
									</div>
									
									<div>
									<button type="button" class="btn btn-primary btn-rounded waves-effect waves-light" style=" left: 1410px;top: 12px;">Search</button>
									</div> -->
									
									<c:forEach var="vo1" items="${checkcardList }">
								<div class="col-lg-4 col-md-6 col-xs-12">
									<div class="box-content bordered info js__card" style="top: 50px;width: 490px;height: 264px;">
										<h4 class="box-title with-control">
											${vo1.cname }
											<span class="controls">
												<button type="button" class="control fa fa-times js__card_remove"></button>
											</span>
									
										</h4>
										
										<div class="js__card_content">
											<div>
											 <a href="detail2.do?cno=${vo1.cno }"><img src="${vo1.poster }" class="cardimg"></a>
											 <h3>${vo1.bank } | ${vo1.card }</h3>
											 <h4>${vo1.ccontent }</h4>
											</div>
										</div>
									</div>
									
								</div>	
								</c:forEach>	
									
									
										</div>
								<div class="tab-pane fade" role="tabpanel" id="dropdown1-justified" aria-labelledby="dropdown1-tab-justified">
									<div class="col-md-12 col-xs-12">
									<table class="table table-striped">
									<c:forEach var="vo5" items="${creditcardChartList }">
									
						
							<tr>
							 <td>
							 <h1>${vo5.rank }</h1>
							 </td>
							 <td>
							  <img src="${vo5.poster }" width="200px" class="cardimg">
							 </td>
							 <td>
							  <h4>${vo5.cname }</h4>
							  <h5>${vo5.bank }</h5><br>
							  <h6>${vo5.ccontent }</h6>
							 </td>
							 <td>
							<a href="detail.do?cno=${vo5.cno }"><input type="button" value="�󼼺���" class="btn btn-sm btn-primary rankBtn" id="rankBtn" style="margin-top: 45px;"></a>
							 </td>
						</tr>
									</c:forEach>
									</table>
								</div>
										
									
									</div>
									
								<div class="tab-pane fade" role="tabpanel" id="dropdown2-justified" aria-labelledby="dropdown2-tab-justified">
										<div class="col-md-12 col-xs-12">
									<table class="table table-striped">
									<c:forEach var="vo4" items="${checkcardChartList }">
									
						
							<tr>
							 <td>
							 <h1>${vo4.rank }</h1>
							 </td>
							 <td>
							  <img src="${vo4.poster }" width="200px" class="cardimg">
							 </td>
							 <td style="padding-top: 40px;">
							  <h4>${vo4.cname }</h4>
							  <h5>${vo4.bank }</h5>
							 </td>
							 <td>
							<a href="detail2.do?cno=${vo4.cno }"><input type="button" value="�󼼺���" class="btn btn-sm btn-primary rankBtn" id="rankBtn" style="margin-top: 45px;"></a>
							 </td>
						</tr>
									</c:forEach>
									</table>
								</div>
								
					
				
									</div>
								
								<div class="tab-pane fade" role="tabpanel" id="dropdown5-justified" aria-labelledby="dropdown5-tab-justified">
									<jsp:include page="single.do"/>
									</div>
								<div class="tab-pane fade" role="tabpanel" id="dropdown6-justified" aria-labelledby="dropdown6-tab-justified">
									 <jsp:include page="mart.do"/>
									</div>	
									<div class="tab-pane fade" role="tabpanel" id="dropdown7-justified" aria-labelledby="dropdown7-tab-justified">
									<jsp:include page="shopping.do"/>
									</div>
							</div>
							<!-- /.tab-content -->
						</div>
						</div>
</body>
</html>