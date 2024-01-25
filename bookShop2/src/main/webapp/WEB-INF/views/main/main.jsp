<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<c:set var="sort2" value="${goodsMap.sort1 }" />
<c:set var="sort1" value="${goodsMap.sort1 }" />
<c:set var="sort" value="${goodsMap.sort }" />
	<!DOCTYPE html >
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
 
 <style> 
 
 
#ad_main_banner{

transition: all 0.25s ease 0s; width: 1136px;
}
#banner{
margin-top:5px;

float:left;
}


.main_book {
color:black;
margin-left:10px;
} 
.main_book h3{
margin: 0px 0px 5px; padding: 0px 0px 5px; color: rgb(51, 102, 153); text-transform: uppercase; font-family: "NanumGothic", Serif; font-size: 1.2em; border-bottom-color: rgb(51, 102, 153); border-bottom-width: 1px; border-bottom-style: solid;
}
}
.main_book .book {
	background-position: right;
	margin:5px;
	 border: 2px none;
	  border-image: none; 
	  width: 368px; 
	  height: 250px; 
	  text-align: center; 
	  float: left; 
	  background-image: url("../imgs/vline_grey.gif");
	   background-repeat: repeat-y;
	   border-color: white;
      border-size:400px;
}
.main_book .book img {
	margin: 15px 0px 0px;
}
.main_book .book:hover {
	border: none;
	border-image: none;
	background-image: none;
}
.main_book .no_back.book {
	background-image: none;
}
.main_book .book .sort {
	margin: 0px; padding: 2px 0px; margin-top: 4px;
}
.main_book .book .title {
	margin: 0px; padding: 2px 0px; font-weight: bold;
}
.main_book .book .writer {
	margin: 0px; padding: 2px 0px;
}
.main_book .book .price {
	margin: 0px; padding: 2px 0px;
}

.book{
 width: 400px; 
	  height: 300px; 
} 

a {
    color: rgb(102, 102, 102);
    text-decoration: none;
}

aside {
	width: 100%; float: left;
}

#outer_wrap {
align:center; padding: 0px; width: 1136px;
}
#wrap {
	margin: 0px auto; padding: 0px; width: 1160px; float: left;
}

.link {
	width: 368px; height: 230px; display: block; position: absolute; z-index: 2;
}


*{
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
	box-sizing: border-box;
}
*:before,
*:after{
	box-sizing: border-box;
}


h1 {
            display: table;
            margin: 5% auto 0;
            text-transform: uppercase;
            font-family: 'Anaheim', sans-serif;
            font-size: 4em;
            font-weight: 400;
            text-shadow: 0 1px white, 0 2px black;
        }

        .container {
            margin: 4% auto;
            width: 240px;
            height: 140px;
            position: relative;
            perspective: 1000px;
            }
            
#carousel {
  width: 100%;
  height: 100%;
  position: absolute;
  transform-style: preserve-3d;
  animation: rotation 100s infinite linear;
  transform: rotateY(0deg); /* 초기 회전 각도 설정 */
  transition: transform 1s; /* 추가된 부분 */
  
}
#carousel:hover {
  animation-play-state: paused;
   cursor: pointer;
}

#carousel figure {
  display: block;
  position: absolute;
  width: 200px;
  height: 116px;
  left: 10px;
  top: 10px;
  transition: 1s;
}

#carousel figure:nth-child(1) { transform: rotateY(0deg) translateZ(288px); }
#carousel figure:nth-child(2) { transform: rotateY(40deg) translateZ(288px); }
#carousel figure:nth-child(3) { transform: rotateY(80deg) translateZ(288px); }
#carousel figure:nth-child(4) { transform: rotateY(120deg) translateZ(288px); }
#carousel figure:nth-child(5) { transform: rotateY(160deg) translateZ(288px); }
#carousel figure:nth-child(6) { transform: rotateY(200deg) translateZ(288px); }
#carousel figure:nth-child(7) { transform: rotateY(240deg) translateZ(288px); }
#carousel figure:nth-child(8) { transform: rotateY(280deg) translateZ(288px); }
#carousel figure:nth-child(9) { transform: rotateY(320deg) translateZ(288px); }

img {
  -webkit-filter: grayscale(0);
  cursor: pointer;
  transition: all .5s ease;
}

#carousel img:hover {
  -webkit-filter: grayscale(0);
  transform: scale(2, 2);
}

