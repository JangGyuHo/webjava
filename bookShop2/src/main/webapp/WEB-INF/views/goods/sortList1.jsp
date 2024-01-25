<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<c:set var="sort1" value="${goodsMap.sort1 }" />
	<!DOCTYPE html >
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script>
$("#ow").owlCarousel({
	  autoWidth: true,
	  loop: true
	});
	$(document).ready(function () {
	  $("#ow .item").click(function () {
	    $("#ow .item").not($(this)).removeClass("active");
	    $(this).toggleClass("active");
	  });
	});
</script>
<style>
@charset "utf-8";

/******* Fonts Import Start **********/
@import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap");
/********* Fonts Face CSS End **********/

/******* Common Element CSS Start ******/
* {
  margin: 0px;
  padding: 0px;
}
body {
  font-family: "Roboto", sans-serif;
  font-size: 16px;
}
.clear {
  clear: both;
}
img {
  max-width: 100%;
  border: 0px;
}
ul,
ol {
list-style:none;}
a {
  text-decoration: none;
  color: inherit;

  transition: all 0.4s ease-in-out;
  -webkit-transition: all 0.4s ease-in-out;
}
a:focus,
a:active,
a:visited,
a:hover {
  text-decoration: none;
  outline: none;
}
a:hover {
  color: #e73700;
}
h2 {
  margin-bottom: 48px;
  padding-bottom: 16px;
  font-size: 20px;
  line-height: 28px;
  font-weight: 700;
  position: relative;
  text-transform: capitalize;
}
h3 {
  margin: 0 0 10px;
  font-size: 28px;
  line-height: 36px;
}
button {
  outline: none !important;
}
/******* Common Element CSS End *********/

/* -------- title style ------- */
.line-title {
  position: relative;
  width: 400px;
}
.line-title::before,
.line-title::after {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  height: 4px;
  border-radius: 2px;
}
.line-title::before {
  width: 100%;
  background: #f2f2f2;
}
.line-title::after {
  width: 32px;
  background: #e73700;
}

/******* Middle section CSS Start ******/
/* -------- Landing page ------- */
.game-section {
  padding: 60px 50px;
}
.game-section .owl-stage {
  margin: 15px 0;
}
.game-section .item {
  margin: 0 15px 60px;
  width: 320px;
  height: 400px;

  display: -webkit-flex;
  align-items: flex-end;
  -webkit-align-items: flex-end;
  background: #343434 no-repeat center center / cover;
  border-radius: 16px;
  overflow: hidden;
  position: relative;
  transition: all 0.4s ease-in-out;
  -webkit-transition: all 0.4s ease-in-out;
  cursor: pointer;
}
.game-section .item.active {
  width: 500px;
  box-shadow: 12px 40px 40px rgba(0, 0, 0, 0.25);
  -webkit-box-shadow: 12px 40px 40px rgba(0, 0, 0, 0.25);
}
.game-section .item:after {
  content: "";

  position: absolute;
  height: 100%;
  width: 100%;
  left: 0;
  top: 0;
 
}
.game-section .item-desc {
  padding: 0 24px 12px;
  color: #fff;

  z-index: 1;
  overflow: hidden;
  transform: translateY(calc(100% - 54px));
  -webkit-transform: translateY(calc(100% - 54px));
  transition: all 0.4s ease-in-out;
  -webkit-transition: all 0.4s ease-in-out;
}
.game-section .item.active .item-desc {
  transform: none;
  -webkit-transform: none;
}
.game-section .item-desc p {
  opacity: 0;
  -webkit-transform: translateY(32px);
  transform: translateY(32px);
  transition: all 0.4s ease-in-out 0.2s;
  -webkit-transition: all 0.4s ease-in-out 0.2s;
}
.game-section .item.active .item-desc p {
  opacity: 1;
  -webkit-transform: translateY(0);
  transform: translateY(0);
}
.game-section .owl-theme.custom-carousel .owl-dots {
  margin-top: -20px;
  position: relative;
  z-index: 5;
}
/******** Middle section CSS End *******/

/***** responsive css Start ******/

@media (min-width: 992px) and (max-width: 1199px) {
  h2 {
    margin-bottom: 32px;
  }
  h3 {
    margin: 0 0 8px;
    font-size: 24px;
    line-height: 32px;
  }

  /* -------- Landing page ------- */
  .game-section {
    padding: 50px 30px;
  }
  .game-section .item {
    margin: 0 12px 60px;
    width: 260px;
    height: 360px;
  }
  .game-section .item.active {
    width: 400px;
  }
  .game-section .item-desc {
    transform: translateY(calc(100% - 46px));
    -webkit-transform: translateY(calc(100% - 46px));
  }
}

