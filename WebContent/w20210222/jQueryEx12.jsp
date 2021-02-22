<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx12.jsp</title>
<style type="text/css">
	.mainmenu {
		float:left;
		width:320px;
		list-style-type: none;
	}
	
	li.mainmenu ul {
		margin: 0;
		display: block;
		list-style-type: none;
		padding: 0;
	}
	
	li.mainmenu a {
		width: 300px;
		display: block;
		background-color: #a50000;
		color: white;
		text-decoration: none;
		padding: 10px;
		border-bottom: 1px solid #fff;
	}
	
	li.mainmenu a:hover{
		background-color: #ff4da6;
	}
	
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('li.mainmenu ul').hide();
		
		$('li.mainmenu').hover(function(){		//딜레이 요소 때문에 여러먼 넣다 빼면 완전히 빠져도 혼자 동작, 그냥 완전히 빠지면 멈춰버리게 stop 넣기
			//alert('mouse over');
			
			//내 카테고리의 자식요소를 호출
			$('ul', this).stop().slideDown(500);
		}, function(){
			//카테고리에서 마우스가 빠지면 실행될 부분
			
			$('ul', this).stop().slideUp(500);
		}
		
		);
		
	});
</script>

</head>
<body>
	<!-- 드롭다운 메뉴 만들기 -->
	
	<!-- ul#dropDownMenu>(li.mainmenu>a[href='#']+ul>(li>a[href='#'])*3)*2 -->
	<ul id="dropDownMenu">
		<li class="mainmenu">
			<a href="#">도서</a>
			<ul>
				<li><a href="#">IT</a></li>
				<li><a href="#">소설</a></li>
				<li><a href="#">비소설</a></li>
			</ul>
		</li>
		<li class="mainmenu">
			<a href="#">명품</a>
			<ul>
				<li><a href="#">샤넬</a></li>
				<li><a href="#">에르메스</a></li>
				<li><a href="#">구찌</a></li>
			</ul>
		</li>
	</ul>
	
	
</body>
</html>