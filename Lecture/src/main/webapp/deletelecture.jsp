<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String module = request.getParameter("module");
		String topic = request.getParameter("email");
		String lecture = request.getParameter("phone");
		String lectureId = request.getParameter("lname");
		String password = request.getParameter("pass");
	%>

	<h1>Customer Account Delete</h1>

	<form action="delete" method="post">
	<table>
		<tr>
			<td> ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Module</td>
			<td><input type="text" name="module" value="<%= module %>" readonly></td>
		</tr>
		<tr>
		<td>Topic</td>
		<td><input type="text" name="topic" value="<%= topic %>" readonly></td>
	</tr>
	<tr>
		<td>Lecture Name</td>
		<td><input type="text" name="lecture" value="<%= lecture %>" readonly></td>
	</tr>
	<tr>
		<td>LectureId</td>
		<td><input type="text" name="lname" value="<%= lectureId %>" readonly></td>
	</tr>	
	<tr>
		<td>Password</td>
		<td><input type="text" name="password" value="<%= password %>" readonly></td>
	</tr>			
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Account">
	</form>

</body>
</html>