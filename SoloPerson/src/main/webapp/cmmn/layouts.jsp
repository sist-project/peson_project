<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>One Person Household</title>
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
	<!-- Morris Chart -->
	<link rel="stylesheet" href="../assets/plugin/chart/morris/morris.css">
	<!-- FullCalendar -->
	<link rel="stylesheet" href="../assets/plugin/fullcalendar/fullcalendar.min.css">
	<link rel="stylesheet" href="../assets/plugin/fullcalendar/fullcalendar.print.css" media='print'>
	<script src="../assets/scripts/jquery.min.js"></script>	<!-- 제이쿼리 라이브러리  -->
	
</head>

<body>
<div class="main-menu">
	<tiles:insertAttribute name="header"/>	
	<div class="content">
		<tiles:insertAttribute name="aside"/>
	</div>
</div>
	<tiles:insertAttribute name="nav"/>		
<div id="notification-popup" class="notice-popup js__toggle" data-space="75">
	<h2 class="popup-title">Your Notifications</h2>
	<!-- /.popup-title -->
	<div class="content">
		<ul class="notice-list">
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-1.jpg" alt=""></span>
					<span class="name">John Doe</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">10 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-2.jpg" alt=""></span>
					<span class="name">Anna William</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
					<span class="time">15 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar bg-warning"><i class="fa fa-warning"></i></span>
					<span class="name">Update Status</span>
					<span class="desc">Failed to get available update data. To ensure the please contact us.</span>
					<span class="time">30 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-1.jpg" alt=""></span>
					<span class="name">Jennifer</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-6.jpg" alt=""></span>
					<span class="name">Michael Zenaty</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">50 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-4.jpg" alt=""></span>
					<span class="name">Simon</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
					<span class="time">1 hour</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar bg-violet"><i class="fa fa-flag"></i></span>
					<span class="name">Account Contact Change</span>
					<span class="desc">A contact detail associated with your account has been changed.</span>
					<span class="time">2 hours</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-7.jpg" alt=""></span>
					<span class="name">Helen 987</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
					<span class="time">Yesterday</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-2.jpg" alt=""></span>
					<span class="name">Denise Jenny</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">Oct, 28</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-8.jpg" alt=""></span>
					<span class="name">Thomas William</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
					<span class="time">Oct, 27</span>
				</a>
			</li>
		</ul>
		<!-- /.notice-list -->
		<a href="#" class="notice-read-more">See more messages <i class="fa fa-angle-down"></i></a>
	</div>
	<!-- /.content -->
</div>
<!-- /#notification-popup -->

<div id="message-popup" class="notice-popup js__toggle" data-space="75">
	<h2 class="popup-title">Recent Messages<a href="#" class="pull-right text-danger">New message</a></h2>
	<!-- /.popup-title -->
	<div class="content">
		<ul class="notice-list">
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-1.jpg" alt=""></span>
					<span class="name">John Doe</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">10 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-3.jpg" alt=""></span>
					<span class="name">Harry Halen</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">15 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-4.jpg" alt=""></span>
					<span class="name">Thomas Taylor</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">30 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-1.jpg" alt=""></span>
					<span class="name">Jennifer</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-sm-5.jpg" alt=""></span>
					<span class="name">Helen Candy</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-2.jpg" alt=""></span>
					<span class="name">Anna Cavan</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">1 hour ago</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar bg-success"><i class="fa fa-user"></i></span>
					<span class="name">Jenny Betty</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">1 day ago</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="../assets/images/avatar-5.jpg" alt=""></span>
					<span class="name">Denise Peterson</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">1 year ago</span>
				</a>
			</li>
		</ul>
		<!-- /.notice-list -->
		<a href="#" class="notice-read-more">See more messages <i class="fa fa-angle-down"></i></a>
	</div>
	<!-- /.content -->
</div>
<!-- /#message-popup -->
<div id="wrapper">
	<div class="main-content">
		
		<tiles:insertAttribute name="content"/>
		<tiles:insertAttribute name="footer"/>
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

	<!-- Morris Chart -->
	<script src="../assets/plugin/chart/morris/morris.min.js"></script>
	<script src="../assets/plugin/chart/morris/raphael-min.js"></script>
	<script src="../assets/scripts/chart.morris.init.min.js"></script>

	<!-- Flot Chart -->
	<script src="../assets/plugin/chart/plot/jquery.flot.min.js"></script>
	<script src="../assets/plugin/chart/plot/jquery.flot.tooltip.min.js"></script>
	<script src="../assets/plugin/chart/plot/jquery.flot.categories.min.js"></script>
	<script src="../assets/plugin/chart/plot/jquery.flot.pie.min.js"></script>
	<script src="../assets/plugin/chart/plot/jquery.flot.stack.min.js"></script>
	<script src="../assets/scripts/chart.flot.init.min.js"></script>
	<!-- Sparkline Chart -->
	<script src="../assets/plugin/chart/sparkline/jquery.sparkline.min.js"></script>
	<script src="../assets/scripts/chart.sparkline.init.min.js"></script>
	<!-- FullCalendar -->
	<script src="../assets/plugin/moment/moment.js"></script>
	<script src="../assets/plugin/fullcalendar/fullcalendar.min.js"></script>
	<script src="../assets/scripts/fullcalendar.init.js"></script>
	<script src="../assets/scripts/main.min.js"></script>
		<!-- Hightcharts -->
	<script src="../assets/plugin/chart/highcharts/highcharts.js"></script>
	<script src="../assets/plugin/chart/highcharts/highcharts-3d.js"></script>
	<script src="../assets/plugin/chart/highcharts/themes/grid-light.js"></script>
	<script src="../assets/scripts/chart.highcharts.init.min.js"></script>
</body>
</html>