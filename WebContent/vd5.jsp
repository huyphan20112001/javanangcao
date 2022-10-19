<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="vd6.jsp" method="post">
		<%
		for (int i = 1; i < 4; i++) {
		%>
		<input type="checkbox" name="tendk<%=i%>">
		<%
		}
		%>
		<button type='submit'>abc</button>
	</form>
</body>
</html>