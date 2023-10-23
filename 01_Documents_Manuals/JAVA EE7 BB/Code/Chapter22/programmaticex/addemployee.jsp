<%@ page language="java" session="true" pageEncoding="ISO-8859-1" %>
<jsp:useBean id="idHandler" class="com.kogent.login.Login" scope="request">
<jsp:setProperty name="idHandler" property="*"/></jsp:useBean>
<!DOCTYPE html>
<html>
	<head>
		<title>Programmatic Security</title>
	</head>
	<body>
		<br/><br/><br/>
		<%
		ServletContext context=getServletContext();
		String userName = context.getAttribute("name").toString();
		if(idHandler.authorize(userName))
		{
		%>
		<br/>
		<h1 align=center>Enter the Employee Details</h1>
		<table border=4 cellpadding=1 align=center>
			<tr>
				<td>Enter the Employee Name</td>
				<td><input type="text" name="empname"/></td>
			</tr>
			<tr>
				<td>Enter the Designation</td>
				<td><input type="text" name="empdesg"/></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="Add Employee"/>
				</td>
			</tr>
		</table>
		<%
		}
		else {
 			out.println("<h2>" + "you are Unauthorized to add records" + "</h2>");
 			out.println("<a href=viewemployee.jsp>" + "View Employee" + "</a>");
		}
		%>
	</body>
</html>
