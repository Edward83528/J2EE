
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.hello"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		////使用EL隱含物件,EL若不指定屬性的存在範圍，則預設是以page、request、session、application的順序來尋找EL中所指定的屬性
		//page、request、session和application。這4個加上Scope就是EL取得某一個的前置詞
		// Scope
		// 1. Page
		pageContext.setAttribute("name", "<h1>harry</h1>");
		// 2. request
		request.setAttribute("name", "request");
		// 3. session
		session.setAttribute("name", "session");
		// 4. application
		application.setAttribute("name", "app");
	%>

	Page: ${pageScope.name }
	<br> Request: ${requestScope.name }
	<br> Session: ${sessionScope.name }
	<br> App: ${applicationScope.name }
	<br> 1. m1():<%=hello.m1("harry")%>
	<br> 2. m1(): ${hello.m1(param.name) }
	<!--可在url打參數接收  -->

</body>
</html>