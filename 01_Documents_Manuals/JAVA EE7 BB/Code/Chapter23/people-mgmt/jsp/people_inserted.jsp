<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>www.peoplemanagementsolutions.com-Welcome</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
</head>
<body>
<table width="900" border="0" align="center"> 
<tr>
	<td colspan="2"><%@ include file="../jsp/people_header.jsp" %></td>
</tr>
<tr>
	<td width="900">
		<%@ include file="../jsp/people_default_menu.jsp" %>
	</td>
</tr><tr>
	<td width="750" align="center" valign="top">
	        <%@include file="../jsp/design.jsp"%>
             
		<%
			String msg  = (String)session.getAttribute("lErrorMsg");
			if ( msg != null && msg.length() > 0 ){
		%>
	        
			 
		<%	out.println(msg); %>
		<br/>	
			
		<%}%> 
	<a href="/people-mgmt/servlet/people_employee?dbopr=create" > Add More Employees </a> <br/> 
	<a href="/people-mgmt/jsp/people_default.jsp" >Goto Home Page  </a> 
	</td>
	
</tr>
<tr>
    <td colspan="2"><%@include file="../jsp/people_footer.jsp"%></td>
</tr>
</table>
</body>
</html>
