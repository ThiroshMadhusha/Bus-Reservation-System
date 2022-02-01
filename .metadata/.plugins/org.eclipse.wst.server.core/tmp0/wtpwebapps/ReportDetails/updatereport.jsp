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
	<jsp:include page="/header.jsp"></jsp:include>
<body background= "bus3.jpg">
<center>
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
	
	
	<form action="update" method="post">
		<table id="tb2" bgcolor=" magenta">
				<tr>
					<td>Report ID</td>
					<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
				</tr>
				<tr>
					<td>Registration Number</td>
					<td><input type="text" name="rno" value="<%= regNo %>"></td>
				</tr>
				<tr>
					<td>Vehicle Type</td>
					<td><input type="text" name="type" value="<%= type %>"></td>
				</tr>
				<tr>
					<td>Route</td>
					<td><input type="text" name="route" value="<%= route %>"></td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td><input type="text" name="phone" value="<%= phone %>"></td>
				</tr>
				<tr>
					<td>Seat Number</td>
					<td><input type="seatno" name="pass" value="<%= seatno %>"></td>
				</tr>	
				<tr>
					<td>Facilities</td>
					<td><input type="facilities" name="pass" value="<%= facilities %>"></td>
				</tr>	
				<tr>
					<td>Company</td>
					<td><input type="company" name="pass" value="<%= company %>"></td>
				</tr>	
				<tr>
					<td>Password</td>
					<td><input type="pass" name="pass" value="<%= password %>"></td>
				</tr>			
		</table>
				<br>
				
				<input type="submit" name="submit" value="Update Report Data">
			</form>
		</center>
	</body>
</html>
