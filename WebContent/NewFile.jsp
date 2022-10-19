<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<table border='1' width="1000" align="center" cellpadding="0"
		cellspacing="0">
		<tr bgcolor="red">
			<td colspan="3">Menu ngang</td>
		</tr>
		<tr>
			<td width="200" valign="top"><a href="tc1.jsp">Trang chủ </a>
				<hr> <a href="http://docbao.vn"> Đọc báo </a>
				<hr> <a href="test.docx"> Tải bài giảng</a>
				<hr></td>
			<td width="800">Noi dung 1
				<hr>Noi dung 1
				<hr>Noi dung 1
				<hr>Noi dung 1
				<hr>Noi dung 1
				<hr>
			</td>
			<td width="200">
				<form method="post" action="tc1.jsp">
					user name <input name="txtun" type="text"> <br>
					Password <input name="txtpass" type="password"> <br> <input
						name="txtpass" type="submit" value="Login"> <br> Up
					anh: <input name="txtpass" type="file"> Chon quyen: <select
						name="s1">
						<option>Admin</option>
						<option>User</option>
			</td>
		</tr>
		<tr>
			<td colspan="3">Ban quyen</td>
</body>
</html>