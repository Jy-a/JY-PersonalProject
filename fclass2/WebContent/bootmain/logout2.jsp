<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*로그아웃처리*/

//1. 초기설정
String login = session.getAttribute("login").toString();
if(login.equals("ok")||login.equals("yes")){
	session.setAttribute("login", "no");
	System.out.println("로그아웃");
} else {System.out.println("로그아웃 안됨");}

%>

<jsp:forward page="bootmain2.jsp"></jsp:forward>