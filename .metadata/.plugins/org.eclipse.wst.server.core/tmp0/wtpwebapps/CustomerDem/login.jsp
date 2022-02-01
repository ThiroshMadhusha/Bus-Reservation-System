<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<link rel ="stylesheet" href="style.css">

</head>
<body>
	
	<div class="signinwall"> 	
			<img src="bus3.jpg" class="user">
					<h2> Please Login! </h2><br>
					
					<form action="log" method="post">
  		
						<label>User name</label><br>
							<input type="text" placeholder="Enter user Name" name="uid" required><br>

						<label for="psw">Password</label><br>
							<input type="password" placeholder="Enter Password" name="psw" required><br><br>
						
								<p style="text-align:right;">Forgot <a href="#">password?</a></p>
								
								<p><input type="checkbox" checked="checked" name="remember" required> stay signed in<p>
						
							<a href="#"><button type="submit" class="b1">Sign In</button></a>
							
							<h3>Please Enter Valid Credentials</h3>
			
					</form>
			</div>
</body>
</html>