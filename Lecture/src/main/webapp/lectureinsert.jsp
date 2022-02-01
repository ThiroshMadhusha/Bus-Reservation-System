<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
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


</table>
	
	<form action="insert" method="post">
		Module <input type="text" name="module"><br>
		Topic <input type="text" name="topic"><br>
		Lecture <input type="text" name="lecture"><br>
		LectureID <input type="text" name="lid"><br>
		Password <input type="password" name="psw"><br>
		
		<input type="submit" name="submit" value="Create Lecture">
	</form>


</body>
</html>