<%@page import="entitityclasses.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Profile</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSSfiles/index.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%
	Employee emp = (Employee) session.getAttribute("empprop");
	%>

<%
	 Object st=  session.getAttribute("saveprof");
	String str = String.valueOf(st);
	if(str.equals("okk")){
		
		%>
		<div class="alert alert-success" role="alert">
		Profile update successfully
		</div>
		<% 
		session.removeAttribute("saveprof");
	}else if(str.equals("")) {
		
		%>
		<div class="alert alert-alert-danger" role="alert">
		 Profile not updated 
		</div>
		<% 
		session.removeAttribute("saveprof");
	}
	%>

	<nav class="navbar navbar-expand-lg navbar-light nav-bg">

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">
						<p class="fa fa-industry"></p> Home
				</a></li>



				<li class="nav-item"><a class="nav-link " href="Register.jsp">
						<p class="fa fa-user-plus"></p> Register
				</a></li>


				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-toggle="dropdown" aria-expanded="false">
						<p class="fa fa-smile-o"></p> Dropdown
				</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Fun</a> <a class="dropdown-item"
							href="#">Updates</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Products</a>
					</div></li>


			</ul>
			<ul class="navbar-nav  mr-right">

				<li class="navbar-item"><a class="nav-link text-uppercase"
					href="#" data-toggle="modal" data-target="#exampleModal">
						<p class="fa fa-user-circle-o"></p> <%=emp.getName()%></a></li>

				<li class="navbar-item"><a class="nav-link"
					href="Logout_servlet">
						<p class="fa fa-power-off"></p> Logout
				</a></li>

			</ul>

		</div>

	</nav>
	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header nav-bg">
					<h5 class="modal-title"  id="exampleModalLabel" >My Profile</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="continer text-center">
						<img src="ProfilePics/<%= emp.getProfilepic() %>" class ="justify-content-center" style=" border-radius:50% ;max-width:100px;">
						<%System.out.println(emp.getProfilepic()); %>
						<p class=" text-uppercase">
							<%=emp.getName()%></p>




						<div id="display-vh">
							<table class="table text-center">
								<tbody>
									<tr>
										<td>Id</td>
										<td><%=emp.getId()%></td>
									</tr>

									<tr>
										<td>Name</td>
										<td><%=emp.getName()%></td>
									</tr>

									<tr>
										<td>LastName</td>
										<td><%=emp.getLastName()%></td>
									</tr>

									<tr>
										<td>Email</td>
										<td><%=emp.getEmail()%></td>
									</tr>
									<tr>
										<td>Password</td>
										<td><%=emp.getPassword()%></td>
									</tr>
									<tr>
										<td>Gender</td>
										<td><%=emp.getGender()%></td>
									</tr>
									<tr>
										<td>Mobile Number</td>
										<td><%=emp.getMobno()%></td>
									</tr>
									
								</tbody>
							</table>

							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary"
									onclick="hideshow()">Edit</button>
							</div>
						</div>




						<div id="display-hv" style="display: none">
							<form action="Update_servlet" method="post" enctype="multipart/form-data">
								<%-- <%
								Object st = session.getAttribute("sms");
								String str = String.valueOf(st);
								if (str.equals("used")) {
								%>
								<div class="alert alert-secondary" role="alert">Invalid
									Credentials</div>
								<%
								session.removeAttribute("sms");
								} else if (str.equals("success")) {
								%>
								<div class="alert alert-success" role="alert">Update
									Successfully</div>
								<%
								session.removeAttribute("sms");
								}
								%> --%>

								<table class="table text-center">
									<tbody>
										<tr>
											<td><input type="hidden" name="id" class="form-control"
												value=<%=emp.getId()%>></td>
										</tr>

										<tr>
											<td>Name</td>
											<td><input type="text" name="Name" class="form-control"
												value=<%=emp.getName()%>></td>
										</tr>
										
										<tr>
											<td>LastName</td>

											<td><input type="text" name="LastName"
												class="form-control" value=<%=emp.getLastName()%>></td>
										</tr>
										
										<tr>
											<td>Email</td>
											<td><input type="email" name="Email"
												class="form-control" value=<%=emp.getEmail()%>></td>
										</tr>

										<tr>
											<td>Password</td>
											<td><input type="text" name="Password"
												class="form-control" value=<%=emp.getPassword()%>></td>
										</tr>
										
										<tr>
											<td>Gender</td>
											<td><input type="text" name="Gender"
												class="form-control" value=<%=emp.getGender()%>></td>
										</tr>
										
										<tr>
											<td>Mobile Number</td>
											<td><input type="number" name="MobNumb"
												class="form-control" value=<%=emp.getMobno()%>></td>
										</tr>
										
										<tr>
											<td>Profile Picture</td>
											<td><input type="file"  name="Nprof" ></td>
										</tr>
									</tbody>

								</table>
								<div class="container-fluid">
									<div class="row">
										<div class="col-4 offset-4">
											<button type="submit" class="btn btn-primary ">Save
											</button>
										</div>
									</div>
								</div>
							</form>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary"
									onclick="hideshow()">Cancel</button>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>


	<h1>login successfully</h1>











	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>


	<script type="text/javascript">
		function hideshow() {
			var x = document.getElementById("display-hv");
			var y = document.getElementById("display-vh");
			if (x.style.display === "none") {
				x.style.display = "block";
				y.style.display = "none";
			} else {
				x.style.display = "none";
				y.style.display = "block";
			}
		}
	</script>
</body>
</html>