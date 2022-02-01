<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<jsp:include page="/header.jsp"></jsp:include>
<body>
<center>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String busno = request.getParameter("busno");
		String route = request.getParameter("route");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<h1>Driver Account Delete</h1>

	<form action="delete" method="post">
	<table id="tb2" bgcolor=" Violet">
		<tr>
			<td>ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Driver Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td>Bus Number</td>
		<td><input type="text" name="busno" value="<%= busno %>" readonly></td>
	</tr>
	<tr>
		<td>Route</td>
		<td><input type="text" name="route" value="<%= route %>" readonly></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>" readonly></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Account">
	</form>
</center>
</body>
</html>