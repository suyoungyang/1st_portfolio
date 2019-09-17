<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function checkValue(user)
{
   var form = document.user;
   
   if(!form.id.value){
      alert("아이디를 입력하세요.");
      return false;
      }
   if(!form.password.value){
      alert("비밀번호를 입력하세요.");
      return false;
      }
}
</script>
</head>
<body>
<form method="POST" action="http://localhost:8090/free/login.do" name="user" onsubmit="return checkValue(this)">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name = "id"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name = "password"/></td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="submit" value="로그인" ></td>
		</tr>
	</table>
</form>
</body>
</html>