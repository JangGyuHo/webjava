<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
            <c:set var="contextPath" value="${pageContext.request.contextPath}" />
     <%
    request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<c:choose>
<c:when test="${result=='loginFailed' }">
<script>
window.onload=function(){
	alert("아이디나 비밀번호가 틀립니다. 다시 로그인하세요~")
}
</script>
</c:when>
</c:choose>
</head>
<body>
<form  method="post" action="${contextPath}/member/login.do">
<h1 class="text_center" align="center" >젴젝 아트갤러리</h1>
<table width="400">
<tr>
<td>아이디<input type="text" name="id" size="10"></td>
</tr>
<tr>
<td>이름<input type="text" name="pwd" size="10"></td>
</tr>
<tr>
<td>
<input type="submit" value="로그인"> 
<input type="reset" value="디시입력"> 
</td>
</tr>
</table>
</form>
</body>
</html>