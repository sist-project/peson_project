<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">  
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){

	$('.exp').hide();

	$('.detailBtn').click(function() {
		$('.exp').show();
	});
	

	$('#previousBtn').click(function() {
		$('.exp').hide();
	});
	

	$('#nextBtn').click(function() {
		$('.exp').hide();
	});
	
	$('#t1').click(function() {
		$('.exp').hide();
	});
	
	$('#t2').click(function() {
		$('.exp').hide();
	});
	
	$('#t3').click(function() {
		$('.exp').hide();
	});
	
	$('.tabBtn').click(function() {
		$('.exp').hide();
	});
	
});
</script>
<style type="text/css">
#detailBtn{
 float: left;
}
</style>

</head>
<body>
	<img src="1.jpg" width="800" height="400"
		style="margin-left: 130px; margin-bottom: 30px; height: 400px;">
	<br>
	<img src="2.png" width="60" height="60" style="margin-left: 130px;">
	<p class="description_3vlJb forHtml_33E6a" style="margin-left: 200px;">

		<br> <b style="font-size: large;">��ȥ�� ���� �ʰ�</b> ȥ�ڸ��� �������� ����
		������� �þ�� �ֽ��ϴ�. <br> �ֱٿ��� �� <b style="font-size: large;">
			1�ڳ��(1�ΰ���+economy)</b> ����� �ܾ���� ���游ŭ 1�ΰ����� ����,��ȭ,��ȸ���ݿ� <br> ū ������
		��ġ�� �ֽ��ϴ�. <br> �츮�� �ƴ� Ŀ�ü�Ʈ�� �ƴ� 1�μ�Ʈ, ȥ�ڼ��� ���� �� �ִ� ȥ�� �Ĵ�. ���� ��� ����
		�� ����ε���, <br> ī���鵵 ������/�̱������� ���� ��ǰ���� �Ӽӵ��� �����̰� �ֽ��ϴ�. <br>

	</p>
	<img src="3.png" width="60" height="60" style="margin-left: 860px;">


	<div class="col-md-12 col-xs-12">
		<div class="box-content col-lg-10 col-md-6 col-xs-12">
			<h1 class="box-title">������/�̱��� ī�� ��õ</h1>
			<!-- /.box-title -->
			<!-- /.dropdown js__dropdown -->



			<div id="rootwizard-pill">
				<div class="tab-header pill">
					<div class="navbar">
						<div class="navbar-inner">
							<ul>
								<li><a href="#tab-pill1" data-toggle="tab" id="t1">����ī�� Mr.Life</a></li>
								<li><a href="#tab-pill2" data-toggle="tab" id="t2">CU������ǹ���
										�Ｚī�� taptap</a></li>
								<li><a href="#tab-pill3" data-toggle="tab" id="t3">źź��� ����Ȩī��</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="tab-content" style="padding-bottom: 660px">

					<c:forEach var="vo" items="${cardSingleList }">
						<c:set var="p" value="${fn:substring(vo.vno,1,2) }" />
						<fmt:parseNumber var="k" type="number" value="${p }" />
						<div class="tab-pane" id="tab-pill${k }">

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
											<button type="button"
												class="btn btn-sm btn-danger btn-rounded waves-effect waves-light detailBtn"
												id="detailBtn" style="left: 10px; top: 5px;"
												onclick="btn_click()">�󼼺���</button>
											<a href="${vo.apply }" target="_blank"><button
													type="button"
													class="btn btn-sm btn-primary btn-rounded waves-effect waves-light"
													style="left: 20px; top: 5px;">ī���û</button></a>
										</div>
									</div>
								</div>
								<!-- /.box-content -->
								<p>${vo.scontent }</p>
							</div>



							<div id="exp" class="col-lg-6 col-md-6 col-xs-12 exp" 
								style="top: 30px; border: 3px solid red; border-radius: 0.5em; height: 600px; padding-top: 10px;"
								>
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
							 <th>��ȸ��</th>
							 <td>${vo.cost }</td>
					        </tr>
					        <tr> 
							 <th>�����ѵ�</th>
							 <td>${vo.limit }</td>
					        </tr>
					        <tr>
							 <th>��������</th>
							 <td>${vo.profit }</td>
					        </tr>
					       
					</table>

							</div>
                             
						</div>

					</c:forEach>

				</div>
				<ul class="pager wizard">
					<li class="previous previousBtn" id="previousBtn"><a href="javascript:void(0)">Previous</a></li>
					<li class="next nextBtn" id="nextBtn"><a href="javascript:void(0)">Next</a></li>
				</ul>
			</div>

		</div>
		<!-- /.box-content -->

	</div>

</body>
<script src="../assets/scripts/jquery.min.js"></script>
	<script src="../assets/scripts/modernizr.min.js"></script>
	<script src="../assets/plugin/bootstrap/js/bootstrap.min.js"></script> 
 	<script src="../assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="../assets/plugin/nprogress/nprogress.js"></script>
	<script src="../assets/plugin/sweet-alert/sweetalert.min.js"></script>
	<script src="../assets/plugin/waves/waves.min.js"></script>
	<script src="../assets/plugin/form-wizard/prettify.js"></script>
	<script src="../assets/plugin/form-wizard/jquery.bootstrap.wizard.min.js"></script>
	<script src="../assets/plugin/jquery-validation/jquery.validate.min.js"></script>
	<script src="../assets/scripts/form.wizard.init.min.js"></script>
	<script src="../assets/scripts/main.min.js"></script> 
</html>