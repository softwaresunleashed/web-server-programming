<%@ page language="java" %>
<%@ page session="true" %>
<%@ page  import="com.TimeManagement.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="java.util.*" %>
<html>
<head>
<title>www.peoplemanagementsolutions.com/Attendance Summary...</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
</head>
<body>
<table width="900" border="0" align="center"> 
<tr>
	<td colspan="2"><%@ include file="../jsp/people_header.jsp" %></td>
</tr>
<tr>
<td><%@ include file="../jsp/people_default_menu.jsp" %></td>
</tr><tr>  
<td width ="750" valign="top">

<p>&nbsp;</p>
<div align=center class=boldblack>Daily Attendance Summary</div>
<hr width=100% color=#AAAAAA>
<table  border="0"  width=100% >
<% 

    String dbopr = "";
    dbopr = (String)session.getAttribute("dbopr");
%>	
	<tr>
	<td bgcolor ='#AAAAAA' align='center' class=whitetext>Employee Id</td>
	<td bgcolor ='#AAAAAA' align='center' class=whitetext>Employee Name</td>
	<td bgcolor ='#AAAAAA' align='center' class=whitetext>In Time</td>
	<td bgcolor ='#AAAAAA' align='center' class=whitetext>Out Time</td>
	<td bgcolor ='#AAAAAA' align='center' class=whitetext>Remark</td>
	<td bgcolor ='#AAAAAA' align='center' class=whitetext>Opr</td>
    </tr>
<%
    
    ArrayList empDailyAttendanceList = new ArrayList();
    empDailyAttendanceList = (ArrayList)session.getAttribute("empDailyAttendanceList");
	if ( empDailyAttendanceList != null && empDailyAttendanceList.size() > 0 ){
		for ( int size = 1; size <= empDailyAttendanceList.size() ; size++ ){
			EmpDailyAttendanceDBObj  empDailyAttendanceDBObj = new EmpDailyAttendanceDBObj();
			empDailyAttendanceDBObj = (EmpDailyAttendanceDBObj)empDailyAttendanceList.get(size-1);
			%>
		  <form name="form1" method="post">
		  
		  <tr bgcolor ='#AAAAAA'>
		  <td align='center'><%=empDailyAttendanceDBObj.emp_id%></td>
		  <td align='center' ><%=empDailyAttendanceDBObj.emp_name%> </td>
		  <td align='center' ><%=empDailyAttendanceDBObj.in_time%></td>
		  <td align='center' ><%=empDailyAttendanceDBObj.out_time%></td>
		  <td align='center' >
		  <%
		  if(empDailyAttendanceDBObj.remark!=null)
		  out.print(empDailyAttendanceDBObj.remark);
			else
		  out.print("--");
		  %>		  
		  <td align='center' bgcolor=#AAAAAA >
	<a href='http://localhost:8080/people-mgmt/servlet/time_management?dbopr=edit&&emp_id=<%=empDailyAttendanceDBObj.emp_id%>&&today_date=<%=empDailyAttendanceDBObj.today_date%>' class=yellowlink>Edit</a>
		  </td >
		  </tr>
		  <%
		}
	}
	else{
		out.println("Employee does not exist!!!");
	}
%>
</table>
</tr>
</td>
<tr>
    <td colspan="2"><%@include file="../jsp/people_footer.jsp"%></td>
</tr>
</table>
</body>   
</html>

