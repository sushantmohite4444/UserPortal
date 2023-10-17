<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
<link rel="stylesheet" href="CSSfiles/index.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Error page</title>
</head>
<body>
		<div class="container">
		<div class="row text-center mt-5">
		<div  class="col-12">
		<p class="display-5">Sorry ! Something went wrong ...</p>

		<%= exception %>
		<br>
		<p>Go to home page</p>
		<a href="index.jsp" class="btn btn-outline-secondary">Home</a>
		</div>
		</div>
		
		
		</div>
</body>
</html>