<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSSfiles/index.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@include file="Nav_Page.jsp"%>

	<div class="container-flued nav-bg ">
		<div class="row justify-content-center">

			<div class=" col-md-4 border ml-5 mr-5 p-4 bg-light">
				<fieldset class="border1">
					<legend class="text-center">
						<p class="fa fa-user-plus"></p>
						Register Profile
					</legend>
					<form action="Register_servlet" method="post">

						<%
						Object st = session.getAttribute("error");
						String str = String.valueOf(st);
						if (str.equals("used")) {
						%>
						<div class="alert alert-danger" role="alert">Email or
							Password already used</div>
						<%
						session.removeAttribute("error");
						}
						%>
						
						<div class="mb-3">

							<label for="id" class="form-label">ID</label> <input
								type="text" name="Id" class="form-control" id="id">
						</div>
						<div class="mb-3">

							<label for="name" class="form-label">Name</label> <input
								type="text" name="Name" class="form-control" id="name">
						</div>
						<div class="mb-3">
							<label for="Lname" class="form-label">LastName</label> <input
								type="text" name="LastName" class="form-control" id="Lname">
						</div>

						<div class="mb-3">
							<label for="Email" class="form-label">Email address</label> <input
								type="email" name="Email" class="form-control" id="Email">
						</div>

						<div class="mb-3">
							<label for="Password1" class="form-label">Password</label> <input
								type="password" name="Password" class="form-control"
								id="Password1">
						</div>

						<div class="mb-3">
							<label for="mobno" class="form-label">Mobile Number</label> <input
								type="text" name="MobNo" class="form-control" id="mobno">
						</div>

						<div class="from-group">
							<label for="gender">Select Gender</label> <br> <input
								type="radio" id="gender" value="Male" name="Gender">
							Male <input type="radio" id="gender" value="Female" name="Gender">
							Female
						</div>
						<br>

						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</fieldset>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
		integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
		crossorigin="anonymous"></script>
</body>
</html>