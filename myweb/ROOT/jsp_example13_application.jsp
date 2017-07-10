<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// application物件可以跨網頁分享資料，也可以跨不同連線(不同的人)分享資料。
		Integer x = (Integer) application.getAttribute("x");
		out.println(x);//123
		x++;//重新整理會一直累加
		application.setAttribute("x", x);
	%>

</body>
</html>