<%-- 
    Document   : index.jsp
    Created on : Sep 20, 2015, 6:18:49 PM
    Author     : sudhanshu
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <body>
          <h1><b> Movie Selection Page</b></h1> 
        <%
            String msg=(String)request.getAttribute("msg"); 
            out.print(msg+"<br>");
        %>
        <h2><b>Select your favourite Genre:</b></h2>
        genre:  
        <form action="controller" method="POST">
            <select name="genre">
                <option>Comedy</option>
                <option>Sci-Fi</option>
                <option>Action</option>
            </select>
            <input type="submit" value="Submit" name="button1" />
        </form>
    </body>
</html>
