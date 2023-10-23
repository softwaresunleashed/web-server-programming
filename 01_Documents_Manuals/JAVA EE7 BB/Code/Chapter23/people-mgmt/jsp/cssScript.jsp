<script language="JavaScript" type="text/JavaScript" src="../script/validate.js"></script>
cssScript.jsp 

<%@page language="java" session="true" 
contentType="text/html;charset=ISO-8859-1" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 
ransitional//EN" "http://www.w3.org/
  TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml">

<font color="blue">Please Enter User Name and Password </font><br><br>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Implementing css and javascript</title>

<link rel="stylesheet" href="../css/style.css" type="text/css"></link>
<script language="JavaScript" type="text/JavaScript" 
src="../script/validate.js"></script>
</head>

<form enctype="multipart/form-data" onSubmit="return validate(this)" method="post" action="Welcome.html">
    <table border = "0">
        <tr align="left" valign="top">
            <td>User Name:</td>
            <td><input type="text" name ="user" class="inputbox"/></td>
        </tr>
        <tr align="left" valign="top">
            <td>Password:</td>
            <td><input type="password" name ="pass" class="inputbox"/></td>
        </tr>
        <tr align="left" valign="top">
            <td></td>
            <td><input type="submit" name="submit" 
                        value="submit" class="submitButton"/></td>
        </tr>
    </table>
</form>
 
validate.js

function validate(theForm){
        if(theForm.user.value.length==0){
                alert("UserId can't be blank");
                theForm.user.focus();
               return false;
        }else if(theForm.pass.value.length==0){
                alert("Password can't be blank");
                theForm.pass.focus();
                return false;
        }else if(theForm.pass.value.length<6){
                alert("Password length can't be less than 6 char");
                theForm.pass.focus();
                return false;
        }
} 
