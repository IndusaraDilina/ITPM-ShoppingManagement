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

	<div class="container">
		<div class="row" style="margin-top: 20px; margin-bottom: 20px">
			<div
				class="offset-lg-2 col-lg-8 col-sm-8 col-8 border rounded main-section">
				<h3 class="text-center text-inverse">Add New Item</h3>
				<hr>
				<form class="container"
					action="<%=request.getContextPath()%>/manage" method="post"
					id="needs-validation" novalidate>
					<div class="row">
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse">Item Name</label> <input type="text"
									class="form-control" name="itemName"
									placeholder="Enter Item Name" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse">Item Code</label> <input type="text"
									class="form-control" name="itemCode"
									placeholder="Enter Item Code" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-sm-12 col-12">
							<div class="form-group">
								<label class="text-inverse">Item Description</label> <input
									type="text" class="form-control" name="itemDescription"
									placeholder="Enter Description" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse">Price</label> <input type="text"
									class="form-control" name="price" placeholder="Price" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label class="text-inverse" for="validationCustom03">Quantity</label>
								<input type="text" class="form-control" id="validationCustom03"
									name="quantity" placeholder="Qunatity" required>
								<div class="invalid-feedback">This Field Can't be empty.</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 col-sm-6 col-12">
							<div class="form-group">
								<label for="exampleFormControlFile1">Example file input</label>
								<input type="file" name="image" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
						</div>
					</div>

					<hr>
					<div class="row">
						<div class="col-lg-12 col-sm-12 col-12 text-right">
							<button class="btn btn-success " type="submit" name="Add">Add
								Item</button>
						</div>
					</div>
				</form>
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