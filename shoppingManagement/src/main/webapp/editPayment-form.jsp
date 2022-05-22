<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
.header {
	background-color: #000000;
	padding: 30px;
	text-align: center;
	font-size: 35px;
	color: white;
}

.well {
	background-color: #454545;
	padding: 24px;
	border-radius: 20px
}
</style>
<title>GOAL 24/7</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="CSS/InsertForm.css">

</head>
<body>

	<header>

		<div class="header">
			<h1>GOAL 24/7</h1>
		</div>

	</header>
	<div class="bg">

		<br>
		<div class="container">
			<h1 align="center" class="well">Update Payment Details</h1>
			<div class="col-lg-12 well">
				<ul class="navbar-nav">
					<li><a href="<%=request.getContextPath()%>/list"
						class="btn btn-outline-primary" class="nav-link">View All
							Payments</a></li>
				</ul>
				<br>
				<div class="card">
					<div class="card-body">
						<c:if test="${payment != null}">
							<form action="update" method="post">
						</c:if>

						<caption>
							<h2>

								<c:if test="${payment == null}">

								</c:if>
							</h2>
						</caption>

						<c:if test="${payment != null}">
							<input type="hidden" name="id"
								value="<c:out value='${payment.id}' />" />
						</c:if>

						<fieldset class="form-group">
							<label>Name</label> <input type="text"
								placeholder="Type name here"
								value="<c:out value='${payment.name}' />" class="form-control"
								name="name" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label>Payment Type</label> <input type="text"
								placeholder="Type payment type here"
								value="<c:out value='${payment.type}' />" class="form-control"
								name="type" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label>Description</label> <input type="text"
								placeholder="Type description here"
								value="<c:out value='${payment.description}' />"
								class="form-control" name="description" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label>Date</label> <input type="date"
								value="<c:out value='${payment.date}' />" class="form-control"
								name="date" required="required">
						</fieldset>


						<button type="submit" class="btn btn-info" value="update"
							onclick="return confirm('Successfully updated payment details!')">UPDATE</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
