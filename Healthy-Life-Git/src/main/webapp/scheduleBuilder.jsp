<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Schedule Builder</title>
<script type="text/javascript" src="scheduleItemsXML.js"></script>

<jsp:include page="StandardImports.jsp"/>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  

<style>
	#display {
		visibility: hidden;
	}
</style>

</head>
<body>
	<jsp:include page="nav-top.jsp"/>
	
	<div class="container">
		<h1>Schedule Builder</h1>
		 <p>Select the schedule you would like to view</p>
        <select id="schedule" name="schedule" 
                onchange="requestDetails(this.options[this.selectedIndex].value);">
            <option value="All">All</option>
            <option value="Food">Food</option>
            <option value="Exercise">Exercise</option>
            <option value="WorkSleep">Work & Sleep</option>
        </select>
        
        <div id="display">
        	<table border="1">
  					<tr>
  						<th>Time</th>
  						<th>Duration</th>
  						<th>Type</th>
  					</tr>
  					<tr>
  						<th>Monday</th>
  					</tr>
  					
  					<c:set scope="page" var="count" value="1"/>
					<c:forEach var="scheduleItem" items="${user.scheduleItems}">
						<c:if test = "${scheduleItem.value.isFood}">
						<tr>
							<td><c:out value="${scheduleItem.value.time}"/></td>
							<td><c:out value="${scheduleItem.value.duration}"/></td>
							<td><c:out value="${scheduleItem.value.snackOrLocation}"/></td>
						</tr>	
						</c:if>					
					</c:forEach>
  				
  				</table>
        </div>
        
	</div>
</body>
</html>