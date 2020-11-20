<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../jspfs/2top.jspf" %>

<div class="container" style="margin-top:30px">
  <div class=row>
  <div class="col-sm-1"></div>
  <div class="col-sm-5">
  <h2  style="color:palevioletred;  font-weight: bold;">관리자 로그인 페이지</h2>
  <br />
   <p>관리자 프로필</p>
  <div class="card" style="width:400px">
    <img class="card-img-top" src="/fclass2/imgs/tea.jpg" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">이름은 비워둘 수 없습니다.</h4>
      <p class="card-text">프로필을 작성하세요.</p>
      <a href="#" class="btn">내 프로필 수정</a>
    </div>
 </div>
 </div>
 <div class="col-sm-1"></div>
 <div class="col-sm-4">
   <h2 style="color:palevioletred; font-weight: bold;">메모장</h2>
 <br />
 <form action="/fclass2/bootmain/regi_memo.jsp" method="post">
    <div class="form-group">
      <label for="mycomment">ONE LINE MEMO:</label>
      <input type="text" class="form-control" id="mycomment" name="mycomment">
    </div>
    <button type="submit" class="btn">등록</button>
  </form>
  <br />
  <%@ include file="../jspfs/memo.jspf" %>
</div>
 <div class="col-sm-1"></div>
 </div>
 </div>
<%@ include file="/jspfs/2bottom.jspf" %>

