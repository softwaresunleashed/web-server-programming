<%@ page language="java" %>
<%@ page session="true" %>
<%@ page  import="com.LeaveManagement.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="java.util.*" %>
<html>
<head>
<title>www.peoplemanagementsolutions.com/Leave Request List</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
</head>
<body>
<table width="900" border="0" align="center">
<tr>
	<td colspan="2"><%@ include file="../jsp/people_header.jsp" %></td>
</tr>
<tr>
<td width="900"><%@ include file="../jsp/people_default_menu.jsp" %></td>
</tr><tr>  
<td width ="750" valign="top">
<p>&nbsp;</p>
<% 
    String dbopr = "";
    dbopr = (String)session.getAttribute("dbopr");
%>
<%
	if(dbopr != null && !dbopr.equals("rejected_leave")){		
%>
<div align=center class=boldblack>List of Approved Leave Requests</div>
<% } else { %>
<div align=center class=boldblack>List of Rejected Leave Requests</div>
<% } %>
<hr width=100% color=#AAAAAA>
<table  border="0" width=600 align=center>
	<tr>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' >Request Id</td>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' >Employee Id</td>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' >Employee Name</td>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' >Request Date</td>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' >From Date </td>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' >To Date </td>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' >Days</td>
	<%
	if(dbopr != null && !dbopr.equals("approved_leave") && !dbopr.equals("rejected_leave"))
	out.println("<td class=whitetext colspan='3' bgcolor ='#AAAAAA' align='center'>Approve/Reject</td>");
	%>
    </tr>
	<%
	ArrayList leaveRequestList = new ArrayList();
	leaveRequestList = (ArrayList)session.getAttribute("leaveRequestList");
	if ( leaveRequestList != null && leaveRequestList.size() > 0 ){
		for ( int size = 1; size <= leaveRequestList.size() ; size++ ){
			LeaveRequest  leaveRequest = new LeaveRequest();
			leaveRequest = (LeaveRequest)leaveRequestList.get(size-1);
			%>
			<form name="form1" method="post">
			<tr bgcolor ='#AAAAAA'>
			<td align='center'><%=leaveRequest.req_id%></td>
			<td align='center'><%=leaveRequest.emp_id%></td>
			<td align='center' ><%=leaveRequest.emp_name%> </td>
			<td align='center' ><%=leaveRequest.today_date%> </td>
			<td align='center' ><%=leaveRequest.from_date%></td>
			<td align='center' ><%=leaveRequest.to_date%></td>
			<td align='center' ><%=leaveRequest.days%></td>
			<%
			if(dbopr != null && !dbopr.equals("approved_leave") && !dbopr.equals("rejected_leave") ){
			out.println("");
			%>
		<td align='center' bgcolor='#AAAAAA'><a href='http://localhost:8080/people-mgmt/servlet/leave_management?dbopr=approve&&req_id=<%=leaveRequest.req_id%>&&emp_id=<%=leaveRequest.emp_id%> ' class=yellowlink>Approve</a></td>
		<td align='center' bgcolor='#AAAAAA'><a href='http://localhost:8080/people-mgmt/servlet/leave_management?dbopr=reject&&req_id=<%=leaveRequest.req_id%>&&emp_id=<%=leaveRequest.emp_id%> ' class=yellowlink>Reject</a>
			</td>
			<%}%>
			</tr>
	<%
		}
	}
	else{
		out.println("Request does not exist!!!");
	}
%>
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
