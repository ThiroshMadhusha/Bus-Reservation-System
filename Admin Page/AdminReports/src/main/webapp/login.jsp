<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel ="stylesheet" href="style.css">

</head>
<body>
	
	<div class="signinwall"> 	
			<img src="bus3.jpg" class="user">
					<h2> Please Login! </h2><br>
					
					<form action = "log" method = "POST">
  		
						<label>Registration No</label><br>
							<input type = "text" name = "reg" placeholder="Enter The Registration Number" required ><br><br>

						<label for="psw">Password</label><br>
							<input type = "text" name = "pass" placeholder="Enter The Password" required ><br><br>
						
								<p style="text-align:right;">Forgot <a href="#">password?</a></p>
								
								<p><input type="checkbox" checked="checked" name="remember" required> stay signed in<p>
						
							<a href="#"><button type="submit" class="b1">Login</button></a>
							
							<h3>Please Enter Valid Credentials</h3>
			
					</form>
			</div>
</body>
</html>