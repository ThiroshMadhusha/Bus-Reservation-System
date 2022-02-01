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
		String module = request.getParameter("module");
		String topic = request.getParameter("email");
		String lecture = request.getParameter("phone");
		String lectureId = request.getParameter("lname");
		String password = request.getParameter("pass");
	%>

	<h1>Lecture Account Update</h1>

	<form action="update" method="post">
	<table>
		<tr>
			<td> ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Module</td>
			<td><input type="text" name="module" value="<%= module %>" ></td>
		</tr>
		<tr>
		<td>Topic</td>
		<td><input type="text" name="topic" value="<%= topic %>" ></td>
	</tr>
	<tr>
		<td>Lecture Name</td>
		<td><input type="text" name="lecture" value="<%= lecture %>" ></td>
	</tr>
	<tr>
		<td>LectureId</td>
		<td><input type="text" name="lname" value="<%= lectureId %>" ></td>
	</tr>	
	<tr>
		<td>Password</td>
		<td><input type="text" name="pass" value="<%= password %>" ></td>
	</tr>			
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Account">
	</form>
		

	

</body>
</html>