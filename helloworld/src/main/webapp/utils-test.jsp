<%@ page import="jspdemo.*" %>
<html>
<body>
	<jsp:include page="myheader.html"></jsp:include>

	Testing the utils: <%= helperUtils.uppercase("jspdemo") %>
	<jsp:include page="myfooter.jsp" />
	
</body>
</html>