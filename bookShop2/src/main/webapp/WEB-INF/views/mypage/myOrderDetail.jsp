<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<html>
<head>
<style>
article{
width:905px;
margin:20px 0px 0px 15px;}
#tb {
color:black;
}
</style>


</head>
<body>
	<h1>1. 주문 상세정보</h1>
	<table class="list_view">
		<tbody align=center>
			<tr style="background: #FFA500">
			     <td>주문번호 </td>
			      <td>주문일자 </td>
				<td colspan=2 class="fixed">주문상품명</td>
				<td>수량</td>
				<td>주문금액</td>
				<td>배송비</td>
				<td>예상적립금</td>
				<td>주문금액합계</td>
			</tr>
			<c:forEach var="item" items="${myOrderList }">
			<tr>
				    <td> ${item.order_id}</td>
				     <td> ${item.pay_order_time}</td>
					<td class="goods_image">
					  <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
					    <IMG width="75" alt=""  src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
					  </a>
					</td>
					<td>
					  <h2>
					     <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">${item.goods_title }</a>
					  </h2>
					</td>
					<td>
					  <h2>${item.order_goods_qty }개<h2>
					</td>
					<td><h2>${item.order_goods_qty *item.goods_sales_price}원 (10% 할인)</h2></td>
					<td><h2>0원</h2></td>
					<td><h2>${1500 *item.order_goods_qty }원</h2></td>
					<td>
					  <h2>${item.order_goods_qty *item.goods_sales_price}원</h2>
					</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="clear"></div>
<form  name="form_order">
	
	<div class="clear"></div>
	<br>
	<br>
	<H1>3.결제정보</H1>
	<DIV class="detail_table">
		<table>
			<tbody>
				<tr class="dot_line">
					<td class="fixed_join">결제방법</td>
					<td>
					   ${myOrderList[0].pay_method }
				    </td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">결제카드</td>
					<td>
					   ${myOrderList[0].card_com_name}
				    </td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">할부기간</td>
					<td>
					   ${myOrderList[0].card_pay_month }
				    </td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
    <div class="clear"></div>
	<br>
	<br>
		<a href="${contextPath}/main/main.do"> 
		   <IMG width="75" alt="" src="${contextPath}/resources/image/btn_shoping_continue.jpg">
		</a>
<div class="clear"></div>		
	
	</body>
	</html>		
			
			