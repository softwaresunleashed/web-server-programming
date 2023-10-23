<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="idHandler" class="com.kogent.login.Login" scope="request">
<jsp:setProperty name="idHandler" property="*"/></jsp:useBean>
<!DOCTYPE html>
<html>
	<head>
		<title>Programmatic Security</title>
	</head>
	<body>
	<%
		String userName = request.getParameter("userName");
		ServletContext context=getServletContext();
		context.setAttribute("name",userName);
		String passWord = request.getParameter("passWord");
		if(idHandler.authenticate(userName, passWord))
		{
			response.sendRedirect("welcome.jsp");
		}
		else 
		{
			response.sendRedirect("retry.jsp");
		}
	%>
	</body>
</html>
