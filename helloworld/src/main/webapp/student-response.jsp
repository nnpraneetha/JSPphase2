<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	The student registration is confirmed for <%= request.getParameter("firstname") %> and <%= request.getParameter("lastname") %>
	<br><br>
	Welcome - ${param.firstname}, ${param.lastname} from ${param.country}<br>
	Language - ${param.Language}<br>

	<%
			String[] langs = request.getParameterValues("fl");
			if (langs != null) {
				out.println("Programming languages you selected are: ");					 
				out.println("<ul>");
				for (String lang: langs) {
					out.println("<li>" + lang + "</li>");	
				}
				out.println("</ul>");
			}
	%>
</body>
</html>