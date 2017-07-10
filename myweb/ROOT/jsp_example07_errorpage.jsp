<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 說明這是一個錯誤頁面  -->
<!-- isErrorPage用以設定JSP頁面是否為處理例外的頁面，預設值為false，當設定為true時，JSP網頁將可存取隱含的exception物件 -->
<%@page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println(exception);//java.lang.ArithmeticException: / by zero
	%>
</body>
</html>