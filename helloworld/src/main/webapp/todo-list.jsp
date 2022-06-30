<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList,java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="todo-list.jsp">
		Add new item:
		<input type="text" name="item"/>
		<input type="submit" value="submit"/>	
	</form>
	<hr>
	
	<%
		List<String> items=(List<String>) session.getAttribute("mytodolist") ;
		if(items==null){
			items=new ArrayList<String>();
			session.setAttribute("mytodolist",items);
		}
		String item=request.getParameter("item");
		boolean notempty= item != null && item.trim().length()>0;
		boolean notdup=notempty && !items.contains(item.trim());
		if(notempty && notdup){
			items.add(item);			
		}
	%>
	 <b>ToDo List:</b><br>
	<ol>
		<% 
			for(String i:items){
				out.println("<li>"+i+"</li>"); 
			}
		%>
	</ol>

</body>
</html>