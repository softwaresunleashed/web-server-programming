<%@ page language="java" %>
<%@ page session="true" %>
<%@ page  import="com.Applicant.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="java.util.*" %>
<html>
<head>
<title>www.peoplemanagementsolutions.com/Applicant List</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
</head>
<body>
<table width="900" border="0" align="center"> 
<tr>
	<td colspan="2"><%@ include file="../jsp/people_header.jsp" %></td>
</tr>
<tr>
<td width="900"><%@ include file="../jsp/people_default_menu.jsp" %></td>  
</tr>
<tr>
<td width ="750" valign="top">
<div align=center class=boldblack>List of Applicants</div>
<hr bgcolor="#AAAAAA">
<table  border="0"  width=100% >
<% 
    String dbopr = "";
    dbopr = (String)session.getAttribute("dbopr");
%>
	<tr class="whitetext" height=20>
	<td bgcolor ='#AAAAAA' align='center' >Applicant Id</td>
	<td bgcolor ='#AAAAAA' align='center' >Name</td>
	<td bgcolor ='#AAAAAA' align='center' >Work Exp</td>
	<td bgcolor ='#AAAAAA' align='center' colspan='2'>Skills</td>
	<td bgcolor ='#AAAAAA' align='center' >Highest Degree</td>
	<%
    if( dbopr != null && (dbopr.equals("call_for_written") || dbopr.equals("call") || dbopr.equals("remove")) ){
	%>
		<td bgcolor ='#AAAAAA' align='center' >Select</td>
		<td bgcolor ='#AAAAAA' align='center' >Detail</td>
		<%
	}
	else{ %>
		<td bgcolor ='#AAAAAA' align='center' >Edit</td>
		<td bgcolor ='#AAAAAA' align='center' >Delete</td>
		<td bgcolor ='#AAAAAA' align='center' >Detail</td>
	<% }%>
	</tr>
	<%
	ArrayList ApplicantList = new ArrayList();
	ApplicantList = (ArrayList)session.getAttribute("ApplicantList");
	ArrayList applicantTestList =  new ArrayList();
	applicantTestList = (ArrayList)session.getAttribute("applicantTestList");
	if ( ApplicantList != null && ApplicantList.size() > 0 ){
		for ( int size = 1; size <= ApplicantList.size() ; size++ ){
			ApplicantDBObj applicantDBObj = new ApplicantDBObj();
			applicantDBObj = (ApplicantDBObj)ApplicantList.get(size-1);
	%>			 
		<form name="form1" method="post">
			<tr bgcolor ='#AAAAAA' height=18>
			<td align='center'  ><%=applicantDBObj.applicant_id%></td>
			<td align='left'  ><%=applicantDBObj.applicant_name%> </td>
			<td align='center' ><%=applicantDBObj.work_exp%></td>
			<td align='left' colspan='2' ><%=applicantDBObj.skill%></td>
			<td align='center' ><%=applicantDBObj.highest_degree%></td>
			<%     
			if( dbopr != null && ( dbopr.equals("call_for_written") || dbopr.equals("call") || dbopr.equals("remove") )){
			%>
			<td align='center' bgcolor="#AAAAAA">
			<a href='http://localhost:8080/people-mgmt/servlet/applicant_test_dtl?dbopr=call&&applicant_id=<%=applicantDBObj.applicant_id%>' class=yellowlink>Select</a>
			</td >
			<td align='center' bgcolor="#AAAAAA">
<a href='http://localhost:8080/people-mgmt/servlet/people_applicant?dbopr=detail&&applicant_id=<%=applicantDBObj.applicant_id%>' class=yellowlink>Detail </a>
			</td >
			<%
			}
			else{
			%>
			<td align='center' bgcolor="#AAAAAA">
			<a href='http://localhost:8080/people-mgmt/servlet/people_applicant?dbopr=edit&&applicant_id=<%=applicantDBObj.applicant_id%>' class="yellowlink">Edit </a>
			</td >
			<td align='center' bgcolor="#AAAAAA">
			<a href='http://localhost:8080/people-mgmt/servlet/people_applicant?dbopr=delete&&applicant_id=<%=applicantDBObj.applicant_id%>' class="yellowlink">Delete </a>
			</td >
			<td align='center' bgcolor="#AAAAAA">
			<a href='http://localhost:8080/people-mgmt/servlet/people_applicant?dbopr=detail&&applicant_id=<%=applicantDBObj.applicant_id%>' class="yellowlink">Detail </a>
			</td >
			<%	  } %>
		</tr>
		<% }
		if( applicantTestList != null && applicantTestList.size() > 0){
		%>		
		<th bgcolor ='#AAAAAA' align='center' colspan='8'><font color=white>The Selected Applicant</font></th>
		<%		  
			for ( int size = 1; size <= applicantTestList.size() ; size++ ){
				ApplicantDBObj applicantDBObj = new ApplicantDBObj();
				applicantDBObj = (ApplicantDBObj)applicantTestList.get(size-1);
		%>
		<tr bgcolor ='#AAAAAA'>
		<td align='center'  ><%=applicantDBObj.applicant_id%></td>
		<td align='left'  ><%=applicantDBObj.applicant_name%></td>
		<td align='center' ><%=applicantDBObj.work_exp%></td>
		<td align='left' colspan='2' ><%=applicantDBObj.skill%></td>
		<td align='center' ><%=applicantDBObj.highest_degree%></td>
		<%
			if( dbopr != null && ( dbopr.equals("call_for_written") || dbopr.equals("call") || dbopr.equals("remove") )){
		%>
	<td align='center' colspan='2' bgcolor="#AAAAAA">
	
	<a href='http://localhost:8080/people-mgmt/servlet/applicant_test_dtl?dbopr=remove&&applicant_id=<%=applicantDBObj.applicant_id%>' class=yellowlink>Remove </a>
	</td >
	<%} %>
	</tr>
	<% }%>
<% }         
  	  if( dbopr != null && ( dbopr.equals("call") || dbopr.equals("remove") || ( applicantTestList != null && applicantTestList.size() > 0) )){
%>	  <tr>
	  <td align='center' colspan='8'><input type='submit' name='submit' id='submit' size ='10' value='Enter Test Detail'/> </td>
	  <input type='hidden' name='action_select' id='action_select' size ='10' value='applicant_call_for_wrtn_test_submit'/>
	  </tr>
<%	  }
	  
  }
  else{
	 out.print("Applicant does not exist!!!");
  } %>
</table>
</td>
</tr>
<tr>
    <td colspan="2"><%@include file="../jsp/people_footer.jsp"%></td>
</tr>
</table></body></html>