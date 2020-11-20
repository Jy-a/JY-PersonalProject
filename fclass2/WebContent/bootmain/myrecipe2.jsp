
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="/jspfs/2top.jspf" %>

<div class=container style="margin-top:30px">
<h1 style="font-weight: bold; font-size: 65px; text-align:center;">♥토마토 요리♥</h1>
</div>
<div class=container>
<div class=row style="margin-top:100px">
<div class="col-sm-1">
</div>
<div class="col-sm-6">
<p><img src=/fclass2/imgs/toma1.jpg class="img-thumbnail"></p>
</div>
<div class="col-sm-4">
<div class="card cardReci">
  <div class="card-body"><p class="cardt">가지 라자냐</p>
  <p>제철 가지와 토마토가 듬뿍!</p>
  <p>재료: 가지, 토마토, 모짜렐라 치즈, 새우, 양파, 마늘, 토마토 소스</p>
  <p> 1. 마늘과 양파, 토마토를 잘게 다지고, 가지는 얇고 길쭉하게 썬다. </p>
  <p> 2. 올리브 오일에 마늘과 양파를 볶아준다.</p>
  <p> 3. 양파가 투명해지면 토마토를 넣고 같이 볶다가 새우와 토마토 소스를 넣는다.<br />* 간이 부족하면 소금을 넣는다.</p>
  <p> 4. 소스를 끓이는 동안 가지를 기름 없는 팬에 구워준다.</p>
  <p> 5. 에어프라이나 오븐용 그릇에 구운 가지를 깔고, 소스를 얹는다.</p>
  <p> 6. 차곡차곡 반복한 뒤 마지막에 치즈를 올려 굽는다. (180도 8분)</p>
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
  <div class="card-body"><p class="cardt">바질페스토 냉파스타</p>
  <p>새콤달콤 입맛도는 파스타!</p>
  <p>재료: 파스타, 바질페스토, 프레시 모짜렐라, 방울 토마토, 꿀, 올리브오일, 마늘, 양파, 레몬즙</p>
  <p> 1. 양파와 마늘을 다지고 방울 토마토는 반으로 자른다. </p>
  <p> 2. 야채와 꿀, 올리브 오일, 레몬즙, 바질페스토 한 큰 술을 넣어 섞어준다. <br/>*간이 부족하면 소금으로 맞춘다.</p>
  <p> 3. 파스타 면을 취향껏 삶은 뒤 식힌다.</p>
  <p> 4. 그릇에 담은 면 위에 소스를 붓고 프레시 모짜렐라를 얹는다.</p>
  <p style="font-weight: bold;"> 완성! </p>
  </div>
</div>
</div>
<div class="col-sm-6">
<p><img src=/fclass2/imgs/toma3.jpg class="img-thumbnail"></p>
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

