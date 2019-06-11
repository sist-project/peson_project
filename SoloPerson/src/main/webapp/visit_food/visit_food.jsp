<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Gallery - My Admin Template</title>

	<!-- Main Styles -->
	<link rel="stylesheet" href="../assets/styles/style.min.css">
	
	<!-- Material Design Icon -->
	<link rel="stylesheet" href="../assets/fonts/material-design/css/materialdesignicons.css">

	<!-- mCustomScrollbar -->
	<link rel="stylesheet" href="../assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.min.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="../assets/plugin/waves/waves.min.css">

	<!-- Sweet Alert -->
	<link rel="stylesheet" href="../assets/plugin/sweet-alert/sweetalert.css">
	
	<!-- Lightview -->
	<link rel="stylesheet" href="../assets/plugin/lightview/css/lightview/lightview.css">

</head>

<body>

<!-- /#message-popup -->
<div id="wrapper">
	<div class="main-content" style="margin: 0px auto; padding: 0px; width: 80%;">
		<div class="isotope-filter js__filter_isotope">
			<ul class="filter-controls">
				<li><a href="#" class="js__filter_control js__active" data-filter="*">All</a></li>
				<li><a href="#" class="js__filter_control" data-filter=".visit">나홀로여행!</a></li>
				<li><a href="#" class="js__filter_control" data-filter=".eat">혼밥,혼술!</a></li>
			</ul>
			<!-- /.filter-controls -->
			<div class="row row-inline-block small-spacing js__isotope_items" >
				<c:forEach var="vo" items="${vList }">
				<div class="col-md-4 col-sm-6 col-tb-6 col-xs-12 js__isotope_item visit" data-lightview-group="group">
					<a href="../visit_food/detail.do?vno=${vo.vno }" class="item-gallery">
						<img src="http://korean.visitseoul.net/${vo.img }" alt="" style=" height: 300px;">
						<h2 class="title">${vo.title }</h2>
						<input type="hidden" name=vno value="${vo.vno }">
						<!-- /.title -->
					</a>
				</div>
				</c:forEach>
				<!-- /.col-md-4 col-sm-6 col-tb-6 col-xs-12 js__isotope_item -->
				<c:forEach var="vo" items="${fList }">
				<div class="col-md-4 col-sm-6 col-tb-6 col-xs-12 js__isotope_item eat" data-lightview-group="group">
					<a href="../visit_food/detail1.do?fno=${vo.fno }" class="item-gallery">
						<img src="${vo.img }" alt="" style=" height: 300px;">
						<h2 class="title">${vo.title }<br>(${vo.kind })</h2>
						<input type="hidden" name=vno value="${vo.fno }">
					</a>
				</div>
				</c:forEach>
				<!-- /.col-md-4 col-sm-6 col-tb-6 col-xs-12 js__isotope_item -->
			</div>
			<!-- /.row row-inline-block js__isotope_items -->
		</div>
		
	</div>
	<!-- /.main-content -->
</div><!--/#wrapper -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="../assets/script/html5shiv.min.js"></script>
		<script src="../assets/script/respond.min.js"></script>
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

	<!-- Isotope -->
	<script src="../assets/scripts/isotope.pkgd.min.js"></script>
	<script src="../assets/scripts/cells-by-row.min.js"></script>

	<!-- Lightview -->
	<script src="../assets/plugin/lightview/js/lightview/lightview.js"></script>

	<script src="../assets/scripts/main.min.js"></script>
</body>
</html>