@keyframes rotation {
  from {
    transform: rotateY(0deg);
  }
  to {
    transform: rotateY(360deg);
  }
}


 span { 
  color: #fff; 
  margin: 5%; 
  display: inline-block; 
  text-decoration: none; 
  font-size: 2rem; 
  transition: 0.6s color; 
  position: relative; 
  margin-top: -6rem; 
  border-bottom: none; 
  line-height: 0; }
 span:hover { color: #888; cursor: pointer; }
 
 article #ad_main_banner {
	padding:5px;
	margin:10px;
}

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
  padding: 15px 50px;
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
</head>
<body>

 <!-- ad_main_banner 부분 수정 -->
    <div id="ad_main_banner" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <a href="http://localhost:8090/mytest04/goods/goodsDetail.do?goods_id=471" target="_black">
                    <img width="1136" height="400" src="${contextPath}/resources/image/jeju.gif">
                </a>
            </div>
            <div class="carousel-item">
                <a href="http://localhost:8090/mytest04/goods/goodsDetail.do?goods_id=472" target="_black">
                    <img width="1136" height="400" src="${contextPath}/resources/image/제주11.jpg">
                </a>
            </div>
            <div class="carousel-item">
                <a href="http://localhost:8090/mytest04/goods/goodsDetail.do?goods_id=471" target="_black">
                    <img width="1136" height="400" src="${contextPath}/resources/image/B1.gif">
                </a>
            </div>
            <div class="carousel-item">
                <a href="http://localhost:8090/mytest04/goods/goodsDetail.do?goods_id=471" target="_black">
                    <img width="1136" height="400" src="${contextPath}/resources/image/b3.png">
                </a>
            </div>
        </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#ad_main_banner" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">이전</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#ad_main_banner" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">다음</span>
        </button>   
    </div>

<!-- 여기부터 -->
 <h1>Jeju images gallery</h1>
    <div class="container">
        <div id="carousel">
            <!-- figure 부분 수정 -->
            <figure><img width="200px" height="116px" src="${contextPath}/resources/image/성산.jpg" alt=""></figure>
            <figure><img width="200px" height="116px" src="${contextPath}/resources/image/우도.jpg"  alt=""></figure>
			<figure><img width="200px" height="116px" src="${contextPath}/resources/image/풍력.jpg"  alt=""></figure>
			<figure><img width="200px" height="116px" src="${contextPath}/resources/image/만세동산.jpg"  alt=""></figure>
			<figure><img width="200px" height="116px" src="${contextPath}/resources/image/흙붉은오름.jpg"  alt=""></figure>
			<figure><img width="200px" height="116px" src="${contextPath}/resources/image/백록담.jpg"  alt=""></figure>
			<figure><img width="200px" height="116px" src="${contextPath}/resources/image/주상절리.jpg"  alt=""></figure>
			<figure><img width="200px" height="116px" src="${contextPath}/resources/image/1111.jpg"  alt=""></figure>
			<figure><img width="200px" height="116px" src="${contextPath}/resources/image/B1.gif"  alt=""></figure>
             <!-- 나머지 figure도 유사하게 수정 -->
        </div>
    </div>
    
<section class="game-section">
<h3>제주 숙소 BEST 3</h3>
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
<h3>제주 카페 TOP 3</h3>
  <div id="ow">
   
   <div class="item" style="background-image:url('${contextPath}/resources/image/cafe1.jpg');">
      <div class="item-desc">
        <h3>Dota 2</h3>
        <p>Dota 2 is a multiplayer online battle arena by Valve. The game is a sequel to Defense of the
          Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
    
       <div class="item" style="background-image:url('${contextPath}/resources/image/cafe1-1.jpg');">
      <div class="item-desc">
        <h3>The Witcher 3</h3>
        <p>The Witcher 3 is a multiplayer online battle arena by Valve. The game is a sequel to Defense
          of the Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
    
    <div class="item" style="background-image: url('${contextPath}/resources/image/cafe2.jpg');">
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
<h3>올레 코스 GOOD 3</h3>
  <div id="ow">
   
   <div class="item" style="background-image:url('${contextPath}/resources/image/1.jpg');">
      <div class="item-desc">
        <h3>Dota 2</h3>
        <p>Dota 2 is a multiplayer online battle arena by Valve. The game is a sequel to Defense of the
          Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
    
       <div class="item" style="background-image:url('${contextPath}/resources/image/1-1.jpg');">
      <div class="item-desc">
        <h3>The Witcher 3</h3>
        <p>The Witcher 3 is a multiplayer online battle arena by Valve. The game is a sequel to Defense
          of the Ancients, which was a community-created mod for Blizzard Entertainment's Warcraft III.</p>
      </div>
    </div>
    
    <div class="item" style="background-image: url('${contextPath}/resources/image/2.jpg');">
      <div class="item-desc">
       <a href="${contextPath}/goods/goodsDetail.do?goods_id=540">
          <h3>젴주도</h3>
          </a>
        <p>하이 여긴 젴주도</p>
      </div>
    </div>

  </div>

</section>

<br><br>
<div id="ad_sub_banner">
	<img width="1136" height="117" src="${contextPath}/resources/image/pop.jpg">
</div>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
            // Bootstrap Carousel 초기화
            $('#ad_main_banner').carousel();

            // galleryspin 함수 및 Owl Carousel 부분은 제거
        });
    </script>
</body>
</html>
   
   