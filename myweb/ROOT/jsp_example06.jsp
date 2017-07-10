<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 以下為jsp指令元素寫法 -->
<!-- jsp import寫法,遵守key value -->
<%@page import="java.util.*, java.sql.*"%>
<%@page import="java.io.*"%>
<!-- autoFlush用於設定至客戶端的輸出串流是否要自動出清，預設是true -->
<%@page session="true" buffer="8kb" autoFlush="true"%>
<!-- info為此網頁的說明資訊 -->
<%@page info="測試一下"%>
<%@ page errorPage="jsp_example07_errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
     <!-- 取得網頁說明  -->
	<%=getServletInfo()%>
	<%
		int a = 10, b = 0;
		out.print(a / b);//產生錯誤,將導向錯誤頁面
	%>
</body>
</html>