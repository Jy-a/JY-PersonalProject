<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/jspfs/2top.jspf" %>

<div class="container" style="margin-top:30px">
<div class="col-sm-3"></div>
<div class="col-sm-6">

<form action="/fclass2/bootmain/regi_login.jsp">
    <div class="form-group">
      <label for="userid">사용할 아이디를 입력하세요</label>
      <input type="text" class="form-control" id="userid" name="userid" required>
    </div>
    <div class="form-group">
      <label for="upwd">비밀번호를 입력하세요</label>
      <input type="password" class="form-control" id="upwd" name="upwd" required>
    </div>
    <label for="demo">이메일을 입력하세요</label>
    <div class="input-group mb-3">
      <input type="text" class="form-control" placeholder="Email" id="useremail" name="useremail" required>
      <div class="input-group-append">
        <span class="input-group-text" style="color: white; background-color: black;">@example.com</span>
      </div> </div>
     <br /><label for="usersex">성별을 입력하세요 (여자, 남자, 성별미표기 中 1)</label>
 <input type="text" class="form-control" placeholder="성별입력" id="usersex" name="usersex" required>
    <br /><br /><input class="form-check-input" type="checkbox" name="remember" required> 개인정보 제공에 동의합니다. 
      <div class="valid-feedback">Valid.</div>
      <br />
      <br />
    <button type="submit" class="btn">제출</button>
  </form>
</div>
<div class="col-sm-3"></div>
</div>

<%@ include file="/jspfs/2bottom.jspf" %>

