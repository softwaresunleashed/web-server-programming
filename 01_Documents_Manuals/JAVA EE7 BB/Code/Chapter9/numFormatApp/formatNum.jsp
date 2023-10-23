<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>welcome!!</title>
		
	</head>
	<body>
		My Number: 
		<b><c:out value="${param.mynumber}"/></b> <br/>
		Formatting My Number: <br/><br/>
		<fmt:setLocale value="fr"/>
		In FRENCH:
		<pre>
 		<b>MY NUM: <fmt:formatNumber type="number" value="${param.mynumber}"/></b>
		Default pattern:<b>
		<fmt:formatNumber type="currency" value="${param.mynumber}"/></b>
		Using pattern (0,00,00.0000): 
		<b>
 		<fmt:formatNumber type="currency" value="${param.mynumber}" pattern="00,0,00.0000"/> </b>
		</pre>
		<br/>
		In US:
		<fmt:setLocale value="en_US"/>
		<pre>
		<b>MY NUM: <fmt:formatNumber type="number" value="${param.mynumber}"/></b>
		Default pattern:<b>
		<fmt:formatNumber type="currency" value="${param.mynumber}"/></b>
		Using pattern (0,00,00.0000):
		<b>
		<fmt:formatNumber type="currency" value="${param.mynumber}" currencySymbol="$" pattern="0,00,00.0000" var="fmt_mynumber"/> 
		<c:out value="${fmt_mynumber}"/>
		</b></pre>
		<br/>  
	</body>
</html>
