<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="/header.jsp"></jsp:include>

<body background= "bus3.jpg">

  <center>
		<table id="tb2" bgcolor=" magenta">
			<tr>
			<td>
			
				
					<h2> Please Login! </h2><br>
					
					<form action="insert" method="post" width="100">
			
						Registration No <input type="text" name="rid"  placeholder="Enter The Reg no" required><br><br>
						Vehicle Type <input type="text" name="type" placeholder="Enter The Vehicle type" required><br><br>
						Route <input type="text" name="route" placeholder="Enter The Route" required><br><br>
						Phone No <input type="text" name="phone" placeholder="Enter The phone no" required><br><br>
						Seat No <input type="text" name="seatno" placeholder="Enter The seat no" required><br><br>
						Facilities <input type="text" name="facilities" placeholder="Enter The facilities"required><br><br>
						Company <input type="text" name="company"placeholder="Enter The company" required><br><br>
						Password <input type="password" name="psw" placeholder="Enter The Password"required><br><br>
				
						<center><input type="submit" name="submit" value="Create Report"></center>
					</form>
					</td>
				</tr>
			</table>	
</center>
</body>
</html>