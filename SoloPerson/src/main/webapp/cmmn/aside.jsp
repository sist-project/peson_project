<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function() {
		$('.waves-effect').click(function() {
			console.log($(this).parent().html());
			$(this).parent().addClass('current');
		});
	});
</script>
</head>
<body>
<div class="navigation">
			<h5 class="title">Menu</h5>
			<!-- /.title -->
			<ul class="menu js__accordion">
				<li class="">
					<a class="waves-effect" href="../main/main.do"><i class="menu-icon mdi mdi-view-dashboard"></i><span>1인 가구 통계</span></a>
				</li>
				<li class="">
					<a class="waves-effect" href="#"><i class="menu-icon mdi mdi-view-dashboard"></i><span>다미</span></a>
				</li>
				<li class="">
					<a class="waves-effect" href="../room/room.do"><i class="menu-icon mdi mdi-view-dashboard"></i><span>원룸 인테리어</span></a>
				</li>
				<li class="">
					<a class="waves-effect" href="#"><i class="menu-icon mdi mdi-view-dashboard"></i><span>소희</span></a>
				</li>
				<li class="">
					<a class="waves-effect" href="../consum/consum.do"><i class="menu-icon mdi mdi-view-dashboard"></i><span>수지</span></a>
				</li>
				<li class="">
					<a class="waves-effect" href="#"><i class="menu-icon mdi mdi-view-dashboard"></i><span>성환</span></a>
				</li>
				<li class="">
					<a class="waves-effect" href="#"><i class="menu-icon mdi mdi-view-dashboard"></i><span>성정</span></a>
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon mdi mdi-desktop-mac"></i><span>기타</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="ui-buttons.html">Buttons</a></li>
						<li><a href="ui-cards.html">Cards</a></li>
						<li><a href="ui-checkbox-radio.html">Checkboxs-Radios</a></li>
						<li><a href="ui-components.html">Components</a></li>
						<li><a href="ui-draggable-cards.html">Draggable Cards</a></li>
						<li><a href="ui-modals.html">Modals</a></li>
						<li><a href="ui-typography.html">Typography</a></li>
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
			</ul>
			<!-- /.menu js__accordion -->
		</div>
				<!-- /.navigation -->
</body>
</html>