<%@ page language="java" %>
<%@ page session="true" %>
<html>
<head>
<title>www.peoplemanagementsolutions.com/Search</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
</head>
<body>
<table width="900" border="0" align="center"> 
<tr>
	<td colspan="2">
		<%@ include file="../jsp/people_header.jsp" %>
	</td>
</tr>
<tr>
<td width="900">
	<%@ include file="../jsp/people_default_menu.jsp" %> 
</td></tr><tr>  
<td width ="750" valign="top" align = "center">
<p>&nbsp;</p>
<div align=center>Enter Employee Id & First Name</div>
<hr bgcolor="#AAAAAA" width=500>
	<table  border="0" align="top" width=50% align="right">
	<form name="form1" method="post">
	<tr>
	<td>Employee Id</td>
	<td align='left'><input type='text' name='emp_id' id='emp_id 'size ='10' value=''/></td>
	</tr>
	<tr>
	<td>First Name</td>
	<td align='left'><input type='text' name='emp_f_name' id='emp_f_name 'size ='10' value='' /></td>
	</tr> 
	<tr>  
	<td align='center'colspan='2' >
	<input type='submit' name='submit' id='submit' size ='10' value='Submit'/>
	</td>
    </tr>
	<input type='hidden' name='action_submit' id='action_submit' size ='10' value='people_employee_search_submit'/> 
  </form>
</table>
<hr bgcolor="#AAAAAA" width=500>
</td>
</tr>
<tr>
    <td colspan="2"><%@include file="../jsp/people_footer.jsp"%></td>
</tr>
</table>
</body>
</html>