<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />

<!DOCTYPE html >

<html>
<meta  charset="utf-8">

<head>
 <style>
a {
color:black;
}

#head_link ul{
margin:10px;
font-size:15px;
font-family: cursive;

}

header #logo {
	float: left;
}
header #search {
	margin: 10px 10px 0px 300px; padding: 5px; float: right;
}

article {
	margin: -20px 0px 0px 15px; width:100%; float: right;
}
#outer_wrap {
	align:center;
	 padding: 0px; 
	 width: 1136px;
}
#wrap {
	margin-bottom: 10px; 
	padding: 0px; 
	width: 1160px; 
	float: left;
}

header #head_link {
	font-size: 0.75em; 
	margin-right: 10px; 
	float: right;
}
header #head_link ul {
	list-style: none;

}
header #head_link li {
	padding: 0px 8px; 
	border-right-color: rgb(153, 153, 153); 
	border-right-width: 1px; 
	border-right-style: solid; 
	float: left;
	color:black;
}
#head_link .no_line {
	border-right-color: currentColor; 
	border-right-width: medium;
	 border-right-style: none;
}
header #search {
	margin: 10px 10px 0px 0px; 
	padding: 0px;
	 float: right;
	 align: center;
}
header #search .main_input {
	padding: 0px 5px; 
	border: 3px solid rgb(51, 102, 153); 
	border-image: none; 
	width: 260px; 
	height: 22px;
}
header #search .btn1 {
	border: 1px solid rgb(51, 102, 153);
	 border-image: none; 
	 width: 55px; 
	 height: 28px; 
	 color: rgb(255, 255, 255);
	  margin-left: 2px; 
	  background-color: rgb(51, 102, 153);
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans);



div #abc {
  max-width: 1136px;
  mask-image: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, #ffffff 25%, #ffffff 75%, rgba(255, 255, 255, 0) 100%);
  margin: 0;
  padding: 5px;
margin:center;
}

#abc ul {
  text-align: center;
  background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0.2) 25%, rgba(255, 255, 255, 0.2) 75%, rgba(255, 255, 255, 0) 100%);
  box-shadow: 0 0 0px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
margin-right: 290px;
}

#abc ul li {
  display: inline-block;
color:black;
}

#abc ul li a {
  padding: 0px;
  font-family: "Open Sans";
  text-transform:uppercase;
  color: black;
  font-size: 18px;
  text-decoration: none;
  display: block;
   
}

#abc ul li a:hover {
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
  background: rgba(255, 255, 255, 0.1);
  color: rgba(0, 35, 122, 0.7);
 text-decoration:none;
}

#abc a {
 padding: 5px;
  font-family: "Open Sans";
  text-transform:uppercase;
  color: rgba(0, 35, 122, 0.5);
  font-size: 18px;
  text-decoration: none;
  display: block;
   margin-left: 10px;
   margin-right: 10px;
}
a {
    color: rgb(102, 102, 102);
    text-decoration: none;
}

aside{
height: 0px;}


header #search .main_input {
	width: 260px;
  border: 3px solid #00B4CC;
  border-right: none;
  padding: 5px;
  height: 28px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #9DBFAF;
}
header #search .btn1 {
	 border: 3px solid #00B4CC;
	 border-image: none;
	  width: 55px; 
	 height: 28px; 
	 color: rgb(255, 255, 255);
	  margin-left: -6px; 
	  background-color:#00B4CC;
	  border-radius: 0 5px 5px 0;
}
#suggest{
display:none; 
position: absolute;
 left: 910px; 
 top:108px;
  border: 0.1px  solid #87cb42;
  border-radius: 5px 5px 5px 5px;
   z-index:3;
   font-weight: bold;
   background-color:#ffffff; 	
	
}

</style>

