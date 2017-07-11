<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--isELIgnored預設為false ,如果設為True,jsp表達式則會當成字浮串處理 -->
<%@ page isELIgnored="false"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//使用EL隱含物件,EL若不指定屬性的存在範圍，則預設是以page、request、session、application的順序來尋找EL中所指定的屬性
		String[] names = { "harry", "tony", "julia" };
		request.setAttribute("usernames", names);
		LinkedList<String> list = new LinkedList<>();
		list.add("AAA");
		list.add("BBB");
		list.add("CCC");
		request.setAttribute("list", list);

		HashMap<String, String> map = new HashMap<>();
		map.put("name", "Brad");
		map.put("account", "brad");
		map.put("passwd", "123456");
		request.setAttribute("map", map);
	%>
	<!-- 使用EL隱含物件 ,如果EL所存取的對象是個陣列物件，則可以使用[]運算子來指定索引以存取陣列中的元素-->
	Name1: ${usernames[0]}
	<!-- param是EL隱含物件，表示請求參數後面的,i為key值,可自己命名,我們可在url串給這key value值 -->
	<br> List1: ${list[param.i] }
	<br> Account: ${map["account"] }
	<br> ${10 + 3 / 7}
	<br> ${(param.i=="1") ? "Yes" : "No" }
	<!-- NO -->
	<br> ${ 1 > 3 }
	<!--false -->
	<br> ${ "a" < "b" }
	<!-- true -->
	<br> ${ "12" > 3 }
	<!-- true -->
	<br>
</body>
</html>