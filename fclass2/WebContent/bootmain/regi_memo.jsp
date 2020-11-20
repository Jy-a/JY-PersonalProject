<%@page import="gdb.Cdb"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import = "java.sql.*"
%>

<%
// 1.인코딩 설정
request.setCharacterEncoding("utf-8");
String sql = "INSERT INTO mycomment_memo (mycomment) VALUES ('"+request.getParameter("mycomment")+"')";

 Cdb cdb = new Cdb();
 cdb.doDML(sql);
%>

<jsp:forward page="bootmain_adminpage.jsp"></jsp:forward>