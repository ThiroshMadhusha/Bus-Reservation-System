<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
	</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String regNo = request.getParameter("rno");
		String type = request.getParameter("type");
		String route = request.getParameter("route");
		String tripid = request.getParameter("tripid");
		String bookingid = request.getParameter("bookingid");
		String price = request.getParameter("price");
		String seatno = request.getParameter("seatno");
		String facilities = request.getParameter("facilities");
		String company = request.getParameter("company");
		String password = request.getParameter("pass");
	%>
	
	
	<form action="update" method="post">
	<table>
		<tr>
			<td>Report ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Registration No</td>
			<td><input type="text" name="name" value="<%= regNo %>"></td>
		</tr>
		<tr>
		<td>Vehicle Type</td>
		<td><input type="text" name="email" value="<%= type %>"></td>
	</tr>
	<tr>
		<td>Route</td>
		<td><input type="text" name="phone" value="<%= route %>"></td>
	</tr>
	<tr>
		<td>Trip ID</td>
		<td><input type="text" name="uname" value="<%= tripid %>"></td>
	</tr>
	<tr>
			<td>Booking ID</td>
			<td><input type="text" name="cusid" value="<%= bookingid %>" readonly></td>
		</tr>
		<tr>
			<td>Price</td>
			<td><input type="text" name="name" value="<%= price %>"></td>
		</tr>
		<tr>
		<td>Seat Number</td>
		<td><input type="text" name="email" value="<%= seatno %>"></td>
	</tr>
	<tr>
		<td>Facilities</td>
		<td><input type="text" name="phone" value="<%= facilities %>"></td>
	</tr>
	<tr>
		<td>Company</td>
		<td><input type="text" name="uname" value="<%= company %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update Report Data">
	</form>

</body>
</html>