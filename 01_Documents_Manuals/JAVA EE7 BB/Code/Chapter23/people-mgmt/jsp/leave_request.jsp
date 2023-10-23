<%@ page language="java"  import="java.util.*, java.text.SimpleDateFormat" %>
<%@ page session="true" %>
<%@ page  import="com.LeaveManagement.*" %>
<%  GenerateId gen=new GenerateId();
    int req_id=gen.generateRequestId();
%>
<html>
<head>
<title>www.peoplemanagementsolutions.com/Leave Request</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
<script language="javascript">
   function validateForm() {
     var myName=document.form1.emp_id.value;
      if (myName =="") {
         alert ("Employee Id field cannot be blank");
         document.form1.emp_id.focus();
	 return false;
	 
      }
      myName=document.form1.emp_name.value;
      if (myName =="") {
         alert ("Employee Name cannot be blank");
	 document.form1.emp_name.focus();
         return false;
      }
      myName=document.form1.from_date.value;
      if (myName =="") {
         alert ("Provide the starting Date of Leave");
	 document.form1.from_date.focus();
         return false;
      }

      myName=document.form1.to_date.value;
      if (myName =="") {
         alert ("Provide the date to which Leave applied");
	 document.form1.to_date.focus();
         return false;
      }
      myName=document.form1.reason.value;
      if (myName =="") {
         alert ("Provide the Valid reason for Leave");
	 document.form1.reason.focus();
         return false;
      }
      
      myName=document.form1.address.value;
      if (myName =="") {
         alert ("Address Field cannot be blank");
	 document.form1.address.focus();
         return false;
      }
      
	form1.submit();
   }
</script>

</head>
<body>
<table width="900" border="0" align="center">
<tr>
	<td colspan="2"><%@ include file="../jsp/people_header.jsp" %></td>
</tr>
<tr>
<td width="900" ><%@ include file="../jsp/people_default_menu.jsp" %></td>
</tr><tr> 
<td width ="750" valign="top" align = "center">

