
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="/jspfs/2top.jspf" %>

<div class=container style="margin-top:30px">
<h1 style="font-weight: bold; font-size:65px; text-align:center;">♥한 그릇 요리♥</h1>
</div>

<div class=container>
<div class=row style="margin-top:100px">
<div class="col-sm-1">
</div>
<div class="col-sm-6">
<p><img src=/fclass2/imgs/oneb4.jpg class="img-thumbnail"></p>
</div>
<div class="col-sm-4">
<div class="card cardReci">
  <div class="card-body"><p class="cardt">들기름 막국수</p>
  <p>준비물은 다섯 가지뿐!</p>
  <p>재료: 진간장, 메밀면, 들기름, 조미김, 통깨</p>
  <p> 1. 끓는 물에 면을 넣고 삶는다. </p>
  <p> 2. 찬물로 면을 박박 문질러 헹군다.</p>
  <p> 3. 면의 물기를 빼고, 그릇에 담아 간장 2스푼, 들기름 2스푼, 조미김 1봉지, 통깨 1큰술을 넣는다.</p>
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
  <div class="card-body"><p class="cardt">청경채 볶음밥</p>
  <p>남는 청경채 처리에 최고!</p>
  <p>재료: 청경채, 연두, 찬밥, 기타 단백질(소세지,베이컨 등), 통깨</p>
  <p> 1. 청경채를 아주 잘게 다진다. </p>
  <p> 2. 팬에 기름을 두르고, 청경채의 수분이 날아갈때까지 볶는다.<br/>*기타 단백질 류는 이 중간에 넣어서 같이 볶아준다.</p>
  <p> 3. 청경채의 물기가 날아가면 밥을 넣고 볶다가 연두로 간해준다. 이때 기름에 연두를 눌리면 향이 좋다.</p>
  <p> 4. 통깨를 듬뿍 넣고 섞은 뒤 그릇에 담는다.</p>
  <p style="font-weight: bold;"> 완성! </p>
  </div>
</div>
</div>
<div class="col-sm-6">
<p><img src=/fclass2/imgs/oneb5.jpg class="img-thumbnail"></p>
</div>
<div class="col-sm-1">
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
</div>

<%@ include file="/jspfs/2bottom.jspf" %>

