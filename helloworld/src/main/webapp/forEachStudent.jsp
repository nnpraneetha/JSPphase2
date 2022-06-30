<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,jspdemo.Student" %>
<%
	List<Student> data=new ArrayList<Student>();
	data.add(new Student("John","Doe"));
	data.add(new Student("Max","Smith"));
	data.add(new Student("jones","K"));
	data.add(new Student("jane","Math"));
	data.add(new Student("james","Pat"));
	pageContext.setAttribute("mystu",data);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1" style="border-collapse:collapse">
	<tr>
		<th>FirstName</th>
		<th>LastName</th>
	</tr>
		<c:forEach var="student" items="${mystu }">
			<tr>
			<td>${student.firstname}</td>
			<td>${student.lastname}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>