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
<style>
.no-underline{
text-decoratrion:none;
}
</style>
<meta charset="UTF-8">
<title>사이드 메뉴</title>
</head>
<body>
<h1>사이드 메뉴</h1>
<h1>
<a href="${contextPath }/member/listMembers.do" class="no-underline">회원관리</a><br>
<a href="#" class="no-underline">게시판관리</a><br>
<a href="#" class="no-underline">상품관리</a><br>
</h1>
</body>
</html>