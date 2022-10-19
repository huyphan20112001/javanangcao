<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="dao.sachdao"%>
<%@page import="bean.loaibean"%>
<%@page import="dao.loaidao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.wrapper {
	display: flex;
	align-items: stretch;
	padding-top: 100px;
}

img {
	width: 100%;
	height: 100%;
}

.navbar {
	position: fixed;
	right: 0;
	left: 0;
	z-index: 1000;
}

.sach {
	/* display: flex;
	flex-wrap: wrap;
	flex: 0 0 80%;
	max-width: 80%; */
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	gap: 15px;
}

.sach-item {
	background-color: #e3e3e3;
	/* max-width: 270px; */
	border-radius: 20px;
	padding: 20px;
	cursor: pointer;
}

.sach-img {
	width: 100%;
	border-radius: 20px;
}

.avt {
	text-align: center;
	height: 260px;
}

img {
	object-fit: cover;
}

.sach-id, .sach-addr, .sach-email, .sach-mh {
	font-size: 18px;
	width: 230px;
	display: block;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.sach-name {
	text-align: center;
}

.container {
	width: 1440px;
	margin: 0 auto;
	padding: 0 15px;
}

.wrapper-mh {
	flex: 0 0 20%;
	max-width: 20%;
	padding-right: 25px;
}

.order {
	text-align: center;
}

.order a {
	display: block;
	width: 150px;
	border: 2px solid #333;
	border-radius: 15px;
	color: #333;
	width: 150px;
	margin: 0 auto;
	font-size: 16px; font-weight : 600;
	line-height: 40px;
	font-weight: 600;
}

.order a:hover {
	text-decoration: none;
}
</style>
</head>

<body>



	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="htsach.jsp">BOOK ONLINE</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="htsach.jsp">HOME</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">PAY</span></a></li>
				<li class=""><a href="htgio.jsp">CART</a></li>
				<li><a href="#">HISTORY</a></li>
				<li><a href="#"><%=session.getAttribute("s")%></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%
				if (session.getAttribute("username") != null) {
				%>
				<li><a href="logout.jsp"><span
						class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
				<li><a href=""><span class="glyphicon glyphicon-log-in"></span>
						Hi, <%=session.getAttribute("username")%></a></li>
				<%
				} else {
				%>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="dangnhap.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<%
				}
				%>

			</ul>

			<form class="navbar-form navbar-left" action="htsach.jsp">
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
		href="htsach.jsp?mh=<%=m.getMaMonHoc()%>"><%=m.getTenMonHoc()%></a>

		<% } %> </div> --%>
			<div class="wrapper-mh">
				<p class="lead">TOPIC</p>
				<div class="list-group">
					<%
					loaibo loai = new loaibo();
					for (loaibean l : loai.getloai()) {
					%>
					<a class="list-group-item" href="htsach.jsp?ml=<%=l.getMaloai()%>"><%=l.getTenloai()%></a>

					<%
					}
					%>
				</div>
			</div>

			<div class="sach">
				<%
				sachbo sdao = new sachbo();
				String maloai = request.getParameter("ml");
				ArrayList<sachbean> dssach = sdao.getsach();
				;
				String key = request.getParameter("search");
				if (maloai != null) {
					dssach = sdao.TimMa(maloai);
				} else if (key != null) {
					dssach = sdao.tim(key);
				}
				int n = dssach.size();
				for (int i = 0; i < n; i++) {
					sachbean s = dssach.get(i);
				%>
				<div class="sach-item">
					<div class="avt">
						<img src="<%=s.getAnh()%>" alt="avatar" class="sach-img" />
					</div>
					<h3 class="sach-id">
						Name:
						<%=s.getTensach()%></h3>
					<h3 class="sach-addr">
						Author:
						<%=s.getTacgia()%></h3>
					<h3 class="sach-email">
						Price:
						<%=s.getGia()%></h3>
					<div class="order">
						<a
							href="giohang.jsp?act=add&ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh()%>">ORDER</a>
					</div>
					

				</div>
				<%
				}
				%>
			</div>

		</div>
	</div>
</body>
</html>