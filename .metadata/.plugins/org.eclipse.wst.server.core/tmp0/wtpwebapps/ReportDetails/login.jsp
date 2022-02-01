<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="/header.jsp"></jsp:include>
<link rel ="stylesheet" href="style.css">

</head>
<body>

			<div class="signinwall"> 	
				<img src="bus8.jpg" class="user">
					<h2> Please Login! </h2><br>
					
					<form action = "login" method = "POST">
  		
						<label>Registration No</label><br>
							<input type = "text" name = "regno" placeholder="Enter The Registration Number" required ><br><br>

						<label for="psw">Password</label><br>
							<input type = "text" name = "password" placeholder="Enter The Password" required ><br><br>
						
								<p style="text-align:right;">Forgot <a href="#">password?</a></p>
								
								<p><input type="checkbox" checked="checked" name="remember" required> stay signed in<p>
						
							<a href="#"><button type="submit" class="b1">Login</button></a>
							
							<h3>Please Enter Valid Credentials</h3>
			
					</form>
			</div>
		
</body>
</html>
