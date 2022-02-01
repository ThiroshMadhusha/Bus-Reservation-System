<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="/header.jsp"></jsp:include>
<body >


	<center>
	<form action="insert" method="post">
		Driver Name <input type="text" name="name"><br>
		Bus Number <input type="text" name="busno"><br>
		Route <input type="text" name="route"><br>
		User Name <input type="text" name="uid"><br>
		Password <input type="password" name="psw"><br>
		
		<input type="submit" name="submit" value="Create Driver">
	</form>
</center>

</body>
</html>