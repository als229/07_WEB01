<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 배우기</title>
</head>
<body>

	<h1>* EL(Expression Language) 표현 구문</h1>
	
	<p>
		기존 JSP 상에 사용했던 &lt%= %>같은 경우 사용이 복잡하고, <br>
		컴파일 시 문제가 발생 할 수 있기 때문에 <br>
		이 문제를 대체 할 수 있는 문법
	</p>
	
	<h3>1. EL구문 기본학습</h3>
	<!-- 
		절대 경로 방식 : /ContextRoot/서블릿 매핑값
				ex) /bm/sc
				
		상대 경로 방식 : URL 기준 마지막 슬래시 뒤에 붙음
				ex) sc 쓰면 localhost/bm/sc 에서 맨뒤에 / 뒤 값이 바뀜  
	 -->
	<a href="/bm/sc">써본듯</a>	
	
	
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>