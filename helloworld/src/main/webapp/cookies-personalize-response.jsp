<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String fl=request.getParameter("favlanguage");
		Cookie mycookie=new Cookie("trainingportal.favlanguage",fl);
		mycookie.setMaxAge(60*60);
		response.addCookie(mycookie);
	%>

	Thanks! we set your favorite language to ${param.favlanguage }
	<br><br>
	<a href="cookies-main.jsp">Return to Training Portal.</a>
</body>
</html>