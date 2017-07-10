<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 許多的jsp網頁，這些jsp網頁都會存取同一個application物件 -->
	<!-- application物件可以跨網頁分享資料，也可以跨不同連線(不同的人)分享資料。 -->
	<%
	    //將資料存入application 
		application.setAttribute("x", 123);
	 
		request.setAttribute("x", (int) (Math.random() * 49 + 1));
		String x = request.getParameter("x");
     
		//從application取出資料 ,不過傳回值是物件型態(Object)，需要轉換成正確的物件型態
	    Integer intX = (int) request.getAttribute("x");
		
		out.println(x + "<br>");//用url帶參數
		out.println(intX);//會得到亂數
	%>
</body>
</html>