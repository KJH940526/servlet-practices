<%@page import="java.util.List" %>
<%@page import="com.bitacademy.guestbook.dao.GuestbookDao" %>
<%@page import="com.bitacademy.guestbook.vo.GuestbookVo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>

	<form method="post" action="delete.jsp">
		<!--  <input type='hidden' name='no' value='<%=request.getParameter("no") %>'> 이것도 가능-->
		<input type='hidden' name='no' value=<%=no %> >
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
				<td><input type="submit" value="확인"></td>
				<td><a href="/guestbook01">메인으로 돌아가기</a></td>
			</tr>
		</table>
	</form>

</body>
</html>