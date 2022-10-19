<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="get">
		<input name="txtn" type="number"> <input name="butdn"
			type="submit" value="Sum">
	</form>

	<%
	String n = request.getParameter("txtn");
	/* String sum = request.getParameter("butdn"); */
	if (session.getAttribute("s") == null) {
		session.setAttribute("s", 0);

	}
	if (n != null) {
		int number = Integer.parseInt(n);
		int s = (int) session.getAttribute("s");
		s = s + number;
		session.setAttribute("s", s);
		out.print(session.getAttribute("s"));
	}
	%>
	<a href="htsach.jsp">Mo trang chu</a>
</body>
</html>