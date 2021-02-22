<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx05.jsp</title>
<style type="text/css">
	.myStyle {
		border: 5px solid red;
	}
	.plus {
		border: 3px dotted red;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//1번 버튼을 누르면 CSS 효과를 연속해서 적용하기
		$('#btn1').click(function(){
			
			//alert('btn1 click');
			
			//$를 이용해서 객체를 찾아오는 방식은 결국 느려짐 - $(선택자)를 변수로 선언해두면 리소스를 아낄 수 있음(권장)
			/* 
			$(this)
			$('#btn1') 	//이렇게 계속 같은거를 찾아오면 결과적으로 느려짐
			*/
			var $box1 = $("#btn1");		//$(선택자)를 변수로 선언
			
			// 1. 메소드 체이닝 방식
			//$box1.css('background','green').css('color','red');	
			
			// 2. 맵 방식 - JSON 객체 이용 {name : value1, name2 : value2, ...}
			$box1.css({
				'color' : 'red',
				'background-color' : 'green'
			});	
		});//btn1() end
		
		//2번 버튼을 누르면 prompt 띄워서 어떤 배경색을 사용할지 사용자에게 물어보고 box1 배경색을 변경
		$('#btn2').on('click', function(){
			
			//alert('btn2 click');
			
			var color = prompt('어떤 배경색을 사용할까요? (rgb 가능)', 'red');
			//alert(color);
			$('#box1').css('background-color', color);
		});//btn2() end
		
		//3번 버튼을 누르면 box1의 너비를 구해서 alert창에 출력
		$('#btn3').click(function(){
			
			//CSS를 속성만 주고 value 값을 주지 않으면 현재 값을 가져올 수 있음
			var width = $('#box1').css('width');	
			alert(width);
			
		});//btn3() end
		
		//4번 버튼을 누르면 box1에 myStyle 클래스를 추가
		$('#btn4').click(function(){
			$('#box1').addClass('myStyle');
		});//btn4() end
		
		//5번 버튼을 누르면 box1에 myStyle 클래스를 제거
		$('#btn5').click(function(){
			$('#box1').removeClass('myStyle');
		});//btn5() end
		
		//이미지에 마우스가 올라오면 테두리(3px dotted red)추가
		//이미지에서 마우스가 빠지면 테두리를 제거
/* 		$('img').on('mouseover', function(){	
			$(this).css('border', '3px solid red');
		});
		$('img').mouseout(function(){	
			$(this).css('border', 'none');
		}); */
		
		$('img').hover(function(){		
			$('img').addClass('plus');
		}, function(){					
			$('img').removeClass('plus');
		});
		
		
	});
</script>
</head>
<body>
	<!-- CSS 처리를 위한 버튼 -->
	<!-- (input:button[value='btn$'][id='btn$'])*5 -->
	<input type="button" value="btn1" id="btn1" />
	<input type="button" value="btn2" id="btn2" />
	<input type="button" value="btn3" id="btn3" />
	<input type="button" value="btn4" id="btn4" />
	<input type="button" value="btn5" id="btn5" />
	
	<div id="box1">box1</div> 
	
	<img src="../images/d_bag.jpg" alt="dior" />

</body>
</html>