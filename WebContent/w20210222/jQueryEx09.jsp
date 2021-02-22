<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx09.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		/* var all = $('#all');
		
		var attr = all.attr('checked');	//속성을 문자열로 가져옴, 변경사항 인식 못함
		var prop = all.prop('checked');	//속성의 프로퍼티 값을 가져옴. 추후의 움직임까지 인식 가능함. 보통 이놈을 많이 쓴다.
		
		//alert(attr+":"+prop);
		console.log(attr+":"+prop);
		
		console.dir(all); */
		
		$('#all').change(function(){
			if(this.checked){
				$('#check').children().prop('checked', true);
			}else {
				$('#check').children().prop('checked', false);
			}
			
			
		});
		
		
	});

</script>
</head>
<body>
	<!-- div#div1>input:checkbox+(div#check>(input:checkbox)*3) -->
	<div id="div1">
		<input type="checkbox" name="" id="all"/>ALL <br />
		<div id="check">
			<input type="checkbox" name="" id="" />RED
			<input type="checkbox" name="" id="" />YELLOW
			<input type="checkbox" name="" id="" />BLUE
		</div>
	</div>
</body>
</html>