<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx07.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('textarea').keyup(function(){		//키 누르고 땔 때마다 인식
			//alert('keyup ok');
		
			//사용자가 입력한 글 구하기
			var input = $(this).val();
			//console.log(input);
			
			//사용자가 입력한 글의 글자수를 구하기
			var input2 = $(this).val().length;
			//console.log(input2);
			
			//남은 글자 수 계산
			var cnt = 60-input2;
			
			$('span').html(input2);
			
			//30자가 넘어가면 글자색 노란색
			//50자 넘어가면 글자색 빨간색
			//60자 경고창 - 더 이상 글을 쓸 수 없습니다. (출력)
			if(input2==30){
				$('span').css('color','yellow');
			}else if(input2==50){
				$('span').css('color','red');
			}else if(input2==60){
				alert('더 이상 글을 쓸 수 없습니다.');
				
				//더 이상 글을 쓸 수 없도록 처리
				$(this).attr('disabled','disabled');		//attribute(속성호출, value);
			}
		});
		
	});

</script>
</head>
<body>
	<div>
		<p>한마디 작성하세요</p>
		<h2><span> /60자 제한</span></h2>
		<textarea name="" id="" cols="40" rows="10"></textarea>
	</div>
</body>
</html>