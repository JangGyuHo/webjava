<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="orderList"  value="${orderMap.orderList}"  />
<c:set var="deliveryInfo"  value="${orderMap.deliveryInfo}"  />
<c:set var="orderer"  value="${orderMap.orderer}"  />
<!DOCTYPE html >

<html>
<head>
<meta  charset="utf-8">

<script  type="text/javascript">
function fn_modify_order_state(order_id){
	var s_delivery_state=document.getElementById("s_delivery_state");
    var index = s_delivery_state.selectedIndex;   //선택한 옵션의 인덱스를 구합니다.
    var value = s_delivery_state[index].value;    //선택한 옵션의 값을 구합니다.
	console.log("value: " +value);
	$.ajax({
		type : "post",
		async : false, //false인 경우 동기식으로 처리한다.
		url : "${contextPath}/admin/order/modifyDeliveryState.do",
		data : {
			order_id:order_id,
			'delivery_state':value
		},
		success : function(data, textStatus) {
			if(data.trim()=='mod_success'){
				alert("영화 예매 정보를 수정했습니다.");
				location.href="${contextPath}/admin/order/orderDetail.do?order_id="+order_id;
			}else if(data.trim()=='failed'){
				alert("다시 시도해 주세요.");	
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

</script>

</head>
<body>

	<H1>1. 영화 상세정보</H1>
	<table class="list_view">
		<tbody align=center>
			<tr style="background: #FFA500">
			     <td>영화번호 </td>
				<td colspan=2 class="fixed">제품</td>
				<td>영화티켓구매수</td>
				<td>주문금액</td>
				<td>영화 굿즈가격</td>
				<td>영화 구매 포인트</td>
				<td>주문금액합계</td>
			</tr>
			<tr>
			<c:forEach var="item" items="${orderList }">
				    <td> ${item.order_id }</td>
					<td class="goods_image">
					  <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
					    <img width="75" alt=""  src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
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
	<br>
	<br>
	<br>
		<br>
		<br> 
		<a href="${contextPath}/main/main.do"> 
		   <IMG width="75" alt="" src="${contextPath}/resources/image/btn_shoping_continue.jpg">
		</a>
<div class="clear"></div>		
	
	</body>		
		</html>	
			