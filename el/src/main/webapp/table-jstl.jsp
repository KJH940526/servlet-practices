<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- http://localhost:8080/jstlel/table-jstl.jsp?r=10&c=10 -->
	<c:set var='row' value="${param.r }"/>
	<c:set var='col' value="${param.c }"/>
	
	<!--  값이 안 들어왔을때! -->
	<c:if test='${empty row }'>
		<c:set var='row' value='3'/>
	</c:if>
	
	<c:if test='${empty row }'>
		<c:set var='col' value='3'/>
	</c:if>
	
	<!-- table.jsp?r=30&c=10  이런식으로 값 받아와야한다!-->
	<table border="1" cellspacing='0' cellpadding='3'>
		<c:forEach begin='1' end='${row }' var='r' step='1'>
			<tr>
				<c:forEach begin='1' end='${col }' var='c' step='1'>
					<td>cell(${r-1 },${c-1 })</td>
				</c:forEach>
			</tr>
		</c:forEach>


	</table>

</body>
</html>