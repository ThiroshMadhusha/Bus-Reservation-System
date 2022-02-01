<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First Application</title>
</head>
<body>

<form method="POST" action="CalculateServlet">

		No1 : <input type="text" name="no1" /><br /><br /> 
		No2 : <input type="text" name="no2" /><br /><br /> 
		
		<input type="submit" name="button" value="+" />
		<input type="submit" name="button" value="-" />
		<input type="submit" name="button" value="*" />
		<input type="submit" name="button" value="/" /><br /><br />
	
	</form>

</body>
</html>