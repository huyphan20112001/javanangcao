<%@page import="javax.lang.model.element.Element"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
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
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
body {
	background-color: #eeeeee;
	font-family: 'Open Sans', serif;
	font-size: 14px
}

.card-body {
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 1.40rem
}

.img-sm {
	width: 80px;
	height: 80px
}

.itemside .info {
	padding-left: 15px;
	padding-right: 7px
}

.table-shopping-cart .price-wrap {
	line-height: 1.2
}

.table-shopping-cart .price {
	font-weight: bold;
	margin-right: 5px;
	display: block
}

.row {
	display: flex;
	align-items: center;
}

.text-muted {
	color: #969696 !important
}

a {
	text-decoration: none !important
}

.card {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: column;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: 0px
}

.itemside {
	position: relative;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	width: 100%
}

.dlist-align {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex
}

[class*="dlist-"] {
	margin-bottom: 5px
}

.coupon {
	border-radius: 1px
}

.price {
	font-weight: 600;
	color: #212529
}

.btn.btn-out {
	outline: 1px solid #fff;
	outline-offset: -5px
}

.btn-main {
	border-radius: 2px;
	text-transform: capitalize;
	font-size: 15px;
	padding: 10px 19px;
	cursor: pointer;
	color: #fff;
	width: 100%
}
.text-right{
	display: flex;
	align-items: center;
	justify-content: right;
}

.text-right a {
	margin-right: 20px;
	
}

.btn-light {
	color: #ffffff;
	background-color: #F44336;
	border-color: #f8f9fa;
	font-size: 12px
}

.btn-light:hover {
	color: #ffffff;
	background-color: #F44336;
	border-color: #F44336
}

.btn-apply {
	font-size: 11px
}

.book-img {
	width: 100px;
	height: 100px;
}

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
	z-index: 1000;
}

.sach {
	display: flex;
	flex-wrap: wrap;
	flex: 0 0 80%;
	max-width: 80%;
}

.sach-item {
	background-color: #e3e3e3;
	border-radius: 20px;
	padding: 20px;
	cursor: pointer;
	margin-right: 15px;
	margin-bottom: 30px;
}

.sach-img {
	width: 100%;
	border-radius: 20px;
}

.avt {
	text-align: center;
}

img {
	object-fit: cover;
	width: 100%;
	height: 100%;
}

