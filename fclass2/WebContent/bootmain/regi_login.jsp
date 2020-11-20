<%@page import="gdb.Cdb"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import = "java.sql.*"
%>
f
<%
// 1.인코딩 설정
request.setCharacterEncoding("utf-8");
String sql = "INSERT INTO LOGINLIST2 (userid, upwd, useremail, usersex) VALUES ('"+request.getParameter("userid")+"','"+request.getParameter("upwd")+"', '"+request.getParameter("useremail")+"','"+request.getParameter("usersex")+"')";
 Cdb cdb = new Cdb();
 cdb.doDML(sql);
%>
<jsp:forward page="bootmain2.jsp"></jsp:forward>