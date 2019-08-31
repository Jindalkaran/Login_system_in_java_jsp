<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>
</head>
<body>
	<%
		
		if(session.getAttribute("session")==null)
			response.sendRedirect("login_page.jsp");
	%>
	<h2>This is HOME PAGE</h2>
	
	
	<%
	out.println("You are logged in as :");
	
	
	%>
	
	
	
	<a href="logout.jsp">Log Out</a>
</body>
</html>