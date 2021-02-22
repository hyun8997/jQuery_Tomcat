<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx13.jsp</title>
<style type="text/css">


</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		//right 버튼을 클릭하면 img가 오른쪽으로 550 이동
		$('#btn1').click(function(){
			//$('img').css('marginLeft', 550);
			
			//맵 방식 = JSON
			//$('img').css({'margin-left':'550px'});
			
			//animate(애니메이션 효과, 시간)
			$('img').animate({'margin-left':'550px'}, 1000);
		});
		
		$('#btn2').click(function(){
			//down 클릭시 아래로 200px 이동
			$('img').animate({marginTop:200}, 1000);
			
		});
		
		$('#btn3').click(function(){
			//현재 이미지의 너비와 높이를 구하기 - 2배로 만드는 효과를 주기
			var w = parseInt($('img').css('width'));	//px단위로 들어있어서 연산 못함, 써져있는 속성 그대로 문자열로 받아옴, 그러므로 parseInt 사용
			var h = $('img').height();					//자주 사용하는 애들은 그냥 함수가 있다.
			
			$('img').animate({width:w*2, height:h*2}, 1000);
		});
		
	});

</script>

</head>
<body>
	<!-- 이미지에 효과를 주기 -->
	
	<!-- (input:button[id='btn$'])*3 -->
	<input type="button" value="right" id="btn1" />
	<input type="button" value="down" id="btn2" />
	<input type="button" value="zoom2X" id="btn3" />
	
	<br />
	<br />
	<br />
		
	<img src="../images/diorLogo.jpg" alt="dior" />
	
</body>
</html>