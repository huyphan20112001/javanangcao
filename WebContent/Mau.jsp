<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
  		<div class="container-fluid">
    		<ul class="nav navbar-nav">
      			<li class="active"><a href="#">Trang Chủ</a></li>
			      <li><a href="#">Giỏ hàng</a></li>
			      <li><a href="#">Thanh toán</a></li>
			      <li><a href="#">Lịch sử mua hàng</a></li>
    		</ul>
  		</div>
</nav>

<h1 align='center'>THONG TIN SINH VIEN</h1>
<table width="1000">
	<tr>
		<td width="300">
			<a href="Mau.jsp?msv=sv1">Nguyen Van Anh</a> <hr/>
			<a href="Mau.jsp?msv=sv2">Le Van Teo</a> <hr/>
			<a href="Mau.jsp?msv=sv3">Quach Chi Thong</a> <hr/>
		</td>
		<td>
			<%String masv=request.getParameter("msv");
				if (masv == null){
					out.print("Ban chay lan dau");
				}else {%>
					Thong tin sinh vien <%=masv%>
				<%
				} 
				%>
		</td>
	</tr>
</table>
</body>
</html>