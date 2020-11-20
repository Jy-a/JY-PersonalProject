
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/jspfs/2top.jspf" %>

<div class=container style="margin-top:30px">
<div class=row>

<div class="col-sm-4">
</div>
<div class="col-sm-4">
<div class="card">
<div class="card-body">
 <h2 style="color:palevioletred;  font-weight: bold;">로그인</h2>
          <form action="login_proc2.jsp" method="post">
            <div class="form-group">
              <label for="userid">USER ID:</label>
              <input type="text" class="form-control" id="userid" placeholder="Enter user id" name="userid" required="required">
            </div>
            <div class="form-group">
              <label for="upwd">PASSWORD:</label>
              <input type="password" class="form-control" id="upwd" placeholder="Enter password" name="upwd" required="required">
            </div>
            <div class="form-group form-check">
            </div>
            <button type="submit" class="btn">로그인</button> &nbsp;&nbsp; <button onclick="location.href='/fclass2/bootmain/submitform.jsp'" class="btn">회원가입</button>
          </form>
    </div></div>
    <!-- 로그인 끝 -->

</div>

<div class="col-sm-4">
</div>

</div>

</div>

<%@ include file="/jspfs/2bottom.jspf" %>

