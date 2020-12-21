<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1><!-- head -->
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>


	<!-- cellpading 셀과 글자 사이의 간격 -->
	<!-- cellspacing 셀 간의 간격 -->
	<table border="1" cellspacing='0' cellpadding='10'> <!-- 표 같은거 만들떄 -->
		<tr> <!-- table row -->
			<th>번호</th> <!-- table header -->
			<th>제목</th>
			<th>작성자</th>
		</tr>

		<tr>
			<th>1</th>
			<th>안녕</th>
			<th>둘리</th>
		</tr>

		<tr>
			<th>2</th>
			<th>라면에 구공탄~~</th>
			<th>마이콜</th>
		</tr>
	</table>
	
	<img src = '/helloweb/images/dooly.jpg' style='width: 50px'/>
	<br/>
	<img src = 'images/dooly.jpg 'style='width: 30px'; border="1px solid #666">
	<br/>
	<a href='form.jsp'>폼으로 가기</a>
	<a href='index.jsp?no=2021' style='padding : 10px'>메인으로 가기</a>
	<p>
		스트롱이 아님 <strong>Strong 굵기</strong> 스트롱이 아님
	</p>

</body>
</html>