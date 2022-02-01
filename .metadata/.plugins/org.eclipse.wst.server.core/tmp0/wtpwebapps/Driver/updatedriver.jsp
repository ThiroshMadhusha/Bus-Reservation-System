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
<body  background= "bus7.jpg">
	<center>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String busno = request.getParameter("busno");
		String route = request.getParameter("route");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	
	<form action="update" method="post">
	<table id="tb3" bgcolor=" Violet">
		<tr>
			<td>ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Driver Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Bus Number</td>
		<td><input type="text" name="busno" value="<%= busno %>"></td>
	</tr>
	<tr>
		<td>Route</td>
		<td><input type="text" name="route" value="<%= route %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>
	</center>
</body>
</html>