<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<table>
	<c:forEach var="rep" items="${repDetails}">
	
	<tr>
		<td> Report ID </td>
		<td>${rep.reportid}</td>
	</tr>
	
	<tr>
		<td> Registration No </td>
		<td>${rep.regno}</td>
	</tr>
	<tr>
		<td> Vehicle Type </td>
		<td>${rep.type}</td>
	</tr>
	
	<tr>
		<td> Route </td>
		<td>${rep.route}</td>
	</tr>
	<tr>
		<td> Trip ID </td>
		<td>${rep.tripID}</td>
	</tr>
	<tr>
		<td> Booking ID </td>
		<td>${rep.bookingID}</td>
	</tr>
	
	<tr>
		<td> Price </td>
		<td>${rep.price}</td>
	</tr>
	
	<tr>
		<td> Seat No </td>
		<td>${rep.seatNo}</td>
	</tr>
	<tr>
		<td> Facilities </td>
		<td>${rep.facilities}</td>
	</tr>
	<tr>
		<td> Company </td>
		<td>${rep.company}</td>
	</tr>
	
	<tr>
		<td> Password </td>
		<td>${rep.password}</td>
	</tr>
	
	</c:forEach>
	</table>
		

</body>
</html>