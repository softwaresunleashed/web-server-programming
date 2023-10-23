<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Programmatic Security</title>
	</head>
	<body>
		<form action="validateuser.jsp" method="POST" name="theForm">
		<table align="center">
			<tr>
				<td><font size=2> Enter the User Name </font> </td>
				<td><input type="text" name="userName">	</td>
			</tr>
			<tr>
				<td><font size=2> Enter the Password </font></td>
				<td><input type="password" name="passWord"></td>
			</tr>
			<tr>
				<td>
					<br/>
					<input type="submit" value="Submit"/>
					<input type="reset" value="Reset"/>
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>
