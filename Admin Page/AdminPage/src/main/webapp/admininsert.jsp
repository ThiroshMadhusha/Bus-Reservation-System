<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Page</title>
</head>
<link rel ="stylesheet" href="style.css">
<body>

	<div class="signinwall"> 	
			<img src="bus3.jpg" class="user">
					<h2> Please Login! </h2><br>
					
					<form action="insert" method="post">
		
		
	Name : <input type = "text" name = "name"> <br><br>
	Email : <input type = "text" name = "email"> <br><br>
	User Name : <input type = "text" name = "uid"> <br><br>
	Password : <input type = "text" name = "psw"> <br><br>
	
	<input type = "submit" name = "submit" value = "Create Admin">
			
	</form>
			</div>
	

</body>
</html>