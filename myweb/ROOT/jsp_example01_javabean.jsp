<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
//一支class要被稱為Bean，需符合三個條件：
//1. 提供一個公開的，無引數的建構子。(public no-argument constructor)
//2. 所有的屬性權限都是private的，並提供getter/setter來存取。
//3. 實作java.io.Serializable介面。
 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Member member2 = new Member("002", "Tony");
		//在一個web應用程式中(通常一個資料夾就是一個應用程式)會產生一個application物件，
		//這個應用程式有許多的jsp網頁，這些jsp網頁都會存取同一個application物件，即使使用者不是同一個，也會存取相同的application物件，
		//因此，application物件可以跨網頁分享資料，也可以跨不同連線(不同的人)分享資料。 
		application.setAttribute("member", member2);
		//把member2的id改為003
		member2.setId("003");
	%>
	Welcome,
	<%=member2%>
	<%
		member2.m1();
	%>
</body>
</html>