<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
	<head>    
		<title>My JSP 'details.jsp' starting page</title>
		
	</head>
<body>
	<c:import url="book.xml" var="book"/>
	<x:parse xml="${book}" var="parsed"/>
	Details on the Books are as follows:
	<table>
	<tr>
	<th>Title of the Book:</th>
	<td width="10%"> </td>
	<th>Description</th>
	<td width="10%"> </td>
	<th>Author of the Book:</th>
	</tr>
	<x:forEach select="$parsed//book">
	<tr>
	<td colspan><x:out select="title"/></td>
	<td width="10%"> </td>
	<td colspan><x:out select="description"/></td>
	<td width="10%"> </td>
	<td><x:out select="author"/></td>
	</tr>
	</x:forEach>
	</table>
</body>
</html>
