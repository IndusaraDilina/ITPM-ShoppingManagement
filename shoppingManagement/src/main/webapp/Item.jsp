<%@page import="item.db.GetItems"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<link rel="stylesheet" href="style.css">
	
</head>
<body>

	<header>

		<div class="header">
			<h1>GOAL 24/7</h1>
		</div>
	</header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="padding-left: 50px; padding-right: 60px;">
		<a class="navbar-brand" href="#">GOAL 24/7</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="AdminHome.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="ItemHome.jsp">Go back</a></li>
			</ul>
		</div>
	</nav>

	<div class="container" style="margin-top: 60px;margin-bottom: 60px;">

		<div class="card">
			<div class="row">
				<aside class="col-sm-4">
					<a href="#"><img style=" width: 370px;" src="https://i.imgur.com/QpjAiHq.jpg"></a>
				</aside>

				<%
				String ids = (String) request.getAttribute("id");
				GetItems getItems = new GetItems();
				ResultSet rs = getItems.getDetails(ids);

				while (rs.next()) {
				%>

				<aside class="col-sm-7">
					<article class="card-body p-5">
						<h3 class="title mb-3"><%=rs.getString("itemName")%></h3>

						<p class="price-detail-wrap">
							<span class="price h3 text-warning"> <span
								class="currency">Rs.</span><span class="num"><%=rs.getString("price")%></span>
							</span> <span>/per one</span>
						</p>
						<dl class="item-property">
							<dt>Description</dt>
							<dd>
								<p><%=rs.getString("itemDescription")%></p>
							</dd>
						</dl>
						<dl class="param param-feature">
							<dt>Item Code</dt>
							<dd><%=rs.getString("itemCode")%></dd>
						</dl>
						<dl class="param param-feature">
							<dt>Available Quantity</dt>
							<dd><%=rs.getString("quantity")%></dd>
						</dl>
						<hr>
						<a href="/PaymentManagement/Payment-form.jsp" class="btn btn-primary text-uppercase"> Buy now </a>
					</article>
				</aside>


				<%
				}
				%>

			</div>
		</div>
	</div>
	
			  <footer class="footer">
  	 <div class="container">
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>Sitesoch</h4>
  	 			<ul>
  	 				<li><a href="#">Home</a></li>
  	 				<li><a href="#">About</a></li>
  	 				<li><a href="#">Pricing</a></li>
  	 				<li><a href="#">Privacy Policy</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Get Help</h4>
  	 			<ul>
  	 				<li><a href="#">Shipping</a></li>
  	 				<li><a href="#">Returns</a></li>
  	 				<li><a href="#">Order Status</a></li>
  	 				<li><a href="#">Payment Options</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Address</h4>
  	 			<ul>
  	 				<li><a href="#">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cupiditate adipisci quia ab omnis id ipsum quae inventore </a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>follow us</h4>
  	 			<div class="social-links">
  	 				<a href="#"><i class="fab fa-google"></i></a>
  	 				<a href="#"><i class="fab fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fab fa-instagram"></i></a>
  	 				<a href="#"><i class="fab fa-twitter"></i></a>
  	 			</div>
  	 		</div>
  	 	</div>
  	 </div>
  </footer>
	
</body>
</html>