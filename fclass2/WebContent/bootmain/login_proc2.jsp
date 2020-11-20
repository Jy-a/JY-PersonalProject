<%@page import="java.util.Objects"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="gdb.Cdb"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String save_id = "admin";
String save_pwd = "1111";
String userid = request.getParameter("userid");
String upwd = request.getParameter("upwd");
String msg = "no messsage";

//2.로그인 판단
String login= "no";
 //일반 로그인
String sql = "SELECT userid, upwd FROM loginlist2 WHERE userid = '"+ userid +"' AND upwd = '"+ upwd +"'";
//쿼리실행
ResultSet rs = (new Cdb()).rtnResultSet(sql);
if(!Objects.isNull(rs) && rs.next() && !userid.equals(save_id))	
 {msg = "일반로그인";
	//세션 로그인 오케이 넣기
	session.setAttribute("userid", rs.getString("userid"));
	session.setAttribute("upwd", rs.getString("upwd"));
	session.setAttribute("login", "ok");
	System.out.println("msg : " + msg);
	response.sendRedirect("bootmain_mypage.jsp");	
} else if(userid.equals(save_id) && upwd.equals(save_pwd)){
	msg = "admin 로그인";
	session.setAttribute("login", "yes"); 
	System.out.println("msg : " + msg);
		response.sendRedirect("bootmain_adminpage.jsp");}
else {msg = "실패";
System.out.println("msg : " + msg);
session.setAttribute("login", login);
response.sendRedirect("bootmain2.jsp");
}

%>