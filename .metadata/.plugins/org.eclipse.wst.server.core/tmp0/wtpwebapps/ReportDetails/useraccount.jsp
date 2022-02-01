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
<jsp:include page="/header.jsp"></jsp:include>
<body background= "bus3.jpg">

<center>
	<table id="tb2" bgcolor=" magenta">
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="regno" value="${cus.regNo}"/>
	<c:set var="type" value="${cus.type}"/>
	<c:set var="route" value="${cus.route}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="seatno" value="${cus.seatno}"/>
	<c:set var="facilities" value="${cus.facilities}"/>
	<c:set var="company" value="${cus.company}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td>Report ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Registration No</td>
		<td>${cus.regNo}</td>
	</tr>
	<tr>
		<td>Vehicle Type</td>
		<td>${cus.type}</td>
	</tr>
	<tr>
		<td>Route</td>
		<td>${cus.route}</td>
	</tr>
	<tr>
		<td>Phone No</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Seat No</td>
		<td>${cus.seatno}</td>
	</tr>
	<tr>
		<td>Facilities</td>
		<td>${cus.facilities}</td>
	</tr>
	<tr>
		<td>Company</td>
		<td>${cus.company}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${cus.password}</td>
	</tr>

	</c:forEach>
	</table>

<c:url value="updatereport.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="rno" value="${regno}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="route" value="${route}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="seatno" value="${seatno}"/>
		<c:param name="facilities" value="${facilities}"/>
		<c:param name="company" value="${company}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update Report Data">
	</a>
	
	
	
	<br>
	<c:url value="deletereport.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="rno" value="${regno}" />
		<c:param name="type" value="${type}" />
		<c:param name="route" value="${route}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="seatno" value="${seatno}" />
		<c:param name="facilities" value="${facilities}" />
		<c:param name="company" value="${company}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete Report Account">
	</a>
</center>
	
</body>
</html>