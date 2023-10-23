<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<title>Struts 2 Actions</title>

</head>
<body>
<center>
Editing User!<br><br>
<table bgcolor="#f0edd9">
<tr>
<td>
<s:form action="edit">
	<s:textfield name="username" label="User Name" readonly="true">
		<s:param name="value"><s:property value="#request.user.username"/></s:param>		
	</s:textfield>
	<s:textfield name="password" label="Password" size="15">
		<s:param name="value"><s:property value="#request.user.password"/></s:param>			
	</s:textfield>
	
	<s:textfield name="city" label="City">
		<s:param name="value"><s:property value="#request.user.city"/></s:param>		
	</s:textfield>
	
	<s:textfield name="email" label="E-Mail">
		<s:param name="value"><s:property value="#request.user.email"/></s:param>		
	</s:textfield>
	
	<s:select label="Type"
		name="type"
       	headerKey="- - -" headerValue="Select Type"
       	list="#@java.util.HashMap@{'Admin':'Admin', 'Client':'Client'}">	
       	<s:param name="value"><s:property value="#request.user.type"/></s:param>		
       	</s:select>
	<s:submit value="Edit"/>
</s:form>
</td>
</tr>
</table>
<br>| <s:a href="index.jsp">Home</s:a> |
</center>
</body>
</html>
