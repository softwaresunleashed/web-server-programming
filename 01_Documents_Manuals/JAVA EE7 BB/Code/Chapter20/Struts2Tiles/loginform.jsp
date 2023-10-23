<%@ taglib prefix="s" uri="/struts-tags" %>
<table bgcolor="#a362b3" width="400" align="center" cellpadding="10">
<tr><td class="text" align="center">
| Login |
<br><s:actionerror/>
<s:form action="login" method="post" cssClass="text">
	<s:textfield name="loginid" key="app.loginid"/>
	<s:password name="password" key="app.password"/>
	<s:selectkey="app.type"name="type"list="#@java.util.HashMap@{'manager':
	'Manager', 'clerk':'Clerk'}"/>
	<s:submit value="Login"/>
</s:form>
</td></tr>
</table>
