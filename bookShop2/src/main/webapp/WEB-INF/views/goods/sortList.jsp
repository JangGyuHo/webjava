<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<c:set var="sort" value="${goodsMap.sort }" />
	<!DOCTYPE html >
<html>
<head>
<style>
.main_book {
color:black;
} 
.main_book h3{
color:black;
} 
.main_book .book {

    border: none;
}
.main_book .book:hover {
	border: none;
	border-image: none;
	background-image: none;
}
article{
margin:20px 0px 0px 15px;
}


</style>
</head>
 <body>
 <!--  
<div id="ad_main_banner">
	<ul class="bjqs">	 	
	  <li><img width="775" height="400" src="${contextPath}/resources/image/no1.jpg"></li>
		<li><img width="775" height="400" src="${contextPath}/resources/image/no2.jpg"></li>
		<li><img width="775" height="400" src="${contextPath}/resources/image/no3.jpg"></li> 
	</ul>
</div>
-->
<div class="main_book">
   <c:set  var="goods_sort" value="0" />
	<h3>제주 카페</h3>
	<c:forEach var="item" items="${goodsMap.sort }">
	   <c:set  var="goods_count" value="${goods_count+1 }" />
		<div class="book">
			<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
			<img class="link"  src="${contextPath}/resources/image/1px.gif"> 
			</a> 
				<img width="121" height="154" 
				     src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">

			<div class="title">${item.goods_title }</div>
			<div class="price">
		  	   <fmt:formatNumber  value="${item.goods_price}" type="number" var="goods_price" />
		          ${goods_price}원
			</div>
		</div>
	   <c:if test="${goods_count==15   }">
         <div class="book">
           <font size=20> <a href="#">more</a></font>
         </div>
     </c:if>
  </c:forEach>
</div>

<div class="clear"></div>
<div id="ad_sub_banner">
	<img width="1136" height="117" src="${contextPath}/resources/image/cos3.jpg">
</div>


<!-- <div class="clear"></div>
<div id="ad_sub_banner">
	<img width="770" height="117" src="${contextPath}/resources/image/pop.jpg">
</div> -->


</body>
</html>
   
   