<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Calendar n = Calendar.getInstance();
int date = n.get(Calendar.DATE);
int month = n.get(Calendar.MONTH) + 1;
int year = n.get(Calendar.YEAR);
%>

	<h3>Hom nay ngay <%=date %>, thang <%=month %>, nam <%=year %></h3>

	Chon ngay
	<select name="sngay">
		<% for(int i= 1; i<= 31; i++){%>
				<option  value="<%= i %>" <%=(i==date)?"selected":"" %> > <%=i %> </option>
		<%
			}
		%>
	</select>
	Chon thang
	<select name="sthang">
		<% for(int i= 1; i<= 12; i++){%>
			<option  value="<%= i %>" <%=(i==month)?"selected":"" %> > <%=i %> </option>
		<%
			}
		%>
	</select>
	Chon nam
	<select name="snam">
		<% for(int i= 2012; i<= 2022; i++){%>
			<option  value="<%= i %>" <%=(i==year)?"selected":"" %> > <%=i %> </option>
		<%
			}
		%>
	</select>
	
	<%
	Random r = new Random();
	
	%>
</body>
</html>