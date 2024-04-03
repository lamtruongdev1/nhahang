<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>  
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>List Food</h2>
		<a href="/admin/food" class="btn btn-primary">Add Food</a>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Price</th>
					<th>Image</th>
					<th>Type</th>					
					<th>Description</th>
					
				</tr>
			</thead>
			<tbody>		
			
				<c:forEach items="${menu}" var="mn">
				<tr>
				 
					<td>${mn.id}</td>
					<td>${mn.name}</td>
					<td>${mn.price}</td>
					<td align="center"><img src="/images/${mn.image}" width="30px" height="30px"> </td> 
					<td>${mn.type}</td>
					<td>${mn.description}</td>
					<td><a class="btn btn-success" href="">Edit</a>  
					<a class="btn btn-warning" href="">Delete</a>
					
					</td> 
					</tr>
					 
				 </c:forEach>
				
			</tbody>
		</table>
	</div>
</body>
</html>