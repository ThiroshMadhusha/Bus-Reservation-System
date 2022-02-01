<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	</style>
	
</head>
<body>

	<h1>Login Page</h1>
	<form action="login" method="post">
		Registration Number <input type="text" name="regno" placeholder="Enter The Registration Number"><br>
		Password <input type="password" name="password" placeholder="Enter The password"><br>
		
		<input type="submit" name="submit" value="Login">
	</form>

</body>
</html>