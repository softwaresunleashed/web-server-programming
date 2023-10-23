<%@ page language="java" %>
<%@ page session="true" %>
<%@ page  import="com.Applicant.*" %>
<%  GenerateId gen=new GenerateId();
    int applicant_id=gen.generateApplicantId();
%>
<html>
<head>
<title>www.peoplemanagementsolutions.com/Register New Applicant</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css"/>
<script language="javascript">
   function validateForm() {
     var myName=document.form1.applicant_name.value;
      if (myName =="") {
         alert ("Applicant name cannot be blank");
         document.form1.applicant_name.focus();
	 return false;
	 
      }
      myName=document.form1.address_1.value;
      if (myName =="") {
         alert ("Address1 cannot be blank");
	 document.form1.address_1.focus();
         return false;
      }
      myName=document.form1.current_location.value;
      if (myName =="") {
         alert ("Current Location cannot be blank");
	 document.form1.current_location.focus();
         return false;
      }

      myName=document.form1.email.value;
      if (myName =="") {
         alert ("Email cannot be blank");
	 document.form1.email.focus();
         return false;
      }
      myName=document.form1.phone.value;
      if (myName =="") {
         alert ("Phone Field cannot be blank");
	 document.form1.phone.focus();
         return false;
      }
      
      myName=document.form1.mobile.value;
      if (myName =="") {
         alert ("Mobile cannot be blank");
	 document.form1.mobile.focus();
         return false;
      }
      myName=document.form1.dob.value;
      if (myName =="") {
         alert ("You Should Provide Date of Birth");
	 document.form1.dob.focus();
         return false;
      }
      myName=document.form1.skill.value;
      if (myName =="") {
         alert ("You Should provide the Skills, you know");
	 document.form1.dept_id.focus();
         return false;
      }
      myName=document.form1.highest_degree.value;
      if (myName =="") {
         alert ("Provide Highest Qualification");
	 document.form1.dojoin.focus();
         return false;
      }
      myName=document.form1.second_highest_degree.value;
      if (myName =="") {
         alert ("Provide your Second highest Qualification");
	 document.form1.second_highest_degree.focus();
         return false;
      }
      myName=document.form1.domain.value;
      if (myName =="") {
         alert ("Provide the domain on which you can work");
	 document.form1.domain.focus();
         return false;
      }
	form1.submit();
   }
</script>
</head>
<body>
<table width="900" border="0" align="center"> 
<tr>
	<td colspan="2" >
	<%@ include file="../jsp/people_header.jsp" %>
	</td>
</tr>
<tr>
	<td width="900" valign="top">
	<%@ include file="../jsp/people_default_menu.jsp" %>
	</td> 
</tr>
<tr>  
<td width ="750">
<table  border="0" align="top" width=100%>
	<form name="form1" method="post">
	<input type='hidden' name='applicant_id' id='applicant_id 'size ='10' value='<%= applicant_id %>'/>
	<tr>
	<td bgcolor ='#AAAAAA' colspan='4' align=center height=20><b>Contact Information</b></td>
	</tr>
	<tr><td width=150 >Applicant Id</td>
	<td align='left' ><input type='text' disabled='disabled' name='dup_applicant_id' id='dup_applicant_id 'size ='10' value='<%= applicant_id %>'/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr>
	<td>Name<sup>*</sup></td><td>
	<input type='text' name='applicant_name' id='applicant_name 'size ='40' value='' /></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr><td>Address1<sup>*</sup></td>
	<td><input type='text' name='address_1' id='address_1' size ='40' value=''/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr><td>Address2</td>
	<td><input type='text' name='address_2' id='address_2' size ='40' value=''/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr><td>Current Location<sup>*</sup></td>
	<td>
	<input type='text' name='current_location' id='current_location' size ='15' value=''/>
	</td><td>Email<sup>*</sup></td>
	<td><input type='text' name='email' id='email' size ='25' value=''/></td>
	</tr>
	<tr><td>Phone<sup>*</sup></td>
	<td><input type='text' name='phone' id='phone' size ='15' maxLength="8" value=''/></td>
	<td>Mobile<sup>*</sup></td>
	<td><input type='text' name='mobile' id='mobile' maxLength="10" size ='15' value=''/></td>
	</tr>
	<tr>
	<td bgcolor ='#AAAAAA' colspan='4' align=center height=20><b>Personal Information</b></td>
	</tr>	
	<tr><td colspan='4'><br>
	DOB<sup>*</sup><input type='text' name='dob' id='dob' size ='10' value=''/>(yyyy-mm-dd)&nbsp;&nbsp;&nbsp;
        Gender&nbsp;&nbsp;&nbsp;<input type='radio' name='gender' id='gender' size ='10' value='Male'/> Male &nbsp;&nbsp; <input type='radio' name='gender' id='gender'size='10' value='Female'> Female
	&nbsp;&nbsp;&nbsp;Nationality&nbsp;&nbsp;&nbsp;<select name='nationality' id='nationality'>
          						<option selected>Select Nationality
     							<option value='IN'> Indian
 						        <option value='RS'> Russian
    							<option value='PK'> Pakistani
							<option value='AM'> American
							<option value='BR'> British
							<option value='SR'> Srilankan
	 						</select><br></td>
	<tr>
	<td bgcolor ='#AAAAAA' colspan='4' align=center height=20><b>Professionals & Educational Details</b><td>
	</tr>
	<tr><td>Work Exp</td>
	<td><input type='text' name='work_exp' id='work_exp' size ='10' value=''/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr><td>Skills<sup>*</sup></td>
	<td><input type='text' name='skill' id='skill' size ='30' value=''/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr><td>Industry</td>
	<td><input type='text' name='industry' id='industry' size ='30' value=''/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr>
	<td>Category</td>
	<td><input type='text' name='category' id='category' size ='10' value=''/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr><td>Roles</td>
	<td><input type='text' name='roles' id='roles' size ='10' value=''/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr><td>Current Employer</td>
	<td><input type='text' name='current_employer' id='current_employer' size ='30' value=''/></td>
	<td >Current Salary </td>
	<td ><input type='text' name='current_sal' id='current_sal' size ='10' value=''/></td>
	</tr>
	<tr><td>Highest Degree<sup>*</sup></td>
	<td><input type='text' name='highest_degree' id='highest_degree' size ='10' value=''/></td>
	<td colspan=2 align=right>Second Highest Degree<sup>*</sup> &nbsp;&nbsp;&nbsp;&nbsp;
	<input type='text' name='second_highest_degree' id='second_highest_degree' size ='10' value=''/>
	</td></tr>
	<tr><td bgcolor ='#AAAAAA' colspan='6' align=center height=20><b>Domain Knowledge<sup>*</sup></b></td>
	</tr>
	<tr><td>Domain<sup>*</sup></td>
	<td><input type='text' name='domain' id='domain' size ='10' value=''/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr><td> All the ( <sup>*</sup>) marked are mandatory</td></tr><tr>
	<td colspan=4 align=center><input type='submit' name='submit' id='submit' size ='10' value='Submit' onClick="return validateForm()"/></td>
	</tr>
	<input type='hidden' name='action_submit' id='action_submit' size ='10' value='people_applicant_register_submit'/> </table>
 </td>
 </tr>
 <tr>
 <td colspan="2"><%@include file="../jsp/people_footer.jsp"%></td>
 </tr>
</table></body></html>