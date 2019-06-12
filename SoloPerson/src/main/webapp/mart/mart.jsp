<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Timeline -->

<link rel="stylesheet" href="../assets/plugin/form-wizard/prettify.css">
<link rel="stylesheet" href="../assets/plugin/timeline/css/style.css">

<style type="text/css">

.cd-timeline-img {
    width: 100px;
    height: 100px;
      margin-left: -50px;
 
    } 
.cd-timeline-img img {
    display: block;
    width: 70px;
    height: 70px;
    position: relative;
    left: 70%;
    top: 70%;
    margin-left: -57px;
    margin-top: -50px;
    border-radius: 100px;
}
.cd-timeline-content{
color: black;


}
</style>
</head>
<body>
		<div class="box-content">
		<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
						<ul class="sub-menu">
							<li><a href="mart.do?no=1">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else there</a></li>
							<li class="split"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
						<!-- /.sub-menu -->
					</div>

	<div id="rootwizard">
		<div class="tab-header">
			<div class="navbar">
				<div class="navbar-inner">
					<ul>
					<li><img src="../mart/TOP5.png" ></li>
						<li><a href="../mart/mart.do?no=1" class="btn btn-sm btn-default"><img src="../mart/ramen1.png" width="70px" height="70px"></a></li>
						<li><a href="../mart/mart.do?no=2" class="btn btn-sm btn-default"><img src="../mart/do1.png" width="80px" height="115px"></a></li>
						<li><a href="../mart/mart.do?no=3" class="btn btn-sm btn-default"><img src="../mart/snack1.png" width="80px" height="100px"></a></li>
						<li><a href="../mart/mart.do?no=4" class="btn btn-sm btn-default"><img src="../mart/juice1.png" width="80px" height="120px"></a></li>
					
					</ul>
				</div>
			</div>
		</div>
		
		
		<div class="tab-content">
	<!-- tab 1 start -->
			
				<section id="cd-timeline" class="cd-container"> <c:forEach
					var="vo" items="${list }" >
					
				<%-- <c:set var="i" value=0 /> --%>
					<div class="cd-timeline-block">
						<div class="cd-timeline-img ">
						
							<%-- <img src="../mart/${i+1}.png"> --%>
							<img src="../mart/1.png">
						</div>

						<div class="cd-timeline-content">
							<h2>${vo.cname }</h2>
							<h5>${vo.ccontent}"</h5>
							<a href="mart_detail.do?cno=${vo.cno }" class="cd-read-more">Read more</a>
						</div>

					</div>
					
					
					
				</c:forEach> 
			</section>
			
	
<!-- tab1 end -->
	

			<ul class="pager wizard">
				<li class="previous"><a href="javascript:void(0)">Previous</a></li>
				<li class="next"><a href="javascript:void(0)">Next</a></li>
			</ul>

		</div>
	</div>
</div>



	<!-- Form Wizard -->
	<script src="../assets/plugin/form-wizard/prettify.js"></script>
	<script src="../assets/plugin/form-wizard/jquery.bootstrap.wizard.min.js"></script>
	<script src="../assets/plugin/jquery-validation/jquery.validate.min.js"></script>
	<script src="../assets/scripts/form.wizard.init.min.js"></script>
	<script src="../assets/scripts/main.min.js"></script>


</body>
</html>