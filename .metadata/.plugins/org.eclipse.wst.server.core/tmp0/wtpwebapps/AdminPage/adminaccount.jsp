<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account</title>
</head>
<body>
		
		<table>
	<c:forEach var="adm" items="${admDetails}">
	
	<tr>
		<td>ID </td>
		<td>${adm.id}</td>
	</tr>
	
	<tr>
		<td> Name </td>
		<td>${adm.name}</td>
	</tr>
	<tr>
		<td> Email </td>
		<td>${adm.email}</td>
	</tr>
	
	<tr>
		<td> User Name </td>
		<td>${adm.userName}</td>
	</tr>
	<tr>
		<td> Password </td>
		<td>${adm.password}</td>
	</tr>
	
	</c:forEach>
	</table>

</body>
</html>