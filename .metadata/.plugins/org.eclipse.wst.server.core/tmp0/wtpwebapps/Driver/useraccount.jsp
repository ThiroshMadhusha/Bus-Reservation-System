<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<jsp:include page="/header.jsp"></jsp:include>
<body>
<center>
	<table id="tb3" bgcolor=" Violet">
	
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="busno" value="${cus.busno}"/>
	<c:set var="route" value="${cus.route}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td>ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Driver Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Bus Number</td>
		<td>${cus.busno}</td>
	</tr>
	<tr>
		<td>Route</td>
		<td>${cus.route}</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td>${cus.userName}</td>
	</tr>
	
	<tr>
		<td>Password</td>
		<td>${cus.userName}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updatedriver.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="busno" value="${busno}"/>
		<c:param name="route" value="${route}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deletedriver.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="busno" value="${busno}" />
		<c:param name="route" value="${route}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	</center>
	
</body>
</html>