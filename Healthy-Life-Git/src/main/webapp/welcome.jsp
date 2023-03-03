<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Healthy Life</title>

<jsp:include page="StandardImports.jsp"/>

</head>
<body>
	<jsp:include page="nav-top.jsp"/>
	
	<div class="container">
		<h1>The Healthy Life Portal</h1>
		<h3>${welcomeMessage}</h3>
		<h1>poo</h1>
	
		<%
			if(session.getAttribute("username") != null){
				out.println("<h3>Welcome Back " + session.getAttribute("username") + "!</h3>");
			} else{
				out.println("<h3>${welcomeMessage}</h3>");
			}
		%>
	</div>
</body>
</html>