<form name="form1" method="post">
<input type='hidden' name='req_id' id='req_id 'size ='10' value='<%= req_id %>'/>
<table  border="0" align="top" width=600>
  <tr>
  <td colspan='4' height=20 height=20 bgcolor ='#AAAAAA' class=whitetext align=center>Leave Application</td>
  </tr>
  <tr>
  <td >Request ID</td>
  <td align='left'><input type='text' disabled='disabled' name='dup_req_id' id='dup_req_id 'size ='10' value='<%= req_id %>'/> </td>
  <td >Date(YYYY-MM-DD)</td><input type='hidden' name='today_date' id='today_date 'size ='10' value='<%= new SimpleDateFormat("yyyy-MM-dd").format(new Date()) %>'/>
  <td align='left'><input type='text' name='dup_today_date' disabled='disabled' id='dup_today_date 'size ='10' value='<%= new SimpleDateFormat("yyyy-MM-dd").format(new Date()) %>'/> </td>
  </tr>
  <tr>
  <td>Employee Id<sup>*</sup></td>
  <td align='left'><input type='text' name='emp_id' id='emp_id 'size ='10' value=''/> </td>
  <td>Name<sup>*</sup></td>
  <td align='left'><input type='text' name='emp_name' id='emp_name 'size ='20' value='' /> </td>
  </tr>
  <tr>
  <td>Designation</td>
  <td align='left'><select name="level_id" id="level_id">
       <option value='select Designation' selected> Select Designation
       <option value='CW'> Content Writer
       <option value='TS'> Tester
       <option value='HR'> Human Resource Manager
       <option value='AC'> Accountant 
       <option value='AM'> Admin Manager
       <option value='EM'> Event Manager
       <option value='TL'> Team Leader
       <option value='PM'> Project Manager
       <option value='TR'> Trainer
       </select></td>
  <td>Department</td>
  <td align='left'><select id='dept_id' name='dept_id'>    
          <option value='select Department' selected> Select  
           Department
          <option value='CS'> Content Solutions
          <option value='TS'> Testing
          <option value='HR'> Human Resource
          <option value='AC'> Accounts 
          <option value='AD'> Administration
          <option value='EM'> Event Management
          </select> </td>
  </tr>   
  <tr>
  <td colspan='4' height=20 bgcolor ='#AAAAAA' class=whitetext align=center>Leave Detail</td>
  </tr>
  <tr>
  <td>From(YYYY-MM-DD)<sup>*</sup></td>&nbsp;&nbsp;
  <td>To(YYYY-MM-DD)<sup>*</sup></td>
  <td>Days</td>
  <td>&nbsp;</td>
  </tr>
  <tr>
  <td align='left' ><input type='text' name='from_date' id='from_date' size ='10' value=''/> </td>
  <td align='left' ><input type='text' name='to_date' id='to_date' size ='10' value=''/> </td>
  <td align='left'><input type='text' name='days' id='days' size ='5' value=''/> </td>
  <td>&nbsp;</td>
  </tr>
  <tr>
  <td colspan=2>Reason For Leave(100 letters only)<sup>*</sup></td>
  <td align='left' colspan=2><textarea name='reason' id='reason' col='80' rows='4' value=''/></textarea></td>
  </tr>
  <tr>
  <td colspan=2>Type Of Leave Applied For</td>
  <td align='left' colspan=2><SELECT name='leave_type' >
  <OPTION VALUE=></OPTION> <OPTION VALUE=CL>CL</OPTION><OPTION VALUE=SL>SL</OPTION></SELECT>
  </td>
  </tr>
  <tr>
  <td colspan='4' height=20 bgcolor ='#AAAAAA' class=whitetext align=center>Major Activity to Be Handled During The Leave Applied</td>
  </td>
  </tr>  
  <tr>
  <td align=right>S.No.</td>
  <td>Activity Details</td>
  <td>Name Of the Person Responsible</td>
  <td>Details</td>
  </tr>
  <tr>
  <td align=right>1.</td>
  <td align='left'><input type='text' name='activity_1' id='activity_1' size ='20' value=''/> </td>
  <td align='left'><input type='text' name='person_1' id='person_1' size ='20' value=''/> </td>
  <td align='left'><input type='text' name='detail_1' id='detail_1' size ='20' value=''/> </td>
  </tr><tr>
  <td align=right>2.</td>
  <td align='left'><input type='text' name='activity_2' id='activity_2' size ='20' value=''/> </td>
  <td align='left'><input type='text' name='person_2' id='person_2' size ='20' value=''/> </td>
  <td align='left'><input type='text' name='detail_2' id='detail_2' size ='20' value=''/> </td>
  </tr>
  <tr>
  <td align=right>3.</td>
  <td align='left'><input type='text' name='activity_3' id='activity_3' size ='20' value=''/> </td>
  <td align='left'><input type='text' name='person_3' id='person_3' size ='20' value=''/> </td>
  <td align='left'><input type='text' name='detail_3' id='detail_3' size ='20' value=''/> </td>
  </tr>
  <tr>
  <td colspan='4' height=20 bgcolor ='#AAAAAA' class=whitetext align=center>Contact Details of the applicant during the leave period</td>
  </tr>
  <tr>
  <td>Address<sup>*</sup></td>
  <td align='left' colspan='2'><input type='text' name='address' id='address' size ='20' value=''/></td>
  <td></td>
  </tr>
  <tr>
  <td>Remark</td>
  <td align='left' colspan='2'><input type='text' name='remark' id='remark' size ='20' value=''/> </td>
  <td></td>
  </tr>
  <tr><td> All the ( <sup>*</sup>) marked are mandatory</td></tr><tr>
  <td align='center' colspan='4'>
  <input type='submit' name='submit' id='submit' size ='10' value='Submit'onClick="return validateForm()"/>
  <input type='hidden' name='action_submit' id='action_submit' size ='10' value='employee_leave_req_submit'/>
  </td>
  </tr>
</table>
</td>
</tr>
<tr>
    <td colspan="2"><%@include file="../jsp/people_footer.jsp"%></td>
</tr>
</table>
</body>                                                                                                             
</html>