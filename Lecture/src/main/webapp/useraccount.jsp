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
<body>

	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="module" value="${cus.module}"/>
	<c:set var="topic" value="${cus.topic}"/>
	<c:set var="lecture" value="${cus.lecture}"/>
	<c:set var="lectureid" value="${cus.lectureId}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td> ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Module Name</td>
		<td>${cus.module}</td>
	</tr>
	<tr>
		<td>Topic</td>
		<td>${cus.topic}</td>
	</tr>
	<tr>
		<td>Lecture Name</td>
		<td>${cus.lecture}</td>
	</tr>
	<tr>
		<td>LectureID</td>
		<td>${cus.lectureId}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${cus.password}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updatelecture.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="module" value="${module}"/>
		<c:param name="topic" value="${topic}"/>
		<c:param name="lecture" value="${lecture}"/>
		<c:param name="lname" value="${lectureid}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deletelecture.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="module" value="${module}"/>
		<c:param name="topic" value="${topic}"/>
		<c:param name="lecture" value="${lecture}"/>
		<c:param name="lname" value="${lectureid}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	
	
</body>
</html>