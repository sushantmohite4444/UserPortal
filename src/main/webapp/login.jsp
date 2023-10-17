<%@page import="entitityclasses.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Login</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSSfiles/index.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@include file="Nav_Page.jsp"%>
	<div class="container-flued nav-bg">
		<div class="row justify-content-center ">
			<div class=" col-md-4 border border-primary m-5 p-3  bg-light">
				<fieldset class="border1">
					<legend class="text-center">
						<p class="fa fa-user-circle-o"></p>
						Login Profile
					</legend>
					<form action="Login_servlet" method="post">

						<%
						Object st = session.getAttribute("st");
						String str = String.valueOf(st);
						if (str.equals("no value")) {
						%>
						<div class="alert alert-secondary" role="alert">Invalid
							Credentials</div>
						<%
						session.removeAttribute("st");
						} else if (str.equals("Logout")) {
						%>
						<div class="alert alert-success" role="alert">Logout
							successfully</div>
						<%
						session.removeAttribute("st");
						}
						%>

						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input
								type="email" name="Email" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter email"> <small id="emailHelp"
								class="form-text text-muted">Inter your registered Email
								id</small>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" name="Password" class="form-control"
								id="exampleInputPassword1" placeholder="Password">
						</div>

						<button type="submit" class="btn btn-primary mt-3">Submit</button>
					</form>
				</fieldset>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
</body>
</html>