<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
	<head>
		<title>Struts 2 Actions</title>
		
	</head>
	<body>
		<center>
			<h2>
				<s:property value="message" default="Struts Actions" />
			</h2>

			Welcome	<s:property value="#session.user" default="Guest" />!
			<br><br>
			<s:if test="#session.user!=null">
				<s:url id="logout" action="logout" />
				| <s:a href="%{logout}">Logout</s:a> |
			</s:if>
			<br><br>| <s:a href="index.jsp">Back</s:a> |
		</center>
	</body>
</html>
