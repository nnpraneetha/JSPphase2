<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>hello world</h3>
	The time on server is <%= new java.util.Date() %>
	<br>
	<!-- 
		Date mynewdate = new java.util.Date(); in java is similar to the below one 
	 -->
	
	<c:set var="mynewdate" value="<%= new java.util.Date() %>" />
	
	New Time on the server is : ${mynewdate}
	
</body>
</html>