<script type="text/javascript">
	var loopSearch=true;
	function keywordSearch(){
		if(loopSearch==false)
			return;
	 var value=document.frmSearch.searchWord.value;
		$.ajax({
			type : "get",
			async : true, //false인 경우 동기식으로 처리한다.
			url : "${contextPath}/goods/keywordSearch.do",
			data : {keyword:value},
			success : function(data, textStatus) {
			    var jsonInfo = JSON.parse(data);
				displayResult(jsonInfo);
			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다."+data);
			},
			complete : function(data, textStatus) {
				//alert("작업을완료 했습니다");
				
			}
		}); //end ajax	
	}
	
	function displayResult(jsonInfo){
		var count = jsonInfo.keyword.length;
		if(count > 0) {
		    var html = '';
		    for(var i in jsonInfo.keyword){
			   html += "<a href=\"javascript:select('"+jsonInfo.keyword[i]+"')\">"+jsonInfo.keyword[i]+"</a><br/>";
		    }
		    var listView = document.getElementById("suggestList");
		    listView.innerHTML = html;
		    show('suggest');
		}else{
		    hide('suggest');
		} 
	}
	
	function select(selectedKeyword) {
		 document.frmSearch.searchWord.value=selectedKeyword;
		 loopSearch = false;
		 hide('suggest');
	}
		
	function show(elementId) {
		 var element = document.getElementById(elementId);
		 if(element) {
		  element.style.display = 'block';
		 }
		}
	
	function hide(elementId){
	   var element = document.getElementById(elementId);
	   if(element){
		  element.style.display = 'none';
	   }
	}

</script>

</head>

<body>

	<div id="logo" >
	<a href="${contextPath}/main/main.do">
		<img width="200" height="110"  alt="booktopia" src="${contextPath}/resources/image/logo12.png">
		</a>
	</div>
	<div id="head_link">
		<ul>
		   <c:choose >
		     <c:when test="${isLogOn==true and not empty memberInfo }">
			   <li><a href="${contextPath}/member/logout.do">로그아웃</a></li>
			   <li><a href="${contextPath}/mypage/myPageMain.do">마이페이지</a></li>
			   <li><a href="${contextPath}/cart/myCartList.do">예약</a></li>			  
			 </c:when>
			 <c:otherwise>
			   <li><a href="${contextPath}/member/loginForm.do">로그인</a></li>
			   <li><a href="${contextPath}/member/memberForm.do">회원가입</a></li> 
			 </c:otherwise>
			</c:choose>
			   <li><a href="#">고객센터</a></li>
      <c:if test="${isLogOn==true and memberInfo.member_id =='admin' }">  
	   	   <li class="no_line"><a href="${contextPath}/admin/goods/adminGoodsMain.do">관리자</a></li>
	    </c:if>
	      <c:if test="${isLogOn==true and memberInfo.member_id =='host'}">  
	   	   <li class="no_line"><a href="${contextPath}/admin/goods/adminGoodsMain.do">사업자</a></li>
	    </c:if>
			
			  
		</ul>
	</div>
	<br><br>
	<div id="search" >
		<form name="frmSearch" action="${contextPath}/goods/searchGoods.do" >
			<input name="searchWord" class="main_input" type="text"  onKeyUp="keywordSearch()"> 
			<input type="submit" name="search" class="btn1"  value="검 색" >
		</form>
	</div>
	
   <div id="suggest">
        <div id="suggestList"></div>
   </div>
<br><br>
   <div id="abc">
  <ul>
    <li>
      <a href="${contextPath}/goods/goodsList1.do">
      	<img  height="80" src="${contextPath}/resources/image/g1.png"></a>
    </li>
    <li>
      <a href="${contextPath}/goods/goodsList.do">
      <img  height="80" src="${contextPath}/resources/image/g6.png"></a>
    </li>
    <li>
      <a href="${contextPath}/goods/goodsList2.do">
	<img  height="80" src="${contextPath}/resources/image/g3.png"></a>
    </li>
      <li>
      <a href="${contextPath}/goods/goodsList3.do">
      <img  height="80" src="${contextPath}/resources/image/g7.png"></a>
    </li>
    <li>
      <a href="${contextPath}/goods/goodsList3.do">
      <img  height="80" src="${contextPath}/resources/image/g5.png"></a>
    </li>
    <li>
      <a href="${contextPath}/goods/goodsList3.do">
      <img  height="80" src="${contextPath}/resources/image/g8.png"></a>
    </li>
    
  </ul>
</div>
</body>
</html>