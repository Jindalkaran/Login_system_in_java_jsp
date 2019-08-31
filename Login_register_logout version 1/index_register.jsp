<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>

		<h1> REGISTRATION </h1>

		<form action="process_register.jsp">
		USERNAME:<input type="text" placeholder="UserName" name="uname" ><br><BR>
		E-MAIL:<input type="text" placeholder="Email" name="uemail"><br><BR>
		PASSWORD:<input type="text" placeholder="Password" name="upass"><br><BR>
		<button>SUBMIT</button>
		</form>
		
		<a href="login_page.jsp">If already registered click here to login</a>
		
</body>
</html>