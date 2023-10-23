<%@ page language="java" %>
<%@ page session="true" %>
<%@ page  import="com.Employee.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="java.util.*" %>

<html>
<head>
<title>www.peoplemanagementsolutions.com/Employee List</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
</head>
<body>
<table width="900" border="0" align="center"> 
<tr>
	<td colspan="2"><%@ include file="../jsp/people_header.jsp" %></td>
</tr>
<tr>
<td width="900"><%@ include file="../jsp/people_default_menu.jsp" %></td> </tr><tr>  
<td width ="750" valign="top">
<div align=center class=boldblack>List of Employees</div>
<hr bgcolor="#AAAAAA">
<table  border="0"  width=100% >
<%! 
	EmployeeDBObj employeeDBObj;
	ArrayList employeeList; // = new ArrayList();
%>
<% 
    String dbopr = "";
    dbopr = (String)session.getAttribute("dbopr");
%>
	<tr class="whitetext" height=20>
	<td bgcolor ='#AAAAAA'>Emp Id</td>
	<td bgcolor ='#AAAAAA'>F Name</td>
	<td bgcolor ='#AAAAAA'>L Name</td>
	<td bgcolor ='#AAAAAA'>Designation</td>
	<td bgcolor ='#AAAAAA'> DOB</td>
	<td bgcolor ='#AAAAAA' align='center' >Edit</td>
	<td bgcolor ='#AAAAAA' align='center' >Delete</td>
	<td bgcolor ='#AAAAAA' align='center' >Detail</td>
</tr>

<%
	
	employeeList = new ArrayList();
	employeeList = (ArrayList)session.getAttribute("EmployeeList");
	if ( employeeList != null && employeeList.size() > 0 ){
	for ( int size = 1; size <= employeeList.size() ; size++ ){
	employeeDBObj = new EmployeeDBObj();
	employeeDBObj = (EmployeeDBObj)employeeList.get(size-1); 
%>
	<form name="form1" method="post">
	<tr bgcolor ='#AAAAAA' height=18>
	<td align='left'><%=employeeDBObj.emp_id%></td>
	<td align='left'><%=employeeDBObj.emp_f_name%></td>
	<td align='left' ><%=employeeDBObj.emp_l_name%></td>
	<td align='left'  ><%=employeeDBObj.level_id%></td>
	<td align='left' ><%=employeeDBObj.dob%></td>
	<td align='center' bgcolor="#AAAAAA">
		<a href='http://localhost:8080/people-mgmt/servlet/people_employee?dbopr=edit' class="yellowlink">Edit </a>
	</td >
	<td align='center' bgcolor="#AAAAAA">
		<a href='http://localhost:8080/people-mgmt/servlet/people_employee?dbopr=detail&&emp_id=<%=employeeDBObj.emp_id%>&&emp_f_name=<%=employeeDBObj.emp_f_name%>' class="yellowlink">Detail </a>
	</td >
	<td align='center' bgcolor="#AAAAAA">
		<a href='http://localhost:8080/people-mgmt/servlet/people_employee?dbopr=delete&&emp_id=<%=employeeDBObj.emp_id%>' class="yellowlink">Delete </a>
	</td >
<%	} }
%>
	</tr>



</td>

</table>
</tr>
<tr>
    <td colspan="2"><%@include file="../jsp/people_footer.jsp"%></td>
</tr>
</table></body></html>