@media (min-width: 768px) and (max-width: 991px) {
  h2 {
    margin-bottom: 32px;
  }
  h3 {
    margin: 0 0 8px;
    font-size: 24px;
    line-height: 32px;
  }
  .line-title {
    width: 330px;
  }

  /* -------- Landing page ------- */
  .game-section {
    padding: 50px 30px 40px;
  }
  .game-section .item {
    margin: 0 12px 60px;
    width: 240px;
    height: 330px;
  }
  .game-section .item.active {
    width: 360px;
  }
  .game-section .item-desc {
    transform: translateY(calc(100% - 42px));
    -webkit-transform: translateY(calc(100% - 42px));
  }
}

@media (max-width: 767px) {
  body {
    font-size: 14px;
  }
  h2 {
    margin-bottom: 20px;
  }
  h3 {
    margin: 0 0 8px;
    font-size: 19px;
    line-height: 24px;
  }
  .line-title {
    width: 250px;
  }

  /* -------- Landing page ------- */
  .game-section {
    padding: 30px 15px 20px;
  }
  .game-section .item {
    margin: 0 10px 40px;
    width: 200px;
    height: 280px;
  }
  .game-section .item.active {
    width: 270px;
    box-shadow: 6px 10px 10px rgba(0, 0, 0, 0.25);
    -webkit-box-shadow: 6px 10px 10px rgba(0, 0, 0, 0.25);
  }
  .game-section .item-desc {
    padding: 0 14px 5px;
    transform: translateY(calc(100% - 42px));
    -webkit-transform: translateY(calc(100% - 42px));
  }
}


article{
margin:20px 0px 0px 15px;
}
div #ow {
display:flex;
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

<section class="game-section">
<h3>제주 숙소</h3>
  <div id="ow">
   
   <div class="item" style="background-image:url('${contextPath}/resources/image/b3.png');">

      <div class="item-desc">
         <a href="${contextPath}/goods/goodsDetail.do?goods_id=580">
        <h3>Dota 2</h3>
        </a>
        <p>Dota 2 is a multiplayer online battle arena by Valve. The game is a sequel to Defense of the
          Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
    
       <div class="item" style="background-image:url('${contextPath}/resources/image/t1.jpg');">
      <div class="item-desc">
        <h1>남 제주투어</h1>
        <p>붕붕붕 아주 작은 자동차 꼬마 자동차가 나간다~</p>
      </div>
    </div>
    
    <div class="item" style="background-image: url(https://www.yudiz.com/codepen/expandable-animated-card-slider/rdr-2.jpg);">
      <div class="item-desc">
          <h3>젴주도</h3>
        <p>하이 여긴 젴주도</p>
      </div>
        </div>
        
      
    <div class="item" style="background-image: url(https://www.yudiz.com/codepen/expandable-animated-card-slider/pubg.jpg);">
      <div class="item-desc">
        <h3>PUBG Mobile</h3>
        <p>PUBG 2 is a multiplayer online battle arena by Valve. The game is a sequel to Defense of the
          Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
  </div>
</section>

<section class="game-section">
<h3>제주 숙소</h3>
  <div id="ow">
   
   <div class="item" style="background-image:url('${contextPath}/resources/image/hotel1.jpg');">
      <div class="item-desc">
        <h3>Dota 2</h3>
        <p>Dota 2 is a multiplayer online battle arena by Valve. The game is a sequel to Defense of the
          Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
    
       <div class="item" style="background-image:url('${contextPath}/resources/image/hotel1-1.jpg');">
      <div class="item-desc">
        <h3>The Witcher 3</h3>
        <p>The Witcher 3 is a multiplayer online battle arena by Valve. The game is a sequel to Defense
          of the Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
    
    <div class="item" style="background-image: url('${contextPath}/resources/image/hotel2.jpg');">
      <div class="item-desc">
       <a href="${contextPath}/goods/goodsDetail.do?goods_id=540">
          <h3>젴주도</h3>
          </a>
        <p>하이 여긴 젴주도</p>
      </div>
    </div>

  </div>

</section>


  <section class="game-section">
  <div id="ow">
   
   <div class="item" style="background-image:url('${contextPath}/resources/image/b3.png');">

      <div class="item-desc">
        <h3>Dota 2</h3>
        <p>Dota 2 is a multiplayer online battle arena by Valve. The game is a sequel to Defense of the
          Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
       <div class="item" style="background-image:url('${contextPath}/resources/image/t1.jpg');">
      <div class="item-desc">
        <h3>The Witcher 3</h3>
        <p>The Witcher 3 is a multiplayer online battle arena by Valve. The game is a sequel to Defense
          of the Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
   
  </div>

</section>

<div class="main_book">
   <c:set  var="goods_sort" value="0" />
	<h3>제주 숙소</h3>
	<c:forEach var="item" items="${goodsMap.sort1 }">
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
<!-- <div class="clear"></div>
<div id="ad_sub_banner">
	<img width="770" height="117" src="${contextPath}/resources/image/card.jpg">
</div>
 -->

<div class="clear"></div>
<div id="ad_sub_banner">
	<img width="1136" height="117" src="${contextPath}/resources/image/cos1.jpg">
</div>

</body>
</html>
   
   