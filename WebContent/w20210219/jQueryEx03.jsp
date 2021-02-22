<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx03.jsp</title>
<style type="text/css">
	div {
		margin: 10px;
		padding: 10px;
		border: 2px solid black;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('div').click(function(){
			/* 
			console.log($('h1'));		//각각의 객체를 호출해서 로그로 띄움
			console.log($('p'));		//$를 사용해서 dom 객체를 가져올 수 있다. 
			*/
			
			//전부를 가져오는 상태를 개선, 하나씩 따로
			var h1 = $(this).find('h1').text();	//누른놈을 this로 인식시키고, 텍스트화
			
			var p = $('p', this).text();
			
			alert(h1 + ' : ' + p);
			
		});//click end
		
	});
	
</script>
</head>
<body>
	<!-- (div>h1+p)*3 -->
	<!-- 각 div를 클릭하면 console창에 h1, p 객체 정보가 출력되도록 해보세요 -->
	<div>
		<h1>HELLO</h1>
		<p>안녕하세요</p>
	</div>
	<div>
		<h1>jQuery</h1>
		<p>제이쿼리</p>
	</div>
	<div>
		<h1>World</h1>
		<p>월드</p>
	</div>
	
</body>
</html>