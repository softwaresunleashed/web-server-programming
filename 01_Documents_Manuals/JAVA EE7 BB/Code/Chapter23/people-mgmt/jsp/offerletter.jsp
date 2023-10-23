<%@ page language="java" %>
<%@ page session="true" %>
<%@ page  import="com.Applicant.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="java.util.*" %>
<html>
<head>
<title>www.peoplemanagementsolutions.com/Selected Candidates</title>
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
<p>&nbsp;</p>
<div align=center class=boldblack>List of Selected Candidates to be Appointed.</div>
<hr width=400 color=#AAAAAA>
<table  border="0"  width=100% >
<% 
    String dbopr = "";
    dbopr = (String)session.getAttribute("dbopr");
%>
	<tr height=20>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' colspan='2'>Applicant Id</td>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' colspan='2' >Applicant Name</td>
	<td class=whitetext bgcolor ='#AAAAAA' align='center' colspan='2'></td>
	</tr>
<%
	ArrayList ApplicantTestDtlList = new ArrayList();
	ApplicantTestDtlList = (ArrayList)session.getAttribute("ApplicantTestDtlList");
	ArrayList selectApplicantTechList = new ArrayList();
	selectApplicantTechList = (ArrayList)session.getAttribute("selectApplicantTechList");
	if ( ApplicantTestDtlList != null && ApplicantTestDtlList.size() > 0 ){
		for ( int size = 1; size <= ApplicantTestDtlList.size() ; size++ ){
			ApplicantTestDtlDBObj applicantTestDtlDBObj = new ApplicantTestDtlDBObj();
			applicantTestDtlDBObj = (ApplicantTestDtlDBObj)ApplicantTestDtlList.get(size-1);
			%>
			<form name="form1" method="post">
			<tr bgcolor ='#AAAAAA'>
			<input type='hidden' name='test_id' id='test_id' size ='20' value='<%=applicantTestDtlDBObj.test_id%>'/>
			<td><input type='text' disabled='disabled' name='test_id' id='test_id' size ='20' value='<%=applicantTestDtlDBObj.test_id%>'/></td>
			<input type='hidden' name='test_name' id='test_name' size ='20' value='<%=applicantTestDtlDBObj.test_name%>'/>
			<td><input type='text' disabled='disabled' name='test_name' id='test_name' size ='20' value='<%=applicantTestDtlDBObj.test_name%>'/></td>
			<input type='hidden' name='aplicant_id' id='aplicant_id' size ='20' value='<%=applicantTestDtlDBObj.applicant_id%>'/>
			<td align='center'><%=applicantTestDtlDBObj.applicant_id%></td>
			<input type='hidden' name='applicant_name' id='applicant_name' size ='20' value='<%=applicantTestDtlDBObj.applicant_name%>'/>
			<td align='center'><%=applicantTestDtlDBObj.applicant_name%></td>
			
			
			
			<%
		}
	}
	out.println("</tr>");
%>
<tr><td></td><td align='center' colspan='2' ><font class="Courier New" size="5">Issue Offer Letter </font></td></tr>
</table>

</td></tr>
<tr><td><a href="/people-mgmt/servlet/applicant_test_dtl?dbopr=final_selected"> Back </a></td></tr>
<tr>
    <td colspan="2"><%@include file="../jsp/people_footer.jsp"%></td>
</tr></table></body></html>