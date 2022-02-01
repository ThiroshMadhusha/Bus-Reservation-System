<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="/header.jsp"></jsp:include>
<body background= "bus3.jpg">

	<%
		String id = request.getParameter("id");
		String regNo = request.getParameter("rno");
		String type = request.getParameter("type");
		String route = request.getParameter("route");
		String phone = request.getParameter("phone");
		String seatno = request.getParameter("seatno");
		String facilities = request.getParameter("facilities");
		String company = request.getParameter("company");
		String password = request.getParameter("pass");
	%>
<center>
	<h1>Report Account Delete</h1>

	<form action="delete" method="post">
	<table id="tb2" bgcolor=" magenta">
		<tr>
			<td>Report ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Registration No</td>
			<td><input type="text" name="rno" value="<%= regNo %>" readonly></td>
		</tr>
		<tr>
		<td>Vehicle Type</td>
		<td><input type="text" name="type" value="<%= type %>" readonly></td>
	</tr>
	<tr>
		<td>Route</td>
		<td><input type="text" name="route" value="<%= route %>" readonly></td>
	</tr>
	<tr>
		<td>Phone No</td>
		<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	</tr>		
	
	<tr>
		<td>Seat no</td>
		<td><input type="text" name="seatno" value="<%= seatno %>" readonly></td>
	</tr>
	<tr>
		<td>Facilities</td>
		<td><input type="text" name="facilities" value="<%= facilities %>" readonly></td>
	</tr>
	<tr>
		<td>Company</td>
		<td><input type="text" name="company" value="<%= company %>" readonly></td>
	</tr>		
	<tr>
		<td>Password</td>
		<td><input type="text" name="pass" value="<%= password %>" readonly></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete Report Account">
	</form>
</center>
</body>
</html>