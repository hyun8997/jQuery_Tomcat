<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx08.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#frm').submit(function(){
			//입력값을 받아오기
			var id = $('#id').val();
			var pw = $('#pw').val();
			
			//속성 받아오기
			/* html tag 안에 속성줄때 attribute(attr)이용 - attr(속성, value), value를 안주면 속성을 받아올 수 있음. */
			var form = $(this).attr('name');
			
			//출력
			alert(id+" : "+pw);
			alert(form);
			
			
			
		});
		
	});

</script>
</head>
<body>
	<form action="#" name="frm" id="frm">
		<table>
			<tr>
				<th>ID : </th>
				<td><input type="text" name="id" id="id" /></td>
			</tr>
			<tr>
				<th>PW : </th>
				<td><input type="text" name="pw" id="pw" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송" />
				</td>
			</tr>
			
		</table>
	
	</form>
	
</body>
</html>