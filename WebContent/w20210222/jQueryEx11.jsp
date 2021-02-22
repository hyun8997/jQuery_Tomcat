<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx11.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		$('img, br').hide();
		
		$('#btn').click(function(){
			$('br').show(); 
			$('img').css('margin-left', '100px').fadeIn(3000, function(){
				location.href = 'main.jsp';
				
			});
			
		});
		
	});
</script>
</head>
<body>
<!--  
	1. 버튼 클릭 시 브라우저에 이미지가 출력
		(100px 떨어져서 점점 보이는 형태로 출력)
	2. 이미지가 전부 보이면 main.jsp 페이지로 이동시키기
	3. main.jsp 에서는 어서오세요~! 출력
-->
	
	<img src="../images/diorLogo.jpg" alt="디올로고" /> <br />
	<input type="button" value="출력" id="btn" />
	
	
</body>
</html>