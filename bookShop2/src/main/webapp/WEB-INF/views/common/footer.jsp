<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"    
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
  <%
    request.setCharacterEncoding("utf-8");
    %>  

<!DOCTYPE html >

<html>
<meta  charset="utf-8">
<title>하단부분</title>
<head>
<style>
#vvv {
margin:20px;
margin-bottom:20px;
}
</style>

</head>
<body>

<br><br><br><br>
<div id="vvv">
<ul>
	<li><a href="#">회사소개</a></li>
	<li><a href="#">이용약관</a></li>
	<li><a href="#">개인정보취급방침</a></li>
	<li><a href="#">버프툰홍보</a></li>
	<li><a href="#">광고센터</a></li>
	<li><a href="#">고객만족센터</a></li>
	<li class="no_line"><a href="#">찾아오시는길</a></li>
</ul>
</div>
<div class="clear"></div>
<a href="#"><img width="147px"  height="62px" alt="Booktopia" src="${contextPath}/resources/image/logo12.png" /></a>
<div style="padding-left:300px" id="tb"  >
	 (주)젴주올레투어 <br>
	 대표이사: 1조   <br>
	 주소 : 대전광역시 서구 대덕대로 182  <br>  
	 사업자등록번호 : 000000000 <br>
	 대전광역시 통신판매업신고번호 : 제 666호 ▶사업자정보확인   개인정보보호최고책임자 : 박도재 park@google.co.kr <br>
	 대표전화 : 9999-9999 (발신자 부담전화)   팩스 : 0502-977-7777 (지역번호공통) <br>
	 COPYRIGHT(C) 젴주올레투어 .All Rights Reserved. 사이트에 게재된 모든 컨텐츠의 무단 전재와 복제를 금합니다
</div>

</body>
</html>