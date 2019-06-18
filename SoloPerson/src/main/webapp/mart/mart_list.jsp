<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#
</style>
</head>
<body>
	<div class="col-xs-8" >
	
		<div class="main-content"  style="border: solid;margin-left: 0px;padding-top: 0px;">
		
			<section id="cd-timeline" class="cd-container" style="
    margin-left: 50px;
    margin-right: 50px;
"> 
			
				<c:forEach var="vo" items="${list }"  varStatus="status">
	
					<div class="cd-timeline-block" style="width: 930px;">
						<div class="cd-timeline-img">
							<img src="../mart/${status.index+1}.png" style="left: 70px;">
						</div>
						<!-- cd-timeline-img -->
	
						<div class="cd-timeline-content" style="width: 350px;height: 210.8px;">
							${vo.cname }
							<%-- <img src="${vo.img }" alt="Picture"> --%>
							<img src="${vo.img }" style="width:150px;height:150px;" id="goodimg"> <a
								href="mart_detail.do?cno=${vo.cno }" class="cd-read-more">Read
								more</a> 
						</div>
						<!-- cd-timeline-content -->
					</div>
				</c:forEach> 
			</section>

		</div>

	</div>
</body>
</html>