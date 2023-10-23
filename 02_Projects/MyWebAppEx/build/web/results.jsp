<%-- 
    Document   : results
    Created on : Sep 20, 2015, 6:46:22 PM
    Author     : sudhanshu
--%>

<%@page contentType="text/html" import="java.util.*"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Check out these cool movies!!!</title>

</head>
    <body>
        <h1>movies under selected Genres are:</h1>
        <c:set var="reqattr" scope="request" value="${result}" /> 
        <table>
            <c:forEach var="movie" items="${reqattr}">
                <tr>
                    <td>
                        ${movie}
                    </td>
                </tr> 
            </c:forEach>
        </table>
    </body>
</html>