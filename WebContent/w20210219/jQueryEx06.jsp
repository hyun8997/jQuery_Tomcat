<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx06.jsp</title>
<style type="text/css">
	#div2 {
		width: 300px;
		height: 300px;
		background: red;
		padding: 50px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	/* $(document).ready(function(){}); */
	// jquery 버전업이 되어서 deprecated 대상 - $(document).ready
	// 참고. 외부 라이브러리를 프로젝트에 직접 넣어서 사용하지 않고 https 방식으로 사용할 경우에는 버전업에 따른 deprecated 대상을 잘 확인해서 사용할 것!
	
	$(function(){
		$('h1').click(function(){
			//alert('h1 click');
			
			var length = $('h1').length;
			
			var html = $('h1').html();
			
			//alert(length + ' : ' + html);
			
			//javascript : innerHTML
			$('#div1').append('<h1>'+length + ' : ' + html+'</h1>');
			
		});//h1 click() end
		
		//빨간 div에 마우스가 오버되면 빨간div 아래에 내일은 토요일 유후~ 를 출력해보세요
		$('#div2').on('mouseover', function(){
			$('body').append('<h1>'+'내일은 토요일~~~~~~'+'</h1>');
		}).mouseenter(function(){
			$('body').append('<h1>'+'내일은 주말 유후~~~~'+'</h1>');
		});
		
	});
	
</script>
</head>
<body>
	<div id="div1">
		<h1>오늘은 즐거운 금요일</h1>
	</div>
	
	<div id="div2">
		
	</div>
</body>
</html>