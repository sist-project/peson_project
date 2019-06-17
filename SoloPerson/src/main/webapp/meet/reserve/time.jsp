<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style type="text/css">
.times, .times:hover{
cursor: pointer;
}

/* Graph */
.donut {  
  position: absolute;
  top: 370px;
  left: 200px;
  transform: translate(-50%, -50%);
  width: 54px;
  height: 54px;
}

circle {
  fill: none;
}

.circle-border {
  stroke: #e5e5e5;
  stroke-width: 1px;
}

.circle-back {
  stroke: #4f4f4f;
  stroke-width: 30px;
}

.circle-front {
  stroke: url(#quotaDonut__gradient);
  stroke-width: 30px;
  
  /* 2 * Math.PI * radius + 1  */
  stroke-dasharray: 629px;
  stroke-dashoffset: 629px;
  
  transition: stroke-dashoffset .5s ease;
}

.donut.three-quarter-filled .circle-front {
   /* 628 * (1 - 0.75) */
  stroke-dashoffset: 157px;
}

.donut.one-quarter-filled .circle-front {
   /* 628 * (1 - 0.25) */
  stroke-dashoffset: 471px;
}

.donut.half-filled .circle-front {
   /* 628 * (1 - 0.66667) */
  stroke-dashoffset: 314px;
}

.donut h2 {
  font-size: 25px;
  position: absolute;
  top: 70px;
  left: 70px;
  margin: 0;
  transform: translate(-50%, -50%);
  display: block;
  color: black;
}
</style>

<script type="text/javascript">
$(function(){
	$('.times').click(function(){
		var time=$(this).text();
		$("#ftime").text(time);
		
		var title=$('#fname').text();
		var day=$('#fday').text();
		var time=$('#ftime').text();
		
		$('#t').attr("value",title);
		$('#r').attr("value",day);
		$('#ti').attr("value",time);
		

		var rmno=$('#rm').val();
		var rdno=$('#rd').val();
				
		$.ajax({
			type:'post',
			url:'reserve_ok.do',
			data:{"rmno":rmno,"rdno":rdno,"rtime":time},
			success:function(response)
			{	
				var stroke =  (628*(1 - (parseInt(response)/5))) ;
				
				$('.circle-front').css({ 'stroke-dashoffset': stroke + 'px'});
		  		//$('h2').text((parseInt(response)/5)*100 + '%');
		  		$('h2').text(parseInt(response)+'/'+'5명');
				if(parseInt(response)>=5)
				{
					$("#ok").hide();
				}
				else
				{
					$("#ok").show();
				}
				var offset = $(".times").offset();
	            $('html, body').animate({scrollTop : offset.top});
			}
		})
		
	});
	
});

</script>
</head>
<body>
	<table class="table">
		<h4>시간 정보</h4>
		<div>
			<c:forEach var="vo" items="${list }">
				<tr>
					<td class="text-center times">${vo }</td>
				</tr>
			</c:forEach>
		</div>
		
		
		<div class="donut">
			<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
				 width="200px" height="200px" viewBox="0 0 340 333" enable-background="new 0 0 340 333" xml:space="preserve">
			  
			  <defs>
			      <linearGradient id="quotaDonut__gradient">
			        <stop stop-color="#fc0023" offset="0%"></stop>
			        <stop stop-color="#93f100" class="quotaDonut__gradientStopEnd" offset="100%"></stop>
			      </linearGradient>
			  </defs>
			
			  <g transform="translate(115, 115)">
			    <circle r="100" class="circle-back" />
			    <circle r="115" class="circle-border" />
			    <circle r="85"  class="circle-border" />
			    <circle r="100" class="circle-front" transform="rotate(270.1)" />
			  </g>
			</svg>
			  <h2>0%</h2>
		 </div>
						
	</table>
	
	<!-- Graph -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
	
	
</body>
</html>