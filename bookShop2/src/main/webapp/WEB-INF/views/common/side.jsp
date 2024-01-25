<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html >

<html>
<meta  charset="utf-8">

<head>

<style>
#banner{
top:410px;
float:relative;
}


</style>

</head>
<body>
<nav>
<ul>
<c:choose>
<c:when test="${side_menu=='admin_mode' }">
   <li>
		<H3>주요기능</H3>
		<ul>
			<li><a href="${contextPath}/admin/goods/adminGoodsMain.do">업체관리</a></li>
			<li><a href="${contextPath}/admin/order/adminOrderMain.do">예약관리</a></li>
			<li><a href="${contextPath}/admin/member/adminMemberMain.do">회원관리</a></li>
			
		</ul>
	</li>
		<div class="clear"></div>
		<!--  
<div id="banner">
	<a href="#"><img width="190" height="163" src="${contextPath}/resources/image/m1.jpg"> </a>
</div>
	<div id="banner">
	<a href="#"><img width="190" height="362" src="${contextPath}/resources/image/m2.jpg"></a>
</div>
<div id="banner">
	<a href="#"><img width="190" height="200" src="${contextPath}/resources/image/m3.jpg"></a>
</div>
-->
</c:when>
<c:when test="${side_menu=='my_page' }">

	<li>
		<h3>정보내역</h3>
		<ul>
		<li><a href="${contextPath}/mypage/myPageMain.do">내정보</a></li>
			<li><a href="${contextPath}/mypage/myDetailInfo.do">회원정보관리</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">구매/예약조회</a></li>
			<li><a href="#">회원탈퇴</a></li>
		</ul>
	</li>
	<div class="clear"></div>
	<!--  
<div id="banner">
	<a href="#"><img width="190" height="163" src="${contextPath}/resources/image/m1.jpg"> </a>
</div>
	<div id="banner">
	<a href="#"><img width="190" height="362" src="${contextPath}/resources/image/m2.jpg"></a>
</div>
<div id="banner">
	<a href="#"><img width="190" height="200" src="${contextPath}/resources/image/m3.jpg"></a>
</div>
	-->
</c:when>

<c:otherwise>
<!-- 
		<div class="clear"></div>
	<div id="banner">
	<a href="#"><img width="190" height="372" src="${contextPath}/resources/image/m2.jpg"></a>
</div>
<li>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;국내 영화</h3>
		<ul>
			<li><a href="${contextPath}/goods/goodsList.do" >국내개봉작</a></li>
			<li><a href="#">재개봉작</a></li>
			<li><a href="#">뮤지컬</a></li>
		</ul>
	</li>
	<li>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;해외 영화</h3>
		<ul>
			<li><a href="${contextPath}/goods/goodsList1.do">해외개봉작</a></li>
			<li><a href="#">재개봉작</a></li>
			<li><a href="#">뮤지컬</a></li>
			
		</ul>
	</li>
		
<div id="banner">
	<a href="#"><img width="190" height="163" src="${contextPath}/resources/image/m1.jpg"> </a>
</div>
	<div id="banner">
	<a href="#"><img width="190" height="362" src="${contextPath}/resources/image/m2.jpg"></a>
</div>

 -->
 </c:otherwise>
</c:choose>	
</ul>
</nav>
<!--
<div class="clear"></div>
<div id="banner">
	<a href="#"><img width="190" height="163" src="${contextPath}/resources/image/m1.jpg"> </a>
</div>
  
<DIV id="notice">
	<H2>공지사항</H2>
	<UL>
		<li><a href="#">공지사항입니다</a></li>
		<li><a href="#">영화를 보세요</a></li>
		<li><a href="#">집에만 있지말고</a></li>
		<li><a href="#">나가서</a></li>
		<li><a href="#">공기 좀 쐬고</a></li>

	</ul>
</div>
-->
<!-- 
<div id="banner">
	<a href="#"><img width="190" height="362" src="${contextPath}/resources/image/m2.jpg"></a>
</div>
<div id="banner">
	<a href="#"><img width="190" height="200" src="${contextPath}/resources/image/m3.jpg"></a>
</div>

<div id="banner">
	<a href="#"><img width="190" height="200" src="${contextPath}/resources/image/m4.jpg"></a>
</div>
 -->
</body>
</html>