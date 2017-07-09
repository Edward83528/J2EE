<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="member" class="bean.Member" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//pageContext隱含物件轉譯後對應於javax.servlet.jsp.PageContext型態之物件，
		//這個物件將所有JSP頁面的資訊封裝起來，
		//轉譯後的Servlet可透過PageContext來取得所有的JSP頁面資訊
		//要取得對應JSP頁面的ServletContext、ServletConfig、HttpSession與JspWriter物件時，是透過以下的程式碼來取得
		//application = pageContext.getServletContext();
		//config = pageContext.getServletConfig();
		//session = pageContext.getSession();
		//out = pageContext.getOut();
		//還可以使用pageContext的setAttrubute()、getAttribute()來設定頁面範圍屬性
		//也可以透過pageContext設定四種範圍屬性
		//getAttribute(String name, int scope)
		//setAttribute(String name, Object value, int scope)
		//removeAttribute(String name, int scope)
		//其中的scope可以使用以下的常數來進行指定：
		//pageContext.PAGE_SCOPE、pageContext.REQUEST_SCOPE、pageContext.SESSION_SCOPE、 pageContext.APPLICATION_SCOPE，
		//分別表示頁面、請求、會話與應用程式範圍
		//要設定會話範圍的屬性：
		//pageContext.setAttribute("login", "caterpillar", pageContext.SESSION_SCOPE);
		// 要取得會話範圍的屬性時
		//String attr = 
		// (String) pageContext.getAttribute("login", pageContext.SESSION_SCOPE);
		//不知道屬性的範圍時，也可以使用pageContext的findAttribute()方法來找出屬性
		//Object attr = pageContext.findAttribute("attr");

		pageContext.setAttribute("x", "123");
	%>
	<!-- 要使用JSTL先要到tomcat\webapps\examples\WEB-INF\lib複製兩個jar  -->
	<c:out value="${'Hello, World'} " />
	<br>
	<!-- :jstl有default屬性可防止null值 -->
	<c:out value="${y }" default="no value" />
	<br>
	<c:set var="var1" value="123" scope="page" />
	${var1 }
	<br />
	<c:set var="var2">
		<%
			out.println("OK");
		%>
	</c:set>
	${var2 }
	<br />
	<c:set target="${member }" property="id">
      009
    </c:set>
	<c:set target="${member }" property="name">
    John
    </c:set>
	${member }
	<br />
	<c:remove var="var1" />
	<c:out value="${var1 }" default="no value" />
	<br>


</body>
</html>