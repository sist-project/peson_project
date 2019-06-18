<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Timeline - My Admin Template</title>

	
	<!-- Timeline -->
	<link rel="stylesheet" href="../assets/plugin/timeline/css/style.css">
<style type="text/css">

.cd-timeline-content .cd-read-more {
    float: right;
}
</style>
</head>

<body>
<div id="rootwizard">
		<div class="tab-header">
			<div class="navbar">
				<div class="navbar-inner">
					<ul>
					<li><img src="../mart/TOP5.png" ></li>
						<li><a href="../mart/mart.do?no=1" class="btn btn-sm btn-default"><img src="../mart/ramen1.png" width="70px" height="70px"></a></li>
						<li><a href="../mart/mart.do?no=2" class="btn btn-sm btn-default"><img src="../mart/do1.png" width="80px" height="130px"></a></li>
						<li><a href="../mart/mart.do?no=3" class="btn btn-sm btn-default"><img src="../mart/juice1.png" width="80px" height="100px"></a></li>
						<li><a href="../mart/mart.do?no=4" class="btn btn-sm btn-default"><img src="../mart/snack1.png" width="80px" height="120px"></a></li>
					
					</ul>
				</div>
			</div>
		</div>



<!-- /#message-popup -->
<div id="wrapper">
	<div class="main-content">
		<section id="cd-timeline" class="cd-container">
		
				 <c:forEach var="vo" items="${list }"   >
		
			<div class="cd-timeline-block">
				<div class="cd-timeline-img">
				<img  src="../mart/1.png">
				</div> 
				<!-- cd-timeline-img -->

				<div class="cd-timeline-content">
					
					<%-- <img src="${vo.img }" alt="Picture"> --%>
					<img src="${vo.img }" width="180px" height="180px">
					<a href="mart_detail.do?cno=${vo.cno }" class="cd-read-more">Read more</a>
					<span class="cd-date">${vo.cname }</span>
				</div> 
				<!-- cd-timeline-content -->
			</div> 
	</c:forEach> 
	
		</section>
		
	
	
	</div>
	<!-- /.main-content -->
</div><!--/#wrapper -->
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
	<script src="../assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="../assets/plugin/nprogress/nprogress.js"></script>
	<script src="../assets/plugin/sweet-alert/sweetalert.min.js"></script>
	<script src="../assets/plugin/waves/waves.min.js"></script>

	<script src="../assets/scripts/main.min.js"></script>
	
	
	
	<!-- --------------------------------------------------------- -->
	<script src="../assets/plugin/form-wizard/prettify.js"></script>
	<script src="../assets/plugin/form-wizard/jquery.bootstrap.wizard.min.js"></script>
	<script src="../assets/plugin/jquery-validation/jquery.validate.min.js"></script>
	<script src="../assets/scripts/form.wizard.init.min.js"></script>
	<script src="../assets/scripts/main.min.js"></script>
	
	</div>
</body>

</html>