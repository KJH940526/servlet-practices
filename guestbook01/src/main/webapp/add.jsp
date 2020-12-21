<%@page import="com.bitacademy.guestbook.dao.GuestbookDao" %>
<%@page import="com.bitacademy.guestbook.vo.GuestbookVo" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String Name = request.getParameter("name");
	String Password = request.getParameter("password");
	String Message = request.getParameter("message");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(Name);
	vo.setPassword(Password);
	vo.setMessage(Message);
	
	new GuestbookDao().insert(vo);
	response.sendRedirect("/guestbook01");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>등록완료</h1>
</body>
</html>