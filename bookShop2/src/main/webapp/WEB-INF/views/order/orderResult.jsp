<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<style>
#tb{
color:white;
}


</style>
</head>
 <body>
	<H1 id="tb">1.최종 결제 내역서</H1>
	<TABLE class="list_view" id="tb">
		<TBODY align=center>
			<tr style="background: #33ff00">
			     <td>결제번호 </td>
				<td colspan=2 class="fixed">영화제목</td>
				<td>티켓수</td>
				<td>결제금액</td>
				<td>포인트</td>
				<td>예상적립금</td>
				<td>결제금액합계</td>
			</tr>
			<TR>
				<c:forEach var="item" items="${myOrderList }">
				    <td> ${item.order_id }</td>
					<TD class="goods_image">
					  <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
					    <IMG width="75" alt=""  src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
					  </a>
					</TD>
					<TD>
					  <h2>
					     <A href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">${item.goods_title }</A>
					  </h2>
					</TD>
					<td>
					  <h2>${item.order_goods_qty }개<h2>
					</td>
					<td><h2>${item.order_goods_qty *item.goods_sales_price}원 (10% 할인)</h2></td>
					<td><h2>0P</h2></td>
					<td><h2>${1500 *item.order_goods_qty }원</h2></td>
					<td>
					  <h2>${item.order_goods_qty *item.goods_sales_price}원</h2>
					</td>
			</TR>
			</c:forEach>
		</TBODY>
	</TABLE>
	<DIV class="clear"></DIV>
<form  name="form_order">
	<br>
	<br>
	<H1 id="tb">2.영화관 예매/예약 정보</H1>
	<DIV class="detail_table">	
		<TABLE id="tb">
			<TBODY>
			<!-- 	<TR class="dot_line">
					<TD class="fixed_join">결제 방법</TD>
					<TD>
					   ${myOrderInfo.delivery_method }
				    </TD>
				</TR>  -->
				<TR class="dot_line">
					<TD class="fixed_join">결제하실 분</TD>
					<TD>
					${myOrderInfo.receiver_name }
					</TD>
				</TR>
				<TR class="dot_line">
					<TD class="fixed_join">결제자 휴대폰번호</TD>
					<TD>
					  ${myOrderInfo.receiver_hp1}-${myOrderInfo.receiver_hp2}-${myOrderInfo.receiver_hp3}</TD>
				  </TR>
				<TR class="dot_line">
					<TD class="fixed_join">영화관전화번호</TD>
					<TD>
					   ${myOrderInfo.receiver_tel1}-${myOrderInfo.receiver_tel2}-${myOrderInfo.receiver_tel3}</TD>
					</TD>
				</TR>


				<TR class="dot_line">
					<TD class="fixed_join">영화관주소</TD>
					<td>
					   ${myOrderInfo.delivery_address}
					</td>>
				</TR>
				<TR class="dot_line">
					<TD class="fixed_join">발신 메시지</TD>
					<TD>
					${myOrderInfo.delivery_message}
					</TD>
				</TR>
				<TR class="dot_line">
					<TD class="fixed_join">현장 발권</TD>
					<td>
					${myOrderInfo.gift_wrapping}
					</td>
				</TR>
			</TBODY>
		</TABLE>
		
	</DIV>
	<div >
	  <br><br>
	   <h2 id="tb">주문고객</h2>
		 <table id="tb">
		   <TBODY id="tb">
			 <tr class="dot_line">
				<td ><h2>이름</h2></td>
				<td>
				 <input  type="text" value="${orderer.member_name}" size="15" disabled />
				</td>
			  </tr>
			  <tr class="dot_line">
				<td ><h2>핸드폰</h2></td>
				<td>
				 <input  type="text" value="${orderer.hp1}-${orderer.hp2}-${orderer.hp3}" size="15" disabled />
				</td>
			  </tr>
			  <tr class="dot_line">
				<td ><h2>이메일</h2></td>
				<td>
				   <input  type="text" value="${orderer.email1}@${orderer.email2}" size="15" disabled />
				</td>
			  </tr>
		   </TBODY>
		</table>
	</div>
	<DIV class="clear"></DIV>
	<br>
	<br>
	<br>
	<H1 id="tb">3.결제정보</H1>
	<DIV class="detail_table">
		<table id="tb">
			<TBODY>
				<TR class="dot_line">
					<TD class="fixed_join">결제방법</TD>
					<TD>
					   ${myOrderInfo.pay_method }
				    </TD>
				</TR>
				<TR class="dot_line">
					<TD class="fixed_join">결제카드</TD>
					<TD>
					   ${myOrderInfo.card_com_name}
				    </TD>
				</TR>
				<TR class="dot_line">
					<TD class="fixed_join">할부기간</TD>
					<TD>
					   ${myOrderInfo.card_pay_month }
				    </TD>
				</TR>
			</TBODY>
		</table>
	</DIV>
</form>
    <DIV class="clear"></DIV>
	<br>
	<br>
	<br>
	<center>
		<br>
		<br> 
		<a href="${contextPath}/main/main.do"> 
		   <IMG width="75" alt="" src="${contextPath}/resources/image/btn_shoping_continue.jpg">
		</a>
<DIV class="clear"></DIV>		
	
			
			
			