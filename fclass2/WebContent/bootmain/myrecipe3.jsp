
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="/jspfs/2top.jspf" %>

<div class=container style="margin-top:30px">
<h1 style="font-weight: bold; font-size: 65px; text-align:center;">♥간단 반찬♥</h1>
</div>
<div class=container>
<div class=row style="margin-top:100px">
<div class="col-sm-1">
</div>
<div class="col-sm-6">
<p><img src=/fclass2/imgs/banc2.jpg class="img-thumbnail"></p>
</div>
<div class="col-sm-4">
<div class="card cardReci">
  <div class="card-body"><p class="cardt">팽이버섯전</p>
  <p>10분이면 완성!</p>
  <p>재료: 팽이버섯, 계란, 소금, 후추</p>
  <p> 1. 팽이버섯을 잘게 다진다. </p>
  <p> 2. 계란을 풀고 다진 팽이버섯을 넣어 섞는다.</p>
  <p> 3. 소금과 후추로 간한다.</p>
  <p> 4. 기름을 두른 팬에 숟가락 크기로 올려 중불로 구워준다.</p>
  <p style="font-weight: bold;"> 완성! </p>
  </div>
</div>
</div>
<div class="col-sm-1">
</div>
</div>
</div>

<div class=container style="margin-top:100px">
<div class=row>
<div class="col-sm-1">
</div>
<div class="col-sm-4">
<div class="card cardReci">
  <div class="card-body"><p class="cardt">꽈리고추 돼지고기 볶음</p>
  <p>신뢰의 백종원 레시피!</p>
  <p>재료: 꽈리고추, 청양고추, 돼지고기, 마늘, 대파,  설탕, 간장 </p>
  <p> 1. 꽈리고추는 손가락 한 마디 정도, 청양고추와 대파는 잘게 다져서 준비한다. </p>
  <p> 2. 돼지고기도 비슷한 크기로 준비한다.</p>
  <p> 3. 팬에 돼지고기를 볶다가 기름이 나오면 대파와 마늘을 넣어 향을 낸다.</p>
  <p> 4. 고기 기름에 설탕과 간장을 넣어 간을 한다.</p>
   <p> 5. 고기가 노릇해지면 고추를 넣고 빠르게 섞은 뒤 그릇에 담는다.</p>
  <p style="font-weight: bold;"> 완성! </p>
  </div>
</div>
</div>
<div class="col-sm-6">
<p><img src=/fclass2/imgs/banc4.jpg class="img-thumbnail"></p>
</div>
<div class="col-sm-1">
</div>
</div>
<div class=container>

<div class=row>
 <div class="col-sm-5"></div>
 <div class="col-sm-2">
 <br /><br /><br />
 <%
  Object login3 = session.getAttribute("login");
  System.out.println("login:" + login);  
  String strlog2 = null;
  //로그인지 아닌지 확인 
  System.out.println(!Objects.isNull(login) );
  System.out.println("strlog2: " + strlog2);
  if(!Objects.isNull(login) && login.equals("yes")){
	  System.out.println("strlog2 : " + strlog2);
	  // 출력
	strlog2 = "<button class='btn'>관리자 글쓰기</button>";
	  out.write(strlog2);
  } else {System.out.println("strlog2 : " + strlog2);}
 %>
 </div>
 <div class="col-sm-5"></div>
</div>
</div>

</div>



<%@ include file="/jspfs/2bottom.jspf" %>

