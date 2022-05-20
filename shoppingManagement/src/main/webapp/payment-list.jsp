<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title> GOAL 24/7 </title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"crossorigin="anonymous">
	
<style type="text/css">
body {
    background-image:url(.jpg);
}
.myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

.header{
   background-color:#000000;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
</style>
<link rel="stylesheet" type="text/css" href="CSS/List.css">
</head>
<body>

	<header>
		
			<div class="header">
    				<h1> GOAL 24/7 </h1>
			</div>

		
	</header>
	<div class="bg">
	<br>
	<div class="row">

		<div class="container">
			<h2 class="text-center">PAYMENT DETAILS</h2>
				<br><br>
		
			<div class="container text-left">
			
			<a href="Payment-form.jsp" class="btn btn-primary">ADD
					New Payment</a>

					
				<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for payment ID" title="Type in a name">	

			</div>
			<br><br>
			<table class="table table-bordered table table-hover"id="myTable">
				<thead class="thead-dark">
					<tr>
						<th>Payment ID</th>
						<th>Payment NAME</th>
						<th>TYPE</th>
						<th>DESCRIPTION</th>
						<th>DATE</th>
						<th>ACTION</th>
						
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="payment" items="${listPayment}">

						<tr>
							<td><c:out value="${payment.id}" /></td>
							<td><c:out value="${payment.name}" /></td>
							<td><c:out value="${payment.type}" /></td>
							<td><c:out value="${payment.description}" /></td>
							<td><c:out value="${payment.date}" /></td>
						
							<td>
							<div class="btn-group">
                                        <label class="p-0 mr-1 my-0">
                                            <a href="edit?id=<c:out value='${payment.id}' />"><button type="submit" class="btn btn-primary">Edit</button></a>
                                        </label>
                                        <label class="p-0 my-0">
                                            <a href="delete?id=<c:out value='${payment.id}' />"><button type="submit" class="btn btn-danger"value="delete" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                        </label>   
                                    </div>	
							</td>
						</tr>
					</c:forEach>
				
				</tbody> 

			</table>
			
			<br><br>
			
			
			
			
<a href="<%=request.getContextPath()%>/report" > <button type="button" class="btn btn-success">Payment Report</button></a>


			
			<script>
			function myFunction() {
				  // Declare variables
				  var input, filter, table, tr, td, i, txtValue;
				  input = document.getElementById("myInput");
				  filter = input.value.toUpperCase();
				  table = document.getElementById("myTable");
				  tr = table.getElementsByTagName("tr");

				  // Loop through all table rows, and hide those who don't match the search query
				  for (i = 0; i < tr.length; i++) {
				    td = tr[i].getElementsByTagName("td")[0];
				    if (td) {
				      txtValue = td.textContent || td.innerText;
				      if (txtValue.toUpperCase().indexOf(filter) > -1) {
				        tr[i].style.display = "";
				      } else {
				        tr[i].style.display = "none";
				      }
				    }
				  }
				}
</script>
		</div>
	</div>
	
	
	
		<br><br>
	
	<!-- FOOTER -->
        <footer class="container">
            <p class="float-right"><a href="#">Back to top</a></p>
            <p>&copy; 2022 SLIIT. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        </footer>
        </div>
</body>
</html>
