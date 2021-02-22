<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx10.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		//각 버튼을 누르면 기능을 수행
		
		//구별할 수 있는 속성으로 가져오기:value
		$("input[value='숨기기']").on('click', function(){
			$('#box1').hide(3000);		//함수 안에 ms 단위로 시간 설정
		});//숨기기 end
		
		$("input[value='보이기']").click(function(){
			$('#box1').show(3000);		//함수 안에 ms 단위로 시간 설정
		});//보이기 end
		
		$("input[value='번갈아 수행']").click(function(){
			$('#box1').toggle(3000);		//함수 안에 ms 단위로 시간 설정
		});//번갈아 수행 end
		
		// 점점 사라지기, 점점 보이기 구현해보세요.
		$("input[value='점점 사라지기']").click(function(){
			$('#box1').fadeOut(3000);
		});//점점 사라지기 end
		
		$("input[value='점점 보이기']").click(function(){
			$('#box1').fadeIn(3000);
		});//점점 보이기 end
		
		$("input[value='이어서 보여주기']").click(function(){
			$('#box1').slideToggle(1000,fuction(){
				alert('fin');
			});
		});//이어서 보여주기 end
		
	});

</script>
</head>
<body>
	<input type="button" value="숨기기" />
	<input type="button" value="보이기" />
	<input type="button" value="번갈아 수행" />
	<input type="button" value="점점 사라지기" />
	<input type="button" value="점점 보이기" />
	<input type="button" value="이어서 보여주기" />
	
	<div id="box1" style="font-size: 20px">
		<br />
		오늘은 월요일 <br /><br />
		한 주의 시작 <br /><br />
		날씨가 좋다 <br /><br />
		미세먼지 조심 <br /><br />
	
	</div>
	
</body>
</html>