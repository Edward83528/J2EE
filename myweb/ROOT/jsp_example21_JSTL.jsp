<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 使用JSTL必須加這行,並在lib資料夾複製貼上tomcat資料夾的webapps\examples\WEB-INF\lib中的兩個jar -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--id屬性用於指定JavaBean實例的參考名稱 -->
<jsp:useBean id="member" class="bean.Member" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.setAttribute("x", "123");
	%>
	<!-- 用於在JSP中顯示數據 -->
	<c:out value="${'Hello, World'} " />
	<br>
	<!-- 顯示y值,但y是null,但因為有 default所以不會出現錯誤 -->
	<c:out value="${y }" default="no value" />
	<br>
	<!-- 用於保存數據 -->
	<c:set var="var1" value="123" scope="page" />
	${var1 }
	<br>
	<c:set var="var2">
		<%
			out.println("OK");
		%>
	</c:set>
	${var2 }
	<br>
	<!-- 搭配javabean -->
	<c:set target="${member }" property="id">
009
</c:set>
	<c:set target="${member }" property="name">
John
</c:set>
	${member }
	<br />
	<!-- 用於刪除數據 -->
	<c:remove var="var1" />
	<c:out value="${var1 }" default="no value" />
	<br>


</body>
</html>