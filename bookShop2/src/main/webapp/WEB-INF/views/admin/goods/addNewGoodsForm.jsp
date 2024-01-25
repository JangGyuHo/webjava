<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="goods"  value="${goodsMap.goods}"  />
<c:set var="imageFileList"  value="${goodsMap.imageFileList}"  />
<!DOCTYPE html >
<html>

<meta charset="utf-8">
<head>
<script type="text/javascript">
  var cnt=0;
  function fn_addFile(){
	  if(cnt == 0){
		  $("#d_file").append("<br>"+"<input  type='file' name='main_image' id='f_main_image' />");	  
	  }else{
		  $("#d_file").append("<br>"+"<input  type='file' name='detail_image"+cnt+"' />");
	  }
  	
  	cnt++;
  }
  
  
  function fn_add_new_goods(obj){
		 fileName = $('#f_main_image').val();
		 if(fileName != null && fileName != undefined){
			 obj.submit();
		 }else{
			 alert("메인 이미지는 반드시 첨부해야 합니다.");
			 return;
		 }
		 
	}
</script> 
<style>
#na{
color:white;
}


</style>   
</head>
<body >
<form action="${contextPath}/admin/goods/addNewGoods.do" method="post"  enctype="multipart/form-data">
		<h1 id="na">새영화 등록창</h1>
<div class="tab_container">
	<!-- 내용 들어 가는 곳 -->
	<div class="tab_container" id="container">
		<ul class="tabs">
			<li><a href="#tab1">영화정보</a></li>
			<li><a href="#tab2">영화목차</a></li>
			<li><a href="#tab3">영화감독소개</a></li>
			<li><a href="#tab4">영화소개</a></li>
			<li><a href="#tab5">영화 평가</a></li>
			<li><a href="#tab6">추천사</a></li>
			<li><a href="#tab7">영화이미지</a></li>
		</ul>
		<div class="tab_container">
			<div class="tab_content" id="tab1">
				<table >
			<tr >
				<td width=200 >영화분류</td>
				<td width=500><select name="goods_sort">
						<option value="제주 숙소" selected>제주 숙소
						<option value="제주 카페">제주 카페
						<option value="올레길">올레길
					</select>
				</td>
			</tr>
			<tr >
				<td >영화제목</td>
				<td><input name="goods_title" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >감독</td>
				<td><input name="goods_writer" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >배급사</td>
				<td><input name="goods_publisher" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >영화예매가격</td>
				<td><input name="goods_price" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >영화할인가격</td>
				<td><input name="goods_sales_price" type="text" size="40" /></td>
			</tr>
			
			
			<tr>
				<td >영화 구매 포인트</td>
				<td><input name="goods_point" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >영화개봉일</td>
				<td><input  name="goods_published_date"  type="date" size="40" /></td>
			</tr>
			
			<tr>
				<td >런타임</td>
				<td><input name="goods_total_page" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >ISBN</td>
				<td><input name="goods_isbn" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >영화 굿즈가격</td>
				<td><input name="goods_delivery_price" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >영화 개봉 예정일</td>
				<td><input name="goods_delivery_date"  type="date" size="40" /></td>
			</tr>
			
			<tr>
				<td >영화종류</td>
				<td>
				<select name="goods_status">
				<option value="newbook" selected >제주 숙소</option>
				  <option value="steadyseller" >제주 카페</option>
				  <option value="buy_out" >올레길</option>
				  <option value="out_of_print" >상영종료</option>
				</select>
				</td>
			</tr>
			<tr>
			 <td>
			   <br>
			 </td>
			</tr>
				</table>	
			</div>
			<div class="tab_content" id="tab2">
				<H4>영화목차</H4>
				<table>	
				 <tr>
					<td >영화목차</td>
					<td><textarea  rows="100" cols="80" name="goods_contents_order"></textarea></td>
				</tr>
				</table>	
			</div>
			<div class="tab_content" id="tab3">
				<H4>영화 감독 소개</H4>
				 <table>
  				 <tr>
					<td>영화 감독 소개</td>
					<td><textarea  rows="100" cols="80" name="goods_writer_intro"></textarea></td>
			    </tr>
			   </table>
			</div>
			<div class="tab_content" id="tab4">
				<H4>영화소개</H4>
				<table>
					<tr>
						<td >영화소개</td>
						<td><textarea  rows="100" cols="80" name="goods_intro"></textarea></td>
				    </tr>
			    </table>
			</div>
			<div class="tab_content" id="tab5">
				<H4>시사회 평가</H4>
				<table>
				 <tr>
					<td>시사회 평가</td>
					<td><textarea  rows="100" cols="80" name="goods_publisher_comment"></textarea></td>
			    </tr>
			</table>
			</div>
			<div class="tab_content" id="tab6">
				<H4>추천사</H4>
				 <table>
					 <tr>
					   <td>추천사</td>
					    <td><textarea  rows="100" cols="80" name="goods_recommendation"></textarea></td>
				    </tr>
			    </table>
			</div>
			<div class="tab_content" id="tab7">
				<h4>영화이미지</h4>
				<table >
					<tr>
						<td align="right">이미지파일 첨부</td>
			            
			            <td  align="left"> <input type="button"  value="파일 추가" onClick="fn_addFile()"/></td>
			            <td>
				            <div id="d_file">
				            </div>
			            </td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="clear"></div>
<center>	
	 <table>
	 <tr>
			  <td align=center>
				<!--   <input  type="submit" value="영화 등록하기"> --> 
				  <input  type="button" value="영화 등록하기"  onClick="fn_add_new_goods(this.form)">
			  </td>
			</tr>
	 </table>
</center>	 
</div>
</form>	 
</body>
</html>
