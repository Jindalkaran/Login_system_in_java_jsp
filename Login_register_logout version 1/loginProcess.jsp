<%//COMMENTS
//the email and password entered will be stored in obj object of LoginBean class--->this is done by property="*"
//then we validate by function written in LoginDao class%>


<%@page import="javax.websocket.SendResult"%>
<%@page import="bean.LoginDao"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<%

boolean status =LoginDao.validate(obj);
if(status)
{
	out.println("You are successfully logged in");
	session.setAttribute("session","TRUE");
	response.sendRedirect("home.jsp");
	}
	else
	{
	out.print("Sorry,email or password error");
	//go back to registration  page
%>

<jsp:include page="index_register.jsp"></jsp:include>

<%
}
%>