<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx01.jsp</title>
<style type="text/css">
	.plus {
		background: black;
		color: white;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* 
		CSS 선택자
		1. HTML tag 전부
		2. id ====> #
		3. class ====> .
		4. ALL ====> *
		 */
		 
		$('h1').on('click', function(){				//h1을 클릭할때마다
			//alert('h1 click');
			$('h1').html(function(index, html){		//*을 추가해주는 함수
				return html + ' * ';
			});
			
		});// onclick end
		
		$('h1').on({								//효과를 줄때 json 형식으로도 가능, 객체 함수도 실어 보낼수 있음
			mouseenter : function(){
				$('h1').addClass('plus');			//마우스 가져다 대면 h1이 전부 plus라는 클래스로, 횐글자 검은배경
			},
			
			mouseleave : function(){				//mouseenter:마우스오버하면, mouseleave:마우스때면
				$('h1').removeClass('plus');
			}
			
		});
		
	});
	
</script>
</head>
<body>
<!-- 
	jQuery : javascript library
	
	DOM 탐색은 CSS 선택자를 사용함.
	그러므로 CSS 표현식을 알고 있다면 보다 쉽게 이해할 수 있다.
	
	[형식]
	$('선택자'), jquery함수(선택자)...
-->

	<h1>HELLO</h1>
	<h1>jQuery</h1>
	<h1>World</h1>
	
	
</body>
</html>