<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DANG NHAP</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		session.setAttribute("username", username);
		
		//if(username.equals("abc") && password.equals("123")){
			response.sendRedirect("htsach.jsp");
		//}else{
			//response.sendRedirect("login.jsp?kt=1");
		//}
	%>
</body>
</html>