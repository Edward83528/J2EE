<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%
	//從application取出資料 
	//　application.getAttribute("屬性名稱"); 
	//　其傳回值就是取回的資料，不過傳回值是物件型態(Object)，需要轉換成正確的物件 
	//　型態才可使用，例如String str=(String)application.getAttribute("屬性名稱");
	Member member = (Member) application.getAttribute("member");//沒設初始,所以為null值
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=member%>

</body>
</html>