<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL(forEach tag) Test</h1>
	<c:set var='countList' value='${fn:length(list) }' />
	<c:forEach items='${list }' var='vo' varStatus='status'>
		(${countList-status.index }) -> [${status.index } : ${status.count }] [${vo.no } : ${vo.name }] <br/>
	</c:forEach>
</body>
</html>

	
	  						<!-- vo는 이름!! -->
	  						<!--  list.size()는 자바코드이기 때문에 안된다!! -->
	  						<!--  함수를 사용해서 구해야한다!! -->
	  						<!-- 인덱스 -->       <!-- 루프 카운트 --> 
	<!-- 서블릿에서 넘어온에!! 표현식${}이 있어야함!! 아니면 스트링으로 봄! -->