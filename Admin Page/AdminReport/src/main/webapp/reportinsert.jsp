<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel ="stylesheet" href="styles.css">
<body>


 <div class="loginBox">
  <img class="user" src="bus1.jpg">
  <h2>Log In Here</h2>
  <form action="insert" method="post">
	
		Registration No <input type="text" name="rid"><br>
		Vehicle Type <input type="text" name="type"><br>
		Route <input type="text" name="route"><br>
		Trip ID <input type="text" name="tripid"><br>
		Booking ID <input type="text" name="bookingid"><br>
		Price <input type="text" name="price"><br>
		Seat Number <input type="text" name="seatno"><br>
		Facilities <input type="text" name="facilities"><br>
		Company <input type="text" name="company"><br>
		Password <input type="password" name="psw"><br>
		
		<input type="submit" name="submit" value="Create Report">
	</form>
</div>

	

</body>
</html>