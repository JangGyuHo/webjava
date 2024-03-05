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
<title>Insert title here</title>
<style>
.text_center{
text-align:center;
}
</style>
</head>
<body>
<h1 class="cls1">회원정보 수정창</h1>
<form method="post" action="${contextPath}/member/modMember.do">
<table align="center">
<tr>
<td width="200"><p align="right">아이디</td>
<td width="400"><input type="text" name="id" value="${memberInfo.id }" disabled>
<input type="hidden" name="id" value="${memberInfo.id }" ></td>
</tr>
<tr>
<td width="200"><p align="right">비밀번호</td>
<td width="400"><input type="password" name="pwd" value="${memberInfo.pwd }"></td>
</tr>
<tr>
<td width="200"><p align="right">이름</td>
<td width="400"><p><input type="text" name="name" value="${memberInfo.name }"></td>
</tr>
<tr>
<td width="200"><p align="right">이메일</td>
<td width="400"><p><input type="text" name="email" value="${memberInfo.email }"></td>
</tr>
<tr>
<td width="200"><p align="right">가입일</td>
<td width="400"><p><input type="text" name="joinDate" value="${memberInfo.joinDate }" disabled></td>
</tr>
<tr>
<td  width="200"><p>&nbsp;</p></td>
<td  width="200"><input type="submit" value="수정하기"><input type="reset" value="다시입력"></td>
</tr>
</table>
</form>
</head>
<body>

</body>
</html>