.sach-id, .sach-addr, .sach-email, .sach-mh {
	font-size: 18px;
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

input[name="del-Selected"] {
	padding: 10px 16px;
	font-size: 18px;
	line-height: 1.3333333;
	border-radius: 6px;
	color: #fff;
	background-color: #337ab7;
	border: none;
	height: 100%;
	display: block;
	margin-right: 20px;
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
				<li class=""><a href="htsach.jsp">HOME</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">PAY</span></a></li>
				<li class="active"><a href="">CART</a></li>
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
			<%-- <div class="wrapper-mh">
				<p class="lead">CHỦ ĐỀ SÁCH</p>
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
			</div> --%>


			<section class="pt-5 pb-5">
				<form action="giohang.jsp" method="get" id="my_form">
					<div class="container">
						<div class="row w-100">
							<div class="col-lg-12 col-md-12 col-12">
								<h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
								<p class="mb-5 text-center">
									<%
									giohangbo gh = (giohangbo) session.getAttribute("gio");
									int n = gh.ds.size();
									%>
									<i class="text-info font-weight-bold"><%=n%></i> items in your
									cart
								</p>
								<table id="shoppingCart"
									class="table table-condensed table-responsive">
									<thead>
										<tr>
											<th style="width: 50%">Product</th>
											<th style="width: 12%">Price</th>
											<th style="width: 10%">Quantity</th>
											<th style="width: 20%">Total</th>
											<th style="width: 18%"></th>
										</tr>
									</thead>

									<tbody>
										<%
										for (giohangbean h : gh.ds) {
										%>
										<tr>
											<td data-th="Product">
												<div class="row">

													<input type="checkbox" form="my_form" name="check-box"
														value=<%=h.getMasach()%>>


													<div class="col-md-3 text-left book-img">
														<img src="<%=h.getAnh()%>" alt=""
															class="img-fluid  d-md-block rounded mb-2 shadow ">
													</div>
													<div class="col-md-9 text-left mt-sm-2">
														<h4><%=h.getTensach()%></h4>
														<p class="font-weight-light"><%=h.getMasach()%></p>
													</div>
												</div>
											</td>
											<td data-th="Price" class="price"><%=h.getGia()%></td>

											<td data-th="Quantity" class="quantity"><input
												type="number"
												class="form-control form-control-lg text-center"
												id=<%=h.getMasach()%> value=<%=h.getSoluong()%>></td>
											<td data-th="Total" class="total"><%=h.getThanhtien()%></td>
											<td class="actions" data-th="">
												<div class="text-right">
													<!-- <button
														class="btn btn-white border-secondary bg-white btn-md mb-2"> -->
													<a href="#"
														onclick="location.href='giohang.jsp?act=update&soluong='+document.getElementById('<%=h.getMasach()%>').value+'&ms=<%=h.getMasach()%>'">
														<i class="fas fa-sync"></i>
													</a>
													<!-- </button> -->

													<!-- <button
														class="btn btn-white border-secondary bg-white btn-md mb-2"> -->
													<a href="giohang.jsp?act=remove&ms=<%=h.getMasach()%>">
														<i class="fas fa-trash"></i>
													</a>
													<!-- </button>  -->
													<%-- <a href="#"
														onclick="location.href='giohang.jsp?action=delete&ms=<%=h.getMasach()%>'">
														<i class="fas fa-trash"></i>
													</a> <a href="#"
														onclick="location.href='giohang.jsp?act=update&soluong='+document.getElementById('<%=h.getMasach()%>').value+'&ms=<%=h.getMasach()%>'">
													</a> --%>
												</div>
											</td>
										</tr>

										<%
										}
										%>
									</tbody>
								</table>
								<div class="float-right text-right">
									<%-- <%
								long thanhtien = 0;
								for (giohangbean h : gh.ds) {
									thanhtien = thanhtien + h.getThanhtien();
								%>
								<%
								}
								%> --%>
									<h4>Sub total:</h4>
									<h1><%=gh.TongTien()%></h1>



								</div>

							</div>


						</div>
						<div class="row mt-4 d-flex align-items-center">
							<div class="col-sm-6 order-md-2  text-md-left">
								<a href="htsach.jsp"> <i class="fas fa-arrow-left mr-2"></i>
									Continue Shopping
								</a>
							</div>
							<div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-right">
								<input type="submit" form="my_form" value="Delete Selected"
									name="del-Selected"> <a href="giohang.jsp?act=clear"
									class="btn btn-primary mb-4 btn-lg pl-5 pr-5">Delete All</a> <a
									href="catalog.html"
									class="btn btn-primary mb-4 btn-lg pl-5 pr-5">Checkout</a>
							</div>
						</div>
					</div>
				</form>
			</section>
		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.slim.min.js"
		integrity="sha512-M+qMI1PHRcYcOpJzeJlaWbVVx2JJyPIwZas8or7dc97LZOokjvbpfRxymhVtlJLyjiF3wGyr0FJOA4DLONLVLw=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha512-epf6HPShLQ8zgJD4pP+tSNkYQ9aVUwTeX2II3jlGQrC0Etb9MNeogMrZIgCo9/IAXEAyS8zjz+2nsUpX3/CYyg=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.1/js/bootstrap.min.js"
		integrity="sha512-vyRAVI0IEm6LI/fVSv/Wq/d0KUfrg3hJq2Qz5FlfER69sf3ZHlOrsLriNm49FxnpUGmhx+TaJKwJ+ByTLKT+Yg=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>