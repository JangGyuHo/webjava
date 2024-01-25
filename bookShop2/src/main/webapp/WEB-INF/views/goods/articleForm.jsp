<%@ page language="java" contentType="text/html; charset=utf-8"
     pageEncoding="utf-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  /> 
<%
  request.setCharacterEncoding("utf-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  function backToList(obj){
    obj.action="${contextPath}/goods/sortList3.do";
    obj.submit();
  }
  
  var cnt=1;
  function fn_addFile(){
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
	  cnt++;
  }  
</script>
<style>
	@import url("https://fonts.googleapis.com/css?family=Lato");

* {
transition: 0.2s all;
font-family: "Lato";
}

body {
margin: 0;
padding: 0;
font-family: sans-serif;

}

.formulario {
margin-top: 20px;
width: 900px;
max-width: 90%;
margin: 0 auto;
padding: 1em;

}

.formulario input,
textarea {
display: block;
width: 500px;
max-width: 90%;
margin-bottom: 10px;
margin-top: 10px;
border: none;
border-bottom: 0.5px solid rgba(0, 0, 0, 0.8);
padding: 0.5em;
color: rgba(0, 0, 0, 0.7);
}

.formulario input:focus,
textarea:focus {
outline: none;
padding-left: 10px;
}

.formulario .sent-data {
padding: 1em;
border: 1px solid rgba(255, 0, 0, 0.8);
background: none;
color: rgba(255, 0, 0, 0.8);
cursor: pointer;
}

.formulario .sent-data:hover {
padding-left: 20px;
opacity: 0.8;
border-color: #2f323a;
color: #2f323a;
border-left: 2px solid #2f323a;
}

.link {
text-decoration: none;
padding: 1em;
border: none;
background: rgba(255, 0, 0, 0.8);
color: white;
cursor: pointer;
margin-top: 100px;
}

.formulario form {
margin: 0 auto;
width: 100%;
}

.formulario label {
position: relative;
text-transform: uppercase;
color: rgba(255, 0, 0, 0.8);
margin: 0 450px 0 0;

}

label::after {
position: absolute;
content: "";
background: rgba(255, 0, 0, 0.8);
border: 1px solid rgba(255, 0, 0, 0.8);
width: 20px;
bottom: -3px;
left: 0;
}

.title-main {
text-align: center;
color: rgba(255, 0, 0, 0.8);
text-transform: uppercase;
position: relative;
}

.title-back {
margin-top: 100px;
}


</style>

 <title>글쓰기창</title>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<%@ include file="../common/side.jsp" %>
	
<h1 style="text-align:center"></h1>
  <form name="articleForm" method="post"   action="${contextPath}/board/addNewArticle.do" enctype="multipart/form-data">
    
	<div align=center>
	<article class="formulario">
			<label for="name">이름</label>
			<input type="text" size="20" maxlength="100"  value="${member.member_name }" readonly/>
			</label>
			<label for="name">번호</label>
			<input type="text" size="67"  maxlength="500" name="articleNO" />

			<label for="name">제목</label>
			<input type="text" size="67"  maxlength="500" name="title" placeholder="제목을 입력해주세요.">

			<label for="name">내용</label>
			<textarea name="content" rows="10" cols="65" maxlength="4000" placeholder="내용을 입력해주세요."></textarea>
            
            <img  id="preview" src="#" width=200 height=200/>
			<input type="file" name="imageFileName"  onchange="readURL(this);" />
			<div id="d_file"></div>

			<input type="submit" value="글쓰기"  class="sent-data" /> 
		    <input type=button value="목록보기 "onClick="backToList(this.form)" class="sent-data" /> 
		
	</article>
</div>
  </form>

  <%@ include file="../common/footer.jsp" %>
</body>
</html>