<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/jspfs/2top.jspf" %>

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
</div>
 
 <div class="container">
  <div class=row>
  <div class="col-sm-1"></div>
  <div class="col-sm-4">
  <div class="month">      
  <ul>
    <li class="prev">&#10094;</li>
    <li class="next">&#10095;</li>
    <li>
      7월<br>
      <span style="font-size:18px">2020</span>
    </li>
  </ul>
</div>

<ul class="weekdays">
 &nbsp;<li>Mo</li>
  <li>Tu</li>
  <li>We</li>
  <li>Th</li>
  <li>Fr</li>
  <li>Sa</li>
  <li>Su</li>
</ul>

<ul class="days">  
  <li>28</li>
  <li>29</li>
  <li>30</li>
  <li>1</li>
  <li>2</li>
  <li>3</li>
  <li>4</li>
  <li>5</li>
  <li>6</li>
  <li>7</li>
  <li>8</li>
  <li>9</li>
  <li>10</li>
  <li>11</li>
  <li>12</li>
  <li>13</li>
  <li>14</li>
  <li>15</li>
  <li>16</li>
  <li>17</li>
  <li>18</li>
  <li>19</li>
  <li>20</li>
  <li>21</li>
  <li>22</li>
  <li>23</li>
  <li>24</li>
  <li>25</li>
  <li>26</li>
  <li><span class="active">27</span></li>
  <li>28</li>
  <li>29</li>
  <li>30</li>
  <li>31</li>
  <li>1</li>
</ul>
  </div>
  <div class="col-sm-1"></div>
   <div class="col-sm-5">
      <h2 style="color:palevioletred;  font-weight: bold;">내 프로필</h2><br/>
  <div class="card">
    <img class="card-img-top" src="/fclass2/imgs/pinkf.jpg" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">이름은 비워둘 수 없습니다</h4>
      <p class="card-text">프로필을 만들 수 있습니다</p>
     <button type="button" class="btn" data-toggle="modal" data-target="#myModal">
  내 프로필 수정
</button>
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">내 프로필 수정</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <!-- Modal body -->
      <div class="modal-body">
      아직 준비중인 기능입니다. <div class="spinner-border spinner-border-sm text-dark"></div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">돌아가기</button>
      </div>

    </div>
  </div>
</div>
    </div>
  </div>    

  </div>
 
  </div>
  <div class="col-sm-1"></div>
</div>
<%@ include file="/jspfs/2bottom.jspf" %>

