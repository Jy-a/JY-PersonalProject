<%@page import="gdb.Cdb"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ include file="/jspfs/2top.jspf" %>

<div class="container" style="margin-top:30px">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-8">

 <h2  style="color:palevioletred;  font-weight: bold;">로그인 정보 목록 화면</h2>
     <br>         
  <table class="table table-striped">
    <thead>
      <tr>
        <th>USER ID</th>
        <th>PASSWORD</th>
         <th>EMAIL</th>
          <th>USER SEX</th>
      </tr>
    </thead>
    <tbody>
<% 
try{
	//sql 
String sql = "SELECT userid, upwd, useremail, usersex FROM loginlist2 ORDER BY userid ASC";
//쿼리실행 
ResultSet rs = (new Cdb()).rtnResultSet(sql);

while(rs.next()){
	// rs.next : 행을 반복 출력할 행이 있는 true를 리턴하고 다음행이 false경우 리턴 x
String userid = rs.getString("userid");
String upwd = rs.getString("upwd");
String useremail = rs.getString("useremail");
String usersex = rs.getString("usersex");
%> 

 <tr>
<td><%=userid%></td>
<td><%=upwd%></td>
<td><%=useremail%></td>
<td><%=usersex%></td>
</tr>
<%}
} 
catch(Exception e){
//try에서 예외가 발생하면 호출되는 함수 
System.out.printf("예외메세지 : %s \n", e.getMessage() );
} %>

 </tbody>
  </table>
    	</div>
    <!-- 로그인 끝 -->
</div>
<div class="col-sm-2">
</div>
</div>
<div class="row">
<div class="col-sm-4">
</div>
<div class="col-sm-4">
<ul class="pagination justify-content-center" style="margin:20px 0">
  <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
  <li class="page-item"><a class="page-link" href="#">1</a></li>
  <li class="page-item"><a class="page-link" href="#">2</a></li>
  <li class="page-item"><a class="page-link" href="#">3</a></li>
  <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>
<div class="col-sm-4">
</div>
</div>
<%@ include file="/jspfs/2bottom.jspf" %>

