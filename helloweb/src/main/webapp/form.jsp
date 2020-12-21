<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action='/helloweb/join' method="post"> <!-- get post -->
		이메일: <input type='text' name='email' value=''/>
		<br/>
		비밀번호:<input type="password" name='password' value=''/>
		<br/>
		생년:
		<select name = 'birthYear'>
			<option value='1994'>1994년</option>
			<option value='1995'>1995년</option>	
			<option value='1996'>1996년</option>	
			<option value='1997'>1997년</option>
		</select>
		<br/>
		<br/>
		성별:
		여<input type='radio' name='gender' value='female'/> <!-- 네임을 통해서 비교하고 상호배타적으로 값이 선택된다. -->
		남<input type='radio' name='gender' value='male'/ checked="checked">
		<br/>
		
		취미:
		코딩 <input type="checkbox" name='hobby' value='conding'/> <!-- 멀티값을 가지고 있기 떄문에 배열로 해야함 -->
		수영 <input type="checkbox" name='hobby' value='swimming'/>
		낚시 <input type="checkbox" name='hobby' value='fishing'/>
		요리<input type="checkbox" name='hobby' value='cooking'/>
		<br/>
		
		내 소개
		<textarea name="desc"></textarea>
		
		<br/>
		<br/>
		<input type="submit" value="가입"/>
	</form>

</body>
</html>