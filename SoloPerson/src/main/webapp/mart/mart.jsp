

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Timeline - My Admin Template</title>


<!-- Timeline -->
<link rel="stylesheet" href="../assets/plugin/timeline/css/style.css">
<script type="text/javascript">
	$(function() {
		$('div.cate_container').click(function() {
			var yno = $(this).attr('yno');
			$.ajax({
				type : 'post',
				url : 'youtube.do',
				data : {
					'yno' : yno
				},
				success : function(res) {
					$(".pricing-plan").html(res);
					
				}
			});
		});
	});
</script>


<style type="text/css">
.cd-timeline-content .cd-read-more {
	float: right;
}
.box-contact {
    position: relative;
    margin-top: 0px;
    padding: 20px 20px 20px 20px;
    border: 1px solid #e0e0e0;
    background: #ffffff;
    -webkit-border-radius: 8px;
    -moz-border-radius: 8px;
    border-radius: 8px;
    text-align: center;
    margin-bottom: 5px;
}
</style>
</head>

<body>
	<div id="rootwizard">
		<div class="tab-header">
			<div class="navbar">
				<div class="navbar-inner">
					<ul>
						<li><img src="../mart/TOP5.png" style="width: 300px; height: 130px;"></li>
						<li><a href="../mart/mart.do?no=1"
							class="btn btn-sm btn-default"><img src="../mart/ramen1.png"
								style="width: 100px; height: 100px;"></a></li>
						<li><a href="../mart/mart.do?no=2"
							class="btn btn-sm btn-default"><img src="../mart/do1.png"
								style="width: 100px; height: 100px;"></a></li>
						<li><a href="../mart/mart.do?no=3"
							class="btn btn-sm btn-default"><img src="../mart/juice1.png"
								style="width: 100px; height: 100px;"></a></li>
						<li><a href="../mart/mart.do?no=4"
							class="btn btn-sm btn-default"><img src="../mart/snack1.png"
								style="width: 100px; height: 100px;"></a></li>

					</ul>
				</div>
			</div>
		</div>



		<!-- /#message-popup -->
		<div id="wrapper">
			
			<jsp:include page="${mList }"></jsp:include>
			
			<div class="col-xs-4"  style="border: solid;">
			<img alt="" src="../mart/title.png" style="width: 430px; height: 130px">
			<div class="pricing-table">
			
	
				<c:forEach var="vo" items="${ clist}">
				
					
				<div class="col-md-6" >
				<div class="box-contact cate_container " yno="${vo.yno}" style="cursor:pointer" >
					<img src="${vo.img}" style="width: 250px; height: 150px;" >
				</div>
				<!-- /.box-contact -->
			</div>
			
				
						
						
						</c:forEach>
					</div>
					<div class="box-contact pricing-plan">
					
					<!-- 	<img src="mart/1.png"> -->
					</div>
				


			
			<!-- /.main-content -->
		</div>
		<!--/#wrapper -->
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="assets/script/html5shiv.min.js"></script>
		<script src="assets/script/respond.min.js"></script>
	<![endif]-->
		<!-- 
	================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="../assets/scripts/jquery.min.js"></script>
		<script src="../assets/scripts/modernizr.min.js"></script>
		<script src="../assets/plugin/bootstrap/js/bootstrap.min.js"></script>
		<script
			src="../assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="../assets/plugin/nprogress/nprogress.js"></script>
		<script src="../assets/plugin/sweet-alert/sweetalert.min.js"></script>
		<script src="../assets/plugin/waves/waves.min.js"></script>

		<script src="../assets/scripts/main.min.js"></script>



		<!-- --------------------------------------------------------- -->
		<script src="../assets/plugin/form-wizard/prettify.js"></script>
		<script
			src="../assets/plugin/form-wizard/jquery.bootstrap.wizard.min.js"></script>
		<script
			src="../assets/plugin/jquery-validation/jquery.validate.min.js"></script>
		<script src="../assets/scripts/form.wizard.init.min.js"></script>
		<script src="../assets/scripts/main.min.js"></script>

	</div>
</body>

</html>