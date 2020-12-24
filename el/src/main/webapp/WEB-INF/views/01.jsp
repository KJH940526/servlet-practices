<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값 받아오기</h1>
	${iVal }<br/>
	${lVal }<br/>
	${fVal }<br/>
	${bVal }<br/>
	${sVal }<br/> 
	-${dVal }- <br/>	<!-- 없으면 출력안함! null  -->
	
	-${obj }- <br/>     <!-- 오브젝트가 null인 경우 안찍힘 -->
	${vo.no }<br/>
	${vo.name }<br/>
	
	<h1>산술연산</h1>
	${3*10+5 }<br/>
	${iVal+5 }<br/>
	
	<h1>관계연산</h1>
	${iVal == 10 }<br/>
	${iVal < 5 }<br/>
	<h3>자바연산 비추천!!</h3>
	${obj == null }<br/>
	${vo != null }<br/>
	<h4>el 연산 추천!!</h4>
	${empty obj }<br/>  
	${not empty obj }<br/>  
	
	<h1>논리연산</h1>
	${iVal == 10 && lVal < 10000 }<br/>
	${iVal < 5 || lval - 10 == 0 }<br/>
	
	<h1>요청 파라미터 값</h1>
	-${param.a }-<br/>    <!-- url에 ? a=10&email=enddl0121@naver.com -->
	-${param.email }-<br/>

	
	
	
</body>
</html>