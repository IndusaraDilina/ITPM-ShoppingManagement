<%@page import="item.db.GetItems"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminHome</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	rel="stylesheet">
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
	
<link rel="stylesheet" href="style.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

</head>
<body>

<header>
		
			<div class="header">
    				<h1> GOAL 24/7 </h1>
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
				<li class="nav-item active"><a class="nav-link" href="AdminHome.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="AdminaddItem.jsp">Add Item</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search"
					name="search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container mt-5 mb-5">
		<div class="d-flex justify-content-center row">
			<div class="col-md-10">

				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Dashboard</h1>
						</div>
					</div>
					<div class="alert alert-success" id= "alert" style="visibility: hidden"></div>
				</div>

				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-lg-12 col-sm-12 col-12 text-right">
							<button type="button" class="btn btn-success"
								onclick="window.location.href='AdminaddItem.jsp'">+ Add New</button>
							<button type="button" onclick="window.location.href='AdminPrint.jsp'" class="btn btn-secondary">Generate
								a report</button>
						</div>
					</div>
				</div>

				<div id="content"></div>
			</div>
		</div>


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
						<form id="form" method="POST">
							<input id="input" type="text" name="id" hidden=true />
							<button class="btn btn-danger" name="delete" type="submit">Delete</button>
						</form>
					</div>
				</div>
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

	$(document).ready(function () {
		 myFunction();
		 checkurl();
	});
	
	function checkurl(){
		 var url_string  = window.location.href;
		 //console.log(url_string);
		 var url = new URL(url_string);
		 var val = url.searchParams.get("v");
		 
		 if (val == "added"){
			 document.getElementById('alert').removeAttribute("style");
			 document.getElementById("alert").innerHTML = "Added Successfully!";
		 }else if (val == "Updated"){
			 document.getElementById('alert').removeAttribute("style");
			 document.getElementById("alert").innerHTML = "Updated Successfully!";
		 }else if (val == "deleted"){
			 document.getElementById('alert').removeAttribute("style");
			 document.getElementById("alert").innerHTML = "Deleted Successfully!";
		 }
		 
         //alert auto hide after time ---
         window.setTimeout(function () {
             $(".alert").fadeTo(500, 0).slideUp(500, function () {
                 $(this).remove();
             });

         }, 5000);
		 
	}
	
	function myFunction() {
		
		const container = document.getElementById('content');
		
		<%
		GetItems getItem = new GetItems();
		ResultSet rs = getItem.getDetails();
		
		while (rs.next()) {
		
			String name = rs.getString("itemName");
			int id = rs.getInt("id");
			String code = rs.getString("itemCode");
			String des = rs.getString("itemDescription");
			String price = rs.getString("price");
			String path = request.getContextPath();
			%>

			var main = document.createElement("div");
			main.className = "row p-2 bg-white border rounded";
			main.style.margin = '10px';

			var div1 = document.createElement("div");
			div1.className = "col-md-3 mt-1";

			var img = document.createElement("img");
			img.className = "img-fluid img-responsive rounded product-image";
			img.setAttribute("src", "https://i.imgur.com/QpjAiHq.jpg");

			var div2 = document.createElement("div");
			div2.className = "col-md-6 mt-1";

			var h5 = document.createElement("h5");
			h5.innerHTML = "<%=name%>";

			var div21 = document.createElement("div");
			div21.className = "d-flex flex-row";

			var span1 = document.createElement("span");
			span1.innerHTML = "Item ID: " + "<%=id%>";

			var div22 = document.createElement("div");
			div22.className = "mt-1 mb-1 spec-1";

			var span2 = document.createElement("span");
			span2.innerHTML = "Item Code: " + "<%=code%>";

			var div23 = document.createElement("div");
			div23.className = "mt-1 mb-1 spec-1";

			var span3 = document.createElement("span");
			var br = document.createElement("br");

			var p = document.createElement("p");
			p.className = "text-justify text-truncate para mb-0";
			p.innerHTML = "<%=des%>";

			var div3 = document.createElement("div");
			div3.className = "align-items-center align-content-center col-md-3 border-left mt-1";

			var div31 = document.createElement("div");
			div31.className = "d-flex flex-row align-items-center";

			var h4 = document.createElement("h4");
			h4.innerHTML = "Rs: " + "<%=price%>" + ".00";

			var h6 = document.createElement("h6");
			h6.className = "text-success";
			h6.innerHTML = "Free shipping";

			var form = document.createElement("form");
			form.setAttribute("method", "POST");
			form.setAttribute("action", "<%=path%>" + "/manage");

			var formdiv = document.createElement("div");
			formdiv.className = "d-flex flex-column mt-4";

			var input = document.createElement("input");
			input.setAttribute("type", "text");
			input.setAttribute("name", "id");
			input.setAttribute("value", "<%=id%>");
			input.setAttribute("hidden", "true");

			var btn1 = document.createElement("button");
			btn1.className = "btn btn-primary btn-sm";
			btn1.setAttribute("type", "submit");
			btn1.setAttribute("name", "edit");
			btn1.innerHTML = "Details";

			var formdiv2 = document.createElement("div");
			formdiv2.className = "d-flex flex-column mt-2";

			var btn2 = document.createElement("button");
			btn2.className = "btn btn-danger btn-sm";
			btn2.setAttribute("type", "submit");
			btn2.setAttribute("data-toggle", "modal");
			btn2.setAttribute("data-target", "#exampleModalCenter");
			btn2.innerHTML = "Delete";

			container.append(main);
			main.append(div1);
			div1.append(img);
			main.append(div2);
			div2.append(h5);
			div2.append(div21);
			div21.append(span1);
			div2.append(div22);
			div22.append(span2);
			div2.append(div23);
			div23.append(span3);
			span3.append(br);
			div2.append(p);
			main.append(div3);
			div3.append(div31);
			div31.append(h4);
			div3.append(h6);
			div3.append(form);
			form.append(formdiv);
			formdiv.append(input)
			formdiv.append(btn1);
			div3.append(formdiv2);
			formdiv2.append(btn2);

			btn2.onclick = function() {

				const frm = document.getElementById("form");
				const inpt = document.getElementById("input");
				frm.setAttribute("action", "<%=path%>" + "/manage");
				inpt.setAttribute("value","<%=id%>");

			};
	<%
	}
	%>

	}
	</script>

</body>
</html>