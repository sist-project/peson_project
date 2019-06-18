<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-xs-8" >
	
		<div class="main-content"  style="border: solid; margin-left: 0px;"">
		
			<section id="cd-timeline" class="cd-container"> 
			
				<c:forEach var="vo" items="${list }"  varStatus="status">
	
					<div class="cd-timeline-block">
						<div class="cd-timeline-img">
							<img src="../mart/${status.index+1}.png" >
						</div>
						<!-- cd-timeline-img -->
	
						<div class="cd-timeline-content" style="width: 300px;">
	
							<%-- <img src="${vo.img }" alt="Picture"> --%>
							<img src="${vo.img }" width="180px" height="180px"> <a
								href="mart_detail.do?cno=${vo.cno }" class="cd-read-more">Read
								more</a> <span class="cd-date">${vo.cname }</span>
						</div>
						<!-- cd-timeline-content -->
					</div>
				</c:forEach> 
			</section>

		</div>

	</div>
</body>
</html>