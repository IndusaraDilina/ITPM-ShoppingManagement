<%@page import="item.db.GetItems"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
@media print {
  #printPageButton {
    display: none;
  }
  
}
</style>

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

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="padding-left: 50px; padding-right: 60px;">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
				</li>
			</ul>
		</div>
	</nav>



	<div class="container mt-5 mb-5">
		<div class="d-flex justify-content-center row">
			<div class="col-md-10">
			<button style=" margin-bottom: 20px;" class=" pull-right" id="printPageButton" onclick="window.print()">Print this page</button><br>
			<h4 class="text-center" style=" margin-bottom: 20px;margin-top: 30px;">Report about Items in GOAL 24/7.</h4>
			<table class="table">
  <thead>
    <tr>
      <th scope="col">Item Code</th>
      <th scope="col">Item Name</th>
      <th scope="col">Description</th>
      <th scope="col">price</th>
      <th scope="col">Quantity</th>
    </tr>
  </thead>
    <tbody>

				<%
				GetItems getItem = new GetItems();
				ResultSet rs = getItem.getDetails();

				while (rs.next()) {
					int i = 1;
				%>


    <tr>
      <td><%=rs.getString("itemCode")%></td>
      <td><%=rs.getString("itemName")%></td>
      <td><%=rs.getString("itemDescription")%></td>
      <td><%=rs.getString("price")%></td>
      <td><%=rs.getString("quantity")%></td>
    </tr>

				<%
				i++;
				}
				%>
  </tbody>
</table>

			</div>
		</div>
	</div>

</body>
</html>