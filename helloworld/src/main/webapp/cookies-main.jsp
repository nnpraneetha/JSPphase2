<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>Training Portal</h3>
	<%
		String fl="Python";
		Cookie[] cookies=request.getCookies();
		if(cookies!=null){
			for(Cookie c:cookies){
				if(c.getName().equals("trainingportal.favlanguage")){
					fl=c.getValue();
				}
			}
		}
	%>
	<p>Your favorite Programming language is  <%= fl %></p>
	<p>Latest news reports for <strong><%= fl %></strong></p>
	<p>Job Listings for <strong><%= fl %></strong></p>
	<a href="cookies-personalize.html">Personalize this page</a>
</body>
</html>