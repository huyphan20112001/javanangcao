<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="auth.jsp" method="post">
		un = <input name="username" type="text" value=""
			placeholder="enter username"> <br> password = <input
			name="password" type="password" value="" placeholder="enter password">
		<br> <input name="butdn" type="submit" value="login">
		<%
		if (request.getParameter("kt") != null) {
			out.print("Dang nhap sai");
		}
		%>

	</form>

</body>
</html>