<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] names = { "harry", "tony", "julia", "dog" };
		pageContext.setAttribute("names", names);
		pageContext.setAttribute("step", 1);
	%>
	<table border='1' width='100%'>
		<tr>
			<th>index</th>
			<th>Name</th>
			<th>Count</th>
			<th>First</th>
			<th>Last</th>
		</tr>
		<!-- c:forEach有4個attribute：
	       1.var - 參數用來儲存目前迴圈用來判斷的值
           2.begin - var參數的初始值
           3.end - 當var等於小於end的時候會停下來
           4. step - 每一個迴圈結束要對var參數增加step的值。 
           5.var - iterate的時候每一筆的名稱代表
           6.items - 集合的名稱
           7.varStatus可以設定名稱-->
		<c:forEach items="${names }" var="name" varStatus="status" begin="0"
			end="3" step="${step }">
			<tr>
				<td>${status.index }</td>
				<td>${name }</td>
				<td>${status.count }</td>
				<td>${status.first }</td>
				<td>${status.last }</td>
			</tr>
		</c:forEach>

	</table>
	<hr />
	<%
		String line = "1,brad,male,0912-123456,2000-01-02,台中市西屯區";
		pageContext.setAttribute("line", line);
	%>
	<!-- forTokens items attribute接受的是string然後給予delims（分割符號）。 -->
	<c:forTokens delims="," items="${line }" var="field" varStatus="status">
${status.count} : ${field }<br>
	</c:forTokens>
	<hr>
	<c:import var="data" url="http://www.tutorialspoint.com" />
	<c:import url="jsp_example25_JSTL.jsp" var="data2">
		<c:param name="x" value="1" />
		<c:param name="y" value="2" />
	</c:import>
	<c:out value="${data2}" />




</body>
</html>