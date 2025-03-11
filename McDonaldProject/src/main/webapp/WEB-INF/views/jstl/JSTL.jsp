<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- 보편적으로 prefix는 core 라이브러리를 쓸 때는 c 를 사용한다. -->
<!-- core 라이브러리란?  -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL~</h1>
	
	<p>
		JSP Standard Tag Library의 약어 : JSP에서 사용할 수 있는 커스텀 액션 태그 <br>
		공통적으로 사용해야 하는 코드들을 보다 쉽게 사용할 수 있도록 태그화해서 표준으로 제공하는 라이브러리
	</p>
	
	<hr>
	
	<p>
		JSTL을 사용하기 위해선 먼저 라이브러리를 추가해준 후 <br>
		JSTL을 사용하고자 하는 JSP 페이지 상단에 선언을 해 주어야함!! <br>
	</p>
	
	<% if(1 < 2) {%>
		<pre>멍멍이</pre>
	<% } %>
	<!-- 아이 불편해~ -->

	<h2>Core 라이브러리 실전 압축 핵심 요약 빠르게 배우고 넘어가기</h2>

	<p>
		if라는 태그를 작성하여 조건문을 만들어 낼 수 있음! <br>
		- Java 에서의 단일 if문과 똑같은 역할을 할 수 있는 태그 <br>
		- 조건식은 test라는 속성에 작성.
		*** 조건식을 만들 때는 반드시 EL 구문으로 작성해야함!!!!! ***
	</p>
	
	<h3>1) if문 관련</h3>
	
	<h4> 1-1) 일반 if문</h4>
	
	<c:if test="${ 1 lt 2 }">
		<pre>왈왈</pre>
	</c:if>	

	<c:if test="${ 1 gt 2 }">
		<pre>멍멍</pre>
	</c:if>	

	<c:if test="${ '안녕안녕' ne '바이바이' }">
		<pre>안녕안녕과 바이바이는 같지 않아~</pre>
	</c:if>	
	
	<hr>
	
	<h4> 1_2) choose, whem, otherwise 문</h4>
	<!-- 
		포인트 사용량이 100 이하라면 일반회원이라고 출력
		포인트 사용량이 300 이하라면 우수회원이라고 출력
		요 앞에 두 케이스에 걸리지 않을 시 최우수회원이라고 출력
	 -->
	 
	 <%-- // jsp 주석
		<% if( ) { %>
		
		
		<% } else if (){ %>
		
		<% } else { %>	
		
		<% } %>
		
	  --%>
	이거를
	
	<c:choose>
		<c:when test="${ point le 100 }">
			<pre>일반회원</pre> <br>
		</c:when>
		<c:when test="${ point le 300 }">
			<label style="color : gold"> <pre>우수회원</pre> </label><br>
		</c:when>
		<c:otherwise>
			<label style="color : red"> <pre>최우수회원</pre></label> <br>
		</c:otherwise>
	</c:choose>	
	
	이렇게 가능
	
	<hr>
	
	<h3>2) 반복문 - forEach </h3>
	
	<pre>
		[ 표현법 ]
		for loop문
		&lt;c:forEach var = "속성명" begin="초기값" end="끝값" step="증가시킬값(생략가능)" &gt;
			반복적으로 실행할 내용
		&lt;c:/forEach&gt;
		
		&lt;c:forEach var="속성명" items="순차적으로 접근할 배열 또는 컬렉션" &gt;
			
		&lt;c:/forEach&gt;
	</pre>

	<br>
	
	<c:forEach var="i" begin="0" end="9">
		${ i }
	</c:forEach>
	
	<br>
	
	<c:forEach var="i" begin="1" end="6">
		<h${ i }>이거 되니?? 이게 되네?</h${ i }>		
	</c:forEach>
	
	<hr>
	
	for(String color : colors){
		System.out.println(color);	
	}
	
	<ul>
		<c:forEach var="c" items="${ colors }">
			<li style="color : ${ c }"> ${ c } </li>		
		</c:forEach>
	</ul>
	
	<hr>
	
	
	<!-- 
		caption : 표 제목
		thead, tbody, tfoot : 테이블 구조
		tr 
		th, td
	 -->
	<div class="container mt-3">
	<h3>회원 목록</h3>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>아이디</th>
					<th>가입일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${ empty requestScope.list }">
						<tr>
							<td colspan="4">조회 결과가 존재하지 않습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="user" items="${ requestScope.list }">
							<tr>
								<td>${ user.userNo }</td>
								<td>${ user.userName }</td>
								<td>${ user.userId }</td>
								<td>${ user.enrollDate }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	
	
	
	<!-- 
		조건식 만들 때 필요한 것
		
		최소 한 개 이상의 값
	 -->
	
	<!-- 
		JS에서 많이 쓰는 반복문
		
		for(let i in list){
		
		}
		
		머시기.map(e => {
		
		})
		
		머시기.filter(e => {
		
		})
	 -->


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>