<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Customer Account</title>
</head>
<body>

	<%
		
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String userName = request.getParameter("uname");
	String password = request.getParameter("pass");
	
	%>
	
	<form action = "delete" method = "POST">
	
		<table>
		
			<tr>
				<td>Customer ID</td>
				<td><input type = "text" name = "cusid" value = "<%=id %>" readonly></td>
			</tr>
			
			<tr>
				<td>Customer Name</td>
				<td><input type = "text" name = "name" value = "<%=name %>" readonly></td>
			</tr>
			
			<tr>
				<td>Email</td>
				<td><input type = "text" name = "email" value = "<%=email %>" readonly></td>
			</tr>
		
			<tr>
				<td>Mobile No</td>
				<td><input type = "text" name = "phone" value = "<%=phone %>" readonly></td>
			</tr>
			
			<tr>
				<td>User Name</td>
				<td><input type = "text" name = "uname" value = "<%=userName %>" readonly></td>
			</tr>
			
			<tr>
				<td>Password</td>
				<td><input type = "text" name = "pass" value = "<%=password %>" readonly></td>
			</tr>
		
		</table>
	
	
		<input type = "submit" name = "submit" value = "Delete My Data"><br><br>
	</form>


</body>
</html>