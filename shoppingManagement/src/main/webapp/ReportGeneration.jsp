<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>GOAL 24/7</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"crossorigin="anonymous">
	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	
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
			<h2 class="text-center">PAYMENT REPORT</h2><br><br>
		
			<div class="container text-left">
			
			<a href="Payment-form.jsp" class="btn btn-secondary">ADD
					New Payment</a>

					<br><br>
				<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Payment ID" title="Type in a name">	

			</div>
			<br>
			<table class="table table-bordered table table-hover"id="myTable">
				<thead class="thead-dark">
					<tr>
						<th>Payment ID</th>
						<th>Payment NAME</th>
						<th>TYPE</th>
						<th>DESCRIPTION</th>
						<th>DATE</th>
						
						
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
						
						</tr>
					</c:forEach>
				
				</tbody> 

			</table>
			
			<script type="text/javascript">
        function Export() {
            html2canvas(document.getElementById('myTable'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Payment Report.pdf");
                }
            });
        }
    </script>
			
			
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

		<input type="button" id="btnExport" class="btn btn-success" value="Download Report" onclick="Export()" />

		</div>
	</div>
	
	
	
	<!-- FOOTER -->
        <footer class="container">
            <p class="float-right"><a href="#">Back to top</a></p>
            <p>GOAL 24/7 © 2022 . &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        </footer>
        </div>
</body>

</html>

