<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<title>Struts 2 Actions</title>

</head>
<body>
<s:set name="users" value="#application.users"/>
<table cellspacing="5" cellpadding="2" width="600">
	<tr bgcolor="#f0edd9">
	<td>User Name</td>
	<td>Password</td>
	<td>City</td>
	<td>Email</td>
	<td>Type</td>
	<td colspan="2">&nbsp;</td>	
	</tr>
<s:iterator id="user" value="users">
	<tr>
	<td><s:property value="username"/></td>
	<td><s:property value="password"/></td>
	<td><s:property value="city"/></td>
	<td><s:property value="email"/></td>
	<td><s:property value="type"/></td>
	<td>
		 <s:url id="url" action="getuser">
            <s:param name="username"><s:property value="username"/></s:param>
        </s:url>
        <s:a href="%{url}">Edit</s:a>
	</td>
	<td>
		 <s:url id="url" action="delete">
            <s:param name="username"><s:property value="username"/></s:param>
        </s:url>
        <s:a href="%{url}">Delete</s:a>
	</td>
	</tr>
</s:iterator>
</table>
<br>| <s:a href="index.jsp">Home</s:a> | <s:a href="add_user.jsp">Add More</s:a> | 	
</body>
</html>
