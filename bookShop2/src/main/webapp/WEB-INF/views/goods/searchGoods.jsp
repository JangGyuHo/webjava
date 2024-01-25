<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" 	isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="goods"  value="${goodsMap.goodsVO}"  />
<c:set var="imageList"  value="${goodsMap.imageList }"  />
 <%
     //치환 변수 선언합니다.
      pageContext.setAttribute("crcn", "\r\n"); //개행문자
      pageContext.setAttribute("crcn" , "\n"); //Ajax로 변경 시 개행 문자 
      pageContext.setAttribute("br", "<br/>"); //br 태그
%>  
<html>
<head>
 
<script type="text/javascript">
	function add_cart(goods_id) {
		$.ajax({
			type : "post",
			async : false, //false인 경우 동기식으로 처리한다.
			url : "${contextPath}/cart/addGoodsInCart.do",
			data : {
				goods_id:goods_id
				
			},
			success : function(data, textStatus) {
				alert(data);
				$('#message').append(data);
				if(data.trim()=='add_success'){
					imagePopup('open', '.layer01');	
				}else if(data.trim()=='already_existed'){
					alert("이미 예약된 상품입니다.");	
				}
				
			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다."+data);
			},
			complete : function(data, textStatus) {
				//alert("작업을완료 했습니다");
			}
		}); //end ajax	
	}

	function imagePopup(type) {
		if (type == 'open') {
			// 팝업창을 연다.
			jQuery('#layer').attr('style', 'visibility:visible');

			// 페이지를 가리기위한 레이어 영역의 높이를 페이지 전체의 높이와 같게 한다.
			jQuery('#layer').height(jQuery(document).height());
		}

		else if (type == 'close') {

			// 팝업창을 닫는다.
			jQuery('#layer').attr('style', 'visibility:hidden');
		}
	}
	
function fn_order_each_goods(goods_id,goods_title,goods_sales_price,fileName){
	var _isLogOn=document.getElementById("isLogOn");
	var isLogOn=_isLogOn.value;
	
	 if(isLogOn=="false" || isLogOn=='' ){
		alert("로그인 후예약이 가능합니다!!!");
	} 
	
	
		var total_price,final_total_price;
		var order_goods_qty=document.getElementById("order_goods_qty");
		
		var formObj=document.createElement("form");
		var i_goods_id = document.createElement("input"); 
    var i_goods_title = document.createElement("input");
    var i_goods_sales_price=document.createElement("input");
    var i_fileName=document.createElement("input");
    var i_order_goods_qty=document.createElement("input");
    
    i_goods_id.name="goods_id";
    i_goods_title.name="goods_title";
    i_goods_sales_price.name="goods_sales_price";
    i_fileName.name="goods_fileName";
    i_order_goods_qty.name="order_goods_qty";
    
    i_goods_id.value=goods_id;
    i_order_goods_qty.value=order_goods_qty.value;
    i_goods_title.value=goods_title;
    i_goods_sales_price.value=goods_sales_price;
    i_fileName.value=fileName;
    
    formObj.appendChild(i_goods_id);
    formObj.appendChild(i_goods_title);
    formObj.appendChild(i_goods_sales_price);
    formObj.appendChild(i_fileName);
    formObj.appendChild(i_order_goods_qty);

    document.body.appendChild(formObj); 
    formObj.method="post";
    formObj.action="${contextPath}/order/orderEachGoods.do";
    formObj.submit();
	}	
</script>
<style>
article{
width:905px;
margin:10px 0px 0px 15px;}
</style>
</head>
<body>
	<hgroup>
		<h1>검색</h1>
		<h2>Daily Pick!</h2>
	</hgroup>
	<section id="new_book">
		<h3>새로나온 영화</h3>
		<div id="left_scroll">
			<a href='javascript:slide("left");'><img src="${contextPath}/resources/image/left.gif"></a>
		</div>
		<div id="carousel_inner">
			<ul id="carousel_ul">
			<c:choose>
			   <c:when test="${ empty goodsList  }" >
			        <li>
					<div id="book">
						<a><h1>신작이 없습니다.</h1></a>
					  </div>
				</li> 
			   </c:when>
			   <c:otherwise>
			    <c:forEach var="item" items="${goodsList }" >
			     <li>
					<div id="book">
						<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id}">
						<img width="75" alt="" src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
						</a>
						<div class="sort">[현재 상영작]</div>
						<div class="title">
							<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
							  ${item.goods_title}
							</a>
						</div>
						<div class="writer">${item.goods_writer} | ${item.goods_publisher}</div>
						<div class="price">
							<span>
							  <fmt:formatNumber  value="${item.goods_price}" type="number" var="goods_price" />
		                         ${goods_price}원
							</span> <br>
							 <fmt:formatNumber  value="${item.goods_price*0.9}" type="number" var="discounted_price" />
				               ${discounted_price}원(10%할인)
						</div>
					</div>
				</li>
				</c:forEach> 
				<li>
				</li> 
			   </c:otherwise>
			 </c:choose>
			 
			</ul>
		</div>
		<div id="right_scroll">
			<a href='javascript:slide("right");'><img  src="${contextPath}/resources/image/right.gif"></a>
		</div>
		<input id="hidden_auto_slide_seconds" type="hidden" value="0">

		<div class="clear"></div>
	</section>
	<div class="clear"></div>
	<div id="sorting">
		<ul>
			<li><a class="active" href="#">추천 명소</a></li>
			<li><a href="https://www.jeju.go.kr/hallasan/index.htm" target="_black">한라산</a></li>
			<li><a style="border: currentColor; border-image: none;" 
			href="https://www.visitjeju.net/kr/detail/view?contentsid=CONT_000000000500477" target="_black">우도</a></li>
		</ul>
	</div>
	<table id="list_view">
		<tbody>
		  <c:forEach var="item" items="${goodsList }"> 
			<tr>
					<td class="goods_image">
						<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id}">
							   <img width="75" alt="" src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
						</a>
					</td>
					<td class="goods_description">
						<h2>
							<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">${item.goods_title }</a>
						</h2>
						<c:set var="goods_pub_date" value="${item.goods_published_date }" />
					   <c:set var="arr" value="${fn:split(goods_pub_date,' ')}" />
						<div class="writer_press"  >${item.goods_writer }저
							|${item.goods_publisher }|<c:out value="${arr[0]}" />
						</div>
					</td>
					<td class="price"><span>${item.goods_price }원</span><br>
						<strong>
						 <fmt:formatNumber  value="${item.goods_price*0.9}" type="number" var="discounted_price" />
				               ${discounted_price}원
						</strong><br>(10% 할인)
					</td>
			
					<td class="buy_btns">
					
						<ul>
							<li><a class="cart" href="javascript:add_cart('${goods.goods_id }')">예약</a></li>							
						</ul>
					</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="clear"></div>
	<div id="page_wrap">
		<ul id="page_control">
			<li><a class="no_border" href="#">Prev</a></li>
			<c:set var="page_num" value="0" />
			<c:forEach var="count" begin="1" end="10" step="1">
				<c:choose>
					<c:when test="${count==1 }">
						<li><a class="page_contrl_active" href="#">${count+page_num*10 }</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="#">${count+page_num*10 }</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<li><a class="no_border" href="#">Next</a></li>
		</ul>
	</div>
	</body>
	</html>