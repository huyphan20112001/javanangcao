<%@page import="bean.sinhvienbean"%>
<%@page import="dao.sinhviendao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.monhocdao"%>
<%@page import="bean.monhocbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="Content/bootstrap.css" rel="stylesheet" />

<!-- Custom CSS -->
<link href="Content/shop-homepage.css" rel="stylesheet" />
<style type="text/css">
.wrapper {
	display: flex;
	align-items: stretch;
	justify-content: space-between;
	padding-top: 100px;
}

.navbar {
	position: fixed;
	right: 0;
	left: 0;
}

.sinh-vien {
	display: flex;
	flex-wrap: wrap;
	flex: 0 0 80%;
	max-width: 80%;
}

.sinh-vien-item {
	background-color: #e3e3e3;
	border-radius: 20px;
	padding: 20px;
	cursor: pointer;
	margin-right: 15px;
	margin-bottom: 30px;
}

.sinhvien-img {
	width: 100%;
	border-radius: 20px;
}

.avt {
	text-align: center;
}

img {
	object-fit: cover;
}

.sinhvien-id, .sinhvien-addr, .sinhvien-email, .sinhvien-mh {
	font-size: 18px;
}

.sinhvien-name {
	text-align: center;
}
.container{
	width: 1440px;
	margin: 0 auto;
	padding: 0 15px;
}
.wrapper-mh{
	flex: 0 0 20%;
	max-width: 20%;
	padding-right: 25px;
}
.wrapper-mh{
	z-index: -1;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">SINH VIÊN</a>
			</div>
			<ul class="nav navbar-nav">
				<li class=""><a href="#">Trang chủ</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Thanh toán</span></a></li>
				<li class="active"><a href="#">Giỏ hàng</a></li>
				<li><a href="#">Lịch sử mua hàng</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>

			<form class="navbar-form navbar-left" action="hienthi.jsp">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search"
						name="search">
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
			</form>
			
		</div>
	</nav>



	<div class="container">
	<div class="wrapper">
		<%-- div class="mon-hoc"> <% monhocdao mon
		= new monhocdao(); for (monhocbean m : mon.getMonHoc()) { %> <a
		href="hienthi.jsp?mh=<%=m.getMaMonHoc()%>"><%=m.getTenMonHoc()%></a>

		<% } %> </div> --%>
		<div class="wrapper-mh">
			<p class="lead">MÔN HỌC</p>
			<div class="list-group">
				<%
				
				monhocdao mon = new monhocdao();
				for (monhocbean m : mon.getMonHoc()) {
				%>
				<a class="list-group-item"
					href="hienthi.jsp?mh=<%=m.getMaMonHoc()%>"><%=m.getTenMonHoc()%></a>

				<%
				}
				%>
			</div>
		</div>

		<div class="sinh-vien">
			<%
			sinhviendao svdao = new sinhviendao();
			String maMonHoc = request.getParameter("mh");
			ArrayList<sinhvienbean> dssv;
			String maSinhVien = request.getParameter("msv");
			String key = request.getParameter("search");
			
			if (maMonHoc != null){
				dssv = svdao.timMa(maMonHoc);
			}else if (key != null){
				dssv = svdao.timSinhVien(key);
			}else{
				dssv = svdao.getSinhVien();
			}
			int n = dssv.size();
			for (int i = 0; i < n; i++) {
				
				/* dssv = svdao.getSinhVien(); */
				sinhvienbean s = dssv.get(i);
			%>
			<div class="sinh-vien-item">
				<div class="avt">
					<img src="<%=s.getAnh()%>" alt="avatar" class="sinhvien-img" />
				</div>

				<h3 class="sinhvien-name"><%=s.getHoTen()%></h3>
				<h3 class="sinhvien-id">
					Mã sinh viên:
					<%=s.getMaSinhVien()%></h3>
				<h3 class="sinhvien-addr">
					Địa chỉ:
					<%=s.getDiaChi()%></h3>
				<h3 class="sinhvien-email">
					Email:
					<%=s.getEmail()%></h3>
				<h3 class="sinhvien-mh">
					Mã môn học:
					<%=s.getMaMonHoc()%></h3>

			</div>
			<%
			}
			%>
		</div>


	</div>
	</div>
</body>
</html>