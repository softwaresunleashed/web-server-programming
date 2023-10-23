<%@ page contentType="text/html; charset=iso-8859-1" language="java"  errorPage="" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="../css/CascadeMenu.css" type="text/css"></link>
<script language="JavaScript" type="text/JavaScript" src="../css/CascadeMenu.js">
</script>
</head>
<body onload="InitMenu()" onclick="HideMenu(menuBar)" id="Bdy">
<div id="menuBar" class="menuBar" >
    
    <div id="Bar5" class="Bar" menu="menu9" title="About Us/Log Out">Hi, Kogent</div>
    <div id="Bar1" class="Bar" menu="menu1">Employee</div>
    <div id="Bar2" class="Bar"  menu="menu2">Recruitment</div>
    <div id="Bar3" class="Bar"  menu="menu3">Time Management</div>
    <div id="Bar4" class="Bar"  menu="menu4">PayRoll</div>
 </div><div align="right"><a href="/people-mgmt/jsp/people_default.jsp">Home Page</a></div>
 
<div id="menu9" class="menu" >
   <div id="menuItem9_1" class="menuItem" title="About Us" cmd="/people-mgmt/jsp/people_aboutus.jsp" class="whitelink">About Us </div>
   <div id="menuItem9_2" class="menuItem" title="Log Out" cmd="/people-mgmt/servlet/people_user_login" class="whitelink">Log Out</div>
</div>  
<div id="menu1" class="menu" >
   <div id="menuItem1_1" class="menuItem" title="Add Employees" cmd="/people-mgmt/servlet/people_employee?dbopr=create" class="whitelink">Add New Employee</div>
   <div id="menuItem1_2" class="menuItem" title="Edit Employee" cmd="/people-mgmt/servlet/people_employee?dbopr=edit" class="whitelink">Edit Employee</div>
   <div id="menuItem1_3" class="menuItem" title="Employee Profile" cmd="/people-mgmt/servlet/people_employee?dbopr=show" class="whitelink">Employee Profile</div>
</div>
<div id="menu2" class="menu">
   <div id="menuItem2_1" class="menuItem" title="Register Applicants" cmd="/people-mgmt/servlet/people_applicant?dbopr=register" class="whitelink">New Applicant</div>
   <div id="menuItem2_2" class="menuItem" title="Update Applicants" cmd="/people-mgmt/servlet/people_applicant?dbopr=select" class="whitelink">Update Applicant</div>
   <div id="menuItem2_3" class="menuItem" title="Shortlisted Candidate" menu="menu5">Written Round</div>
   <div id="menuItem2_4" class="menuItem" menu="menu6" title="Technical Round" > Technical Round</div>
   <div id="menuItem2_5" class="menuItem" menu="menu7" title="HR Round" > HR Round</div>
</div>
<div id="menu3" class="menu">
   <div id="menuItem3_1" class="menuItem" title="Enter/Update Attendance" cmd="/people-mgmt/servlet/time_management?dbopr=daily_attendance_entry" class="whitelink">
	Update Attendance</div>
   <div id="menuItem3_2" class="menuItem" title="Attendance Summary" cmd="/people-mgmt/servlet/time_management?dbopr=daily_attendance_summary" class="whitelink">
	Attendance Summary</div>
   <div id="menuItem3_3" class="menuItem" menu="menu8">Leave Management</div>
</div>
<div id="menu4" class="menu">
   <div id="menuItem4_1" class="menuItem" title="Employee Agreement" cmd="/people-mgmt/servlet/people_payroll?dbopr=employee_agreement" class="whitelink"><br />
	Salary BreakUp</div>
   <div id="menuItem4_2" class="menuItem" title="employee Salary" cmd="/people-mgmt/servlet/people_payroll?dbopr=calc_employee_salary" class="whitelink">
	Employee Salary</div>
</div>
<div id="menu5" class="menu">
    <div id="menuItem5_1" class="menuItem" title="call for written" cmd="/people-mgmt/servlet/applicant_test_dtl?dbopr=call_for_written" class="whitelink">Call for Written</div>
    <div id="menuItem5_2" class="menuItem" title="Update Results" cmd="/people-mgmt/servlet/applicant_test_dtl?dbopr=upd_wrtn_performance" class="whitelink">Results</div>
</div>
<div id="menu6" class="menu">
    <div id="menuItem6_1" class="menuItem"title="Shortlisted For Tech.Round" cmd="/people-mgmt/servlet/applicant_test_dtl?dbopr=shortlist_after_wrtn" class="whitelink">
		Shortlist For Tech. Round</div>
    <div id="menuItem6_2" class="menuItem" title="Update Results" cmd="/people-mgmt/servlet/applicant_test_dtl?dbopr=upd_tech_performance" class="whitelink">
		Update Result</div>
</div>
<div id="menu7" class="menu">
    <div id="menuItem7_1" class="menuItem" title="Shortlisted for HR Rounds" cmd="/people-mgmt/servlet/applicant_test_dtl?dbopr=shortlist_after_tech" class="whitelink">
		Shortlist  for HR Round </div>
    <div id="menuItem7_2" class="menuItem" title="Update Results" cmd="/people-mgmt/servlet/applicant_test_dtl?dbopr=upd_hr_performance" class="whitelink">
		Update Result</div>
    <div id="menuItem7_3" class="menuItem" title="Shortlisted for Selection" cmd="/people-mgmt/servlet/applicant_test_dtl?dbopr=shortlist_after_hr" class="whitelink">
		Shortlist For Selection</div>
    <div id="menuItem7_4" class="menuItem" title="Selected" cmd="/people-mgmt/servlet/applicant_test_dtl?dbopr=final_selected" class="whitelink">
		Selected Candidate</div>
</div>
<div id="menu8" class="menu">
    <div id="menuItem8_1" class="menuItem" title="Leave Application" cmd="/people-mgmt/servlet/leave_management?dbopr=leave_request" class="whitelink">Leave Apply </div>
    <div id="menuItem8_2" class="menuItem" title="Approval Status" cmd="/people-mgmt/servlet/leave_management?dbopr=leave_approve" class="whitelink">Leave Approval</div>
    <div id="menuItem8_3" class="menuItem" title="Approved/Rejected" cmd="/people-mgmt/servlet/leave_management?dbopr=approved_leave" class="whitelink">Approved Request</div>
</div>
</body>
</html>