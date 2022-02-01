<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
</head>
<body>
	<table>
	<c:forEach var="cus" items="${cusDetails}">

	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	
	<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Mobile No</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td>${cus.userName}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${cus.password}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<c:url value = "updatecustomer.jsp" var = "cusupdate">
			
			<c:param name = "id" value = "${id}"/>
			<c:param name = "name" value = "${name}"/>
			<c:param name = "email" value = "${email}"/>
			<c:param name = "phone" value = "${phone}"/>
			<c:param name = "uname" value = "${username}"/>
			<c:param name = "pass" value = "${password}"/>
			
	</c:url>
	
	<a href = "${cusupdate}">
	<input type = "button" name = "update" value = "Update My Data">
	</a>
	<br>
	
	<c:url value = "deletecustomer.jsp" var = "cusdelete">
		
			<c:param name = "id" value = "${id}"/>
			<c:param name = "name" value = "${name}"/>
			<c:param name = "email" value = "${email}"/>
			<c:param name = "phone" value = "${phone}"/>
			<c:param name = "uname" value = "${username}"/>
			<c:param name = "pass" value = "${password}"/>
	
	</c:url>
	
	<a href = "${cusdelete}">
	<input type = "button" name = "delete" value = "Delete my account">
	</a>
	
	
	
	
	
	
</body>
</html>