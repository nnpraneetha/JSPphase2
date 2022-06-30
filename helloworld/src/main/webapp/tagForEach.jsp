<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%
	String[] cities={"Mumbai","Delhi","Guntur","Chennai","Hyderabad"}; // cities is local var in this scriplet
	pageContext.setAttribute("mycities",cities); //like global variable

%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<c:forEach var="city" items="${mycities}">
			<li>${city }<br></li>
		</c:forEach>
	</ul>
</body>
</html>