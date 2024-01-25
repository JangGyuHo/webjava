<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<c:set var="sort3" value="${goodsMap.sort3 }" />

	<!DOCTYPE html >
<html>
<head>
<style>
 <style>
img{
  margin-left: 170px;
}
#demo{
margin-left:150px;
}
  </style>
</head>
<script>
	function fn_articleForm(isLogOn,articleForm,loginForm){
	  if(isLogOn != '' && isLogOn != 'false'){
	    location.href=articleForm;
	  }else{
	    alert("로그인 후 글쓰기가 가능합니다.")
	    location.href=loginForm+'?action=/board/articleForm.do';
	  }
	}
</script>
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

<br><br>
<div id="demo">  
  <table align="center">
      <thead bgcolor="aqua">
        <tr>
          <th width="5%">번호</th>
          <th width="35%">제목</th>
          <th width="10%">작성자</th>
          <th width="10%">작성일</th>
        </tr>
      </thead>
      <tbody>
        <c:choose>
      <c:when test="${articlesList ==null }" >
        <tr height="10">
          <td colspan="4">
             <p align="center">
                <b><span style="font-size:9pt;">등록된 공지사항이 없습니다.</span></b>
            </p>
          </td>  
        </tr>        
      </c:when>
     
      <c:when test="${articlesList !=null }" >
        <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
          <tr align="center">
          <td width="5%">${articleNum.count}</td>          
          <td width="30%">
            <span style="padding-right:30px"></span>
            <c:choose>
               <c:when test='${article.level > 1 }'>  
                  <c:forEach begin="1" end="${article.level }" step="1">
                       <span style="padding-left:20px"></span>    
                  </c:forEach>
                  <span style="font-size:12px;">[답변]</span>
                          <a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
                   </c:when>
                   <c:otherwise>
                     <a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
                   </c:otherwise>
                 </c:choose>
           
          </td>
          <td width="10%">${article.ids }</td>
          <td width="10%">${article.writeDate}</td>
        </tr>
        </c:forEach>
        </c:when>
      </c:choose>
       
      </tbody>
    </table>  
</div>
  <c:if test="${isLogOn==true and memberInfo.member_id =='admin' }">  
<div align="center">
  <a  class="cls1"  href="javascript:fn_articleForm('${isLogOn}','${contextPath}/goods/articleForm.do','${contextPath}/member/loginForm.do')">글쓰기</a>
  </div> 
</c:if>
</body>
</html>
   
   