<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/jspfs/2top.jspf" %>
<!-- 메인 화면 이미지 카루셀 -->
<div class="container" style="margin-top:30px">
    <div id="demo" class="carousel slide" data-ride="carousel">

      <!-- Indicators -->
      <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
      </ul>
    
      <!-- The slideshow -->
         <div class="carousel-inner" style="height: 600px; margin: 50px;">
        <div class="carousel-item active">
          <img src="/fclass2/imgs/bap2.jpg">
           <div class="carousel-caption">
    <h1>한그릇 한끼</h1>
    <h5>설거지는 줄이고 더 맛있게</h5>
        </div>
        </div>
        <div class="carousel-item">
          <img src="/fclass2/imgs/d2.jpg">
            <div class="carousel-caption">
    <h1>토마토</h1>
    <h5>제철 음식으로 식단 구성하기</h5>
        </div>
        </div>
        <div class="carousel-item">
          <img src="/fclass2/imgs/ban.jpg">
             <div class="carousel-caption">
    <h1>간단 반찬</h1>
    <h5>적은 재료로 쉽고 빠르게</h5>
        </div>
        </div>
      </div>
      <!-- Left and right controls -->
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>
    
    <!-- 메인화면 하단  -->
    <div class=container>
  <div class="row">
  
  <div class="col-sm-6">
  <h1 style="color:palevioletred;  font-weight: bold;">오늘의 레시피</h1>
    <br />
  <div class="youtube">
  <iframe src="https://www.youtube.com/embed/3WxjyR9EEwY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div> 
  </div>
  <div class="col-sm-1"></div>
  
   <div class="col-sm-5">
  <h1 style="color:palevioletred;  font-weight: bold;">바로가기!</h1>
    <br /><div class="card"> <div class="card-body">
    <br />
  <a class='links' href='/fclass2/bootmain/about.jsp'>● 사이트 소개 보러가기  ▶</a>
  <br />
    <br />
  <a class='links' href='/fclass2/bootmain/myrecipe1.jsp'>● 레시피 보러가기  ▶</a>
    <br />
      <br />
  <a class='links' href='/fclass2/bootmain/Loginform2.jsp'>● 로그인 하러가기  ▶</a>
    <br />
      <br />
  <a class='links' href='/fclass2/bootmain/submitform.jsp'>● 회원가입 하러가기  ▶</a>
    <br />
      <br />
  </div>
 </div></div>
  </div>
  
</div>
</div>
<%@ include file="/jspfs/2bottom.jspf" %>
