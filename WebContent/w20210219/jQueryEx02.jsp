<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx02.jsp</title>
<style type="text/css">
	.plus {
		background: black;
		color: white;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('h1').hover(function(){		//첫번째 함수(hover내)
			$('h1').addClass('plus');
			
		}, function(){					//두번째 함수
			$('h1').removeClass('plus');
		});
		
		$('h1').click(function(){		//on('click') 말고도 쓸수 있는것, 나중에 나옴
			$(this).html('wow');		//전체가 바뀌지 않고 눌린 놈만 바뀜
			
			alert('이벤트 발생 중...');
			
			//남아있는 효과를 제거
			$(this).off();				//wow로 바뀐 녀석은 hover 이펙트 끔
			
		});
		
	});
	
</script>
</head>
<body>
	<h1>HELLO</h1>
	<h1>jQuery</h1>
	<h1>World</h1>
</body>
</html>