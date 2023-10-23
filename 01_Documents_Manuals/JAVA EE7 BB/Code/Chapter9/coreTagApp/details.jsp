<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
	<head>  
		<title>book detail:</title>
		
	</head>
<body>
	<c:set var="level" value="${param.level}" scope="session" /> 
	<c:choose>
		<c:when test="${level eq 'Beginner'}">
		<b> Books for beginner level audience are as follows:</b>
		</c:when>
	<c:when test="${level eq 'Intermediate'}">
	<b> Books for intermediate level audience are as follows:</b>
	</c:when>
	<c:when test="${level eq 'Advance'}">
	<b>Books for advance level audience are as follows: </b>
	</c:when>
	<c:otherwise>
	</c:otherwise>  	
	</c:choose> 
	<c:if test="${level eq 'Beginner'}">
		<c:import url="menu.jsp">
		<c:param name="option1" value="EJB 3.2 in Simple steps"/>
		<c:param name="option2" value=" Beginning Java 7"/>
	</c:import>
	</c:if>  
	<c:if test="${level eq 'Intermediate'}">
		<c:import url="menu.jsp">
		<c:param name="option1" value="Thinking in Java"/>
		<c:param name="option2" value="Java 7 platform unleashed"/>
		</c:import>
	</c:if> 
	<c:if test="${level eq 'Advance'}">
		<c:import url="menu.jsp">
<c:param name="option1" value="Java Server programming Java EE 7:Black Book"/>
<c:param name="option2" value="Java Server programming Java EE 6:Black Book"/>
	</c:import>
	</c:if> 
	<c:url value="select.jsp" var="backurl"/>
	<br><br><a href="${backurl}">Back</a>
</body>
</html>
