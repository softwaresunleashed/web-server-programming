<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
	<head>
		<title>Struts 2 Actions</title>
		
	</head>
	<body>
		<center>
			<h2>
				Struts 2 Actions
			</h2>
			<br>
			<br>
			Welcome
			<s:property value="#session.user" default="Guest" />!
			<s:if test="#session.user!=null">
				<s:url id="logout" action="logout" />
				| <s:a href="%{logout}">Logout</s:a> |
			</s:if>
			<br>
			<table cellspacing="5" width="180">
				<tr bgcolor="#f0edd9" height="25" align="center">
					<td>
						<s:url id="hello" action="hello" />
						<s:a href="%{hello}">Hello Action</s:a>
					</td>
				</tr>
				<tr bgcolor="#f0edd9" height="25" align="center">
					<td>
						<s:a href="add_user.jsp">Add User</s:a>
					</td>
				</tr>
				<tr bgcolor="#f0edd9" height="25" align="center">
					<td>
						<s:a href="user.jsp">View Users</s:a>
					</td>
				</tr>
				<tr bgcolor="#f0edd9" height="25" align="center">
					
				</tr>
			</table>
		</center>
	</body>
</html>
