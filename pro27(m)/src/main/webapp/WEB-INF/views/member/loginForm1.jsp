<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

</body>
</html>