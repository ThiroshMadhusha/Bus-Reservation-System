<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>

	<table>
	<c:forEach var="rep" items="${repDetails}">
	
	<c:set var="id" value="${rep.id}"/>
	<c:set var="regno" value="${rep.regNo}"/>
	<c:set var="type" value="${rep.type}"/>
	<c:set var="route" value="${rep.route}"/>
	<c:set var="tripid" value="${rep.tripid}"/>
	<c:set var="bookingid" value="${rep.bookingid}"/>
	<c:set var="price" value="${rep.price}"/>
	<c:set var="seatno" value="${rep.seatno}"/>
	<c:set var="facilities" value="${rep.facilities}"/>
	<c:set var="company" value="${rep.company}"/>
	<c:set var="password" value="${rep.password}"/>
	
	<tr>
		<td>Report ID</td>
		<td>${rep.id}</td>
	</tr>
	<tr>
		<td>Registration No</td>
		<td>${rep.regno}</td>
	</tr>
	<tr>
		<td>Vehicle Type</td>
		<td>${rep.type}</td>
	</tr>
	<tr>
		<td>Route</td>
		<td>${rep.route}</td>
	</tr>
	<tr>
		<td>Trip ID</td>
		<td>${rep.tripid}</td>
	</tr>
	
	<tr>
		<td>Booking ID</td>
		<td>${rep.bookinid}</td>
	</tr>
	<tr>
		<td>Price</td>
		<td>${rep.price}</td>
	</tr>
	<tr>
		<td>Seat Number</td>
		<td>${rep.seatno}</td>
	</tr>
	<tr>
		<td>Facilities</td>
		<td>${rep.facilities}</td>
	</tr>
	<tr>
		<td>Company</td>
		<td>${rep.company}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${rep.password}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updatereport.jsp" var="repupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="rno" value="${regno}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="route" value="${route}"/>
		<c:param name="tripid" value="${tripid}"/>
		<c:param name="bookingid" value="${bookingid}"/>
		<c:param name="price" value="${price}"/>
		<c:param name="seatno" value="${seatno}"/>
		<c:param name="facilities" value="${facilities}"/>
		<c:param name="company" value="${company}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${repupdate}">
	<input type="button" name="update" value="Update Report Data">
	</a>
	
	<br>
	<c:url value="deletereportr.jsp" var="repdelete">
		<c:param name="id" value="${id}" />
		<c:param name="rno" value="${regno}" />
		<c:param name="type" value="${type}" />
		<c:param name="route" value="${route}" />
		<c:param name="bookingid" value="${bookingid}" />
		<c:param name="price" value="${price}" />
		<c:param name="seatno" value="${seatno}" />
		<c:param name="facilities" value="${facilities}" />
		<c:param name="company" value="${company}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${repdelete}">
	<input type="button" name="delete" value="Delete Report Account">
	</a>
	
	
</body>
</html>