<%@page import="item.db.GetItems"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<style>
.main-section {
	padding: 15px;
	background: #f1f1f1;
}

.custom-file-control::after {
	content: "Choose file...";
}

.custom-file-control::before {
	content: "Browse";
}
</style>
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
				<li class="nav-item"><a class="nav-link" href="AdminaddItem.jsp">Add
						Item</a></li>
			</ul>
		</div>
	</nav>

	<%
	String ids = (String) request.getAttribute("id");
	GetItems getItems = new GetItems();
	ResultSet rs = getItems.getDetails(ids);

	while (rs.next()) {
	%>
	<form method="POST" action="<%=request.getContextPath()%>/manage"
		id="needs-validation" novalidate>
		<div class="container">
			<div class="row" style="margin-top: 20px; margin-bottom: 20px">
				<div
					class="offset-lg-2 col-lg-8 col-sm-8 col-8 border rounded main-section">
					<h3 class="text-center text-inverse">Edit Item</h3>
					<hr>
					<div class="row">
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse">Item ID</label> <input type="text"
									class="form-control" value="<%=rs.getInt("id")%>" disabled>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse" for="validationCustom02">Item
									Name</label> <input type="text" name="itemName" class="form-control"
									id="itemname" placeholder="Enter Item Name"
									value="<%=rs.getString("itemName")%>" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-sm-12 col-12">
							<div class="form-group">
								<label class="text-inverse" for="inputEmail4">Item Code</label>
								<input type="text" name="itemCode" class="form-control"
									id="itemcode" placeholder="Enter Item Code"
									value="<%=rs.getString("itemCode")%>" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse" for="inputpassword">Description</label>
								<input type="text" name="itemDescription" class="form-control"
									id="itemdescription" placeholder="Enter item Description"
									value="<%=rs.getString("itemDescription")%>" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse" for="validationCustom03">Price</label>
								<input type="text" name="price" class="form-control"
									id="validationCustom03" placeholder="City"
									value="<%=rs.getString("price")%>" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse" for="validationCustom03">Quantity</label>
								<input type="text" name="quantity" class="form-control"
									id="itemquantity" placeholder="Enter Quantity"
									value="<%=rs.getString("quantity")%>" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse" for="select-menu">Select any
									value</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="customFile">
									<label class="custom-file-label" for="customFile">Choose
										file</label>
								</div>
							</div>
						</div>
					</div>

					<hr>
					<div class="row">
						<div class="col-lg-12 col-sm-12 col-12 text-right">
							<input type="text" name="id" value="<%=rs.getInt("id")%>" hidden />
							<button class="btn btn-info" name="update" type="submit">
								Save</button>
							<!-- 
								<button class="btn btn-danger" name="delete" type="submit">
									Delete</button> -->
							<button type="button" class="btn btn-danger" data-toggle="modal"
								data-target="#exampleModalCenter">Delete</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	
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


	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">Delete!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Are you sure you want to delete this
					item?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cancle</button>
					<form method="POST" action="<%=request.getContextPath()%>/manage">
						<input type="text" name="id" value="<%=rs.getInt("id")%>"
							hidden=true />
						<button class="btn btn-danger" name="delete" type="submit">Delete</button>
					</form>
				</div>
			</div>
		</div>
	</div>


	<%
	}
	%>




	<script>
	
//validation
(function() {
    'use strict';
    window.addEventListener('load', function() {
      var form = document.getElementById('needs-validation');
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    }, false);
  })();
 

//validate quantity
$('input[name="quantity"]').keypress
(
    function(event){
        if (event.keyCode == 46 || event.keyCode == 8) {
        //do nothing
        }
        else {
            if (event.keyCode < 48 || event.keyCode > 57 ) {
			    event.preventDefault();	
			}	
        }
    }
);

//validate price
$('input[name="price"]').keypress
(
    function(event){
        if (event.keyCode == 46 || event.keyCode == 8) {
        //do nothing
        }
        else {
            if (event.keyCode < 48 || event.keyCode > 57 ) {
			    event.preventDefault();	
			}	
        }
    }
);
</script>

</body>
</html>