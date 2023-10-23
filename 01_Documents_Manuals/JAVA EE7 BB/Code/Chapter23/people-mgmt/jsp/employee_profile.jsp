<%@ page language="java" %>
<%@ page session="true" %>
<%@ page  import="com.Employee.*" %>
<html>
<head>
<title>www.peoplemanagementsolutions.com/Employee Detail</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
</head>
<body>
<table width="900" border="0" align="center"> 
<tr>
	<td colspan="2"><%@ include file="../jsp/people_header.jsp" %></td>
</tr>
<tr>
<td width="900">
	<%@ include file="../jsp/people_default_menu.jsp" %></td>
  </tr><tr>
<td width ="750" valign="top" align = "center">
<p>&nbsp;</p>
Employee Detail
<hr width=100% color=#AAAAAA>
<table  border="0" align="top" width=100% >

<% 
  EmployeeDBObj employeeDBObj = new EmployeeDBObj();
  employeeDBObj = (EmployeeDBObj)session.getAttribute("employeeDBObj");
%>
	
	<input type='hidden' name='emp_id' id='emp_id' size ='10' value="<%=employeeDBObj.emp_id%>"/>
	<input type='hidden' name='emp_f_name' id='emp_f_name 'size ='10' value="<%=employeeDBObj.emp_f_name%>"/>
	<input type='hidden' name='emp_m_name' id='emp_m_name' size ='10' value="<%=employeeDBObj.emp_m_name%>"/>
	<input type='hidden' name='emp_l_name' id='emp_l_name' size ='10' value="<%=employeeDBObj.emp_l_name%>"/>
	<input type='hidden' name='org_id' id='org_id' size ='10' value="<%=employeeDBObj.org_id%>"/>
	<input type='hidden' name='level_id' id='level_id' size ='10' value="<%=employeeDBObj.level_id%>"/>
	<input type='hidden' name='dept_id' id='dept_id' size ='10' value="<%=employeeDBObj.dept_id%>"/>
	<input type='hidden' name='dob' id='dob' size ='10' value="<%=employeeDBObj.dob%>"/>
	<input type='hidden' name='dojoin' id='dojoin' size ='10' value="<%=employeeDBObj.dojoin%>"/>
	<input type='hidden' name='address_1' id='address_1' size ='40' value="<%=employeeDBObj.address_1%>"/>
	<input type='hidden' name='address_2' id='address_2' size ='40' value="<%=employeeDBObj.address_2%>"/>
	<input type='hidden' name='city' id='city' size ='10' value="<%=employeeDBObj.city%>"/>
	<input type='hidden' name='state' id='state' size ='10' value="<%=employeeDBObj.state%>"/>
	<input type='hidden' name='nationality' id='nationality' size ='10' value="<%=employeeDBObj.nationality%>"/>
	<tr>
		<td>Employee Id</td>
		<td align='left'>
		<input type='text' disabled='disabled' name='emp_id_dup' id='emp_id_dup' size ='10' value= "<%=employeeDBObj.emp_id%>"/>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>First Name</td>
		<td align='left'>
		<input type='text' disabled='disabled' name='emp_f_name_dup' id='emp_f_name_dup' size ='10' value="<%=employeeDBObj.emp_f_name%>"/>
		</td>
		<td colspan=2>
		Middle Name&nbsp;&nbsp;&nbsp;
		<input type='text' disabled='disabled' name='dup_emp_m_name' id='emp_m_name' size ='10' value="<%=employeeDBObj.emp_m_name%>"/>
		&nbsp;&nbsp;&nbsp;Last Name&nbsp;&nbsp;&nbsp;
		<input type='text' disabled='disabled' name='dup_emp_l_name' id='dup_emp_l_name' size ='10' value="<%=employeeDBObj.emp_l_name%>"/>	
		</td>
	</tr>
	<tr>
		<td>Org Id</td>
		<td align='left'>
		<input type='text' disabled='disabled' name='dup_org_id' id='dup_org_id' size ='10' value="<%=employeeDBObj.org_id%>"/>
		</td>
		<td>Designation</td>
		<td align='left'>
		<input type='text' disabled='disabled' name='dup_level_id' id='dup_level_id' size ='10' value="<%=employeeDBObj.level_id%>"/>
		</td>
	</tr>
	<tr>
		<td>Dept</td>
		<td align='left'>
		<input type='text' disabled='disabled' name='dup_dept_id' id='dup_dept_id' size ='10' value="<%=employeeDBObj.dept_id%>"/>
		</td>
		<td>DOB</td>
		<td align='left'><input type='text' disabled='disabled' name='dup_dob' id='dup_dob' size ='10' value="<%=employeeDBObj.dob%>"/>
		 (yyyy-mm-dd)</td>
	</tr>
	<tr>
		<td>Join Date</td>
		<td align='left'>
		<input type='text' disabled='disabled' name='dup_dojoin' id='dup_dojoin' size ='10' value="<%=employeeDBObj.dojoin%>"/>
		(yyyy-mm-dd)</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Address1</td>
		<td align='left' colspan='2'>
		<input type='text' name='dup_address_1' id='dup_address_1' disabled='disabled' size ='40' value="<%=employeeDBObj.address_1%>"/>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Address2</td>
		<td align='left' colspan='2'>
		<input type='text' disabled='disabled' name='dup_address_2' id='dup_address_2' size ='40' value="<%=employeeDBObj.address_2%>"/>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>City</td>
		<td align='left'>
		<input type='text' disabled='disabled' name='dup_city' id='dup_city' size ='10' value="<%=employeeDBObj.city%>"/>
		</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>State</td>
		<td align='left'>
		<input type='text' disabled='disabled' name='dup_state' id='dup_state' size ='10' value="<%=employeeDBObj.state%>"/>
		</td>
		<td>Nationality</td>
		<td align='left'>
		<input type='text' disabled='disabled' name='dup_nationality' id='dup_nationality' size ='10' value="<%=employeeDBObj.nationality%>"/>
		</td>
	</tr>

</table>
<hr width=100% color=#AAAAAA>
</td>
</tr>
<tr>
    <td colspan="2"><%@include file="../jsp/people_footer.jsp"%></td>
</tr>
</table>
</body>                                                                                                             
</html>

