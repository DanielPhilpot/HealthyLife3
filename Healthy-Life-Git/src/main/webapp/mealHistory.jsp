<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Record a Meal</title>

<jsp:include page="StandardImports.jsp"/>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  


</head>
<body>
	<jsp:include page="nav-top.jsp"/>
	
	<div class="container">
	
		<table border="1">
			<tr>
				<th>Event Id</th>
				<th>Title</th>
				<th>Date and Time</th>
				<th>Description</th>
				<th>Location</th>
				<th>Meal Type</th>
				<th>Weight</th>
				<th>Calories</th>
				<th>Fruit & Veg %</th>
				<th>Starchy Carbohydrates %</th>
				<th>Protien %</th>
				<th>Dairy & Alternatives %</th>
				<th>Oils & Spreads %</th>
				<th>Junk Food % </th>
			</tr>
			
			<c:set scope="page" var="count" value="1"/>
			<c:forEach var="meal" items="${user.meals}">
				<tr>
					<td><c:out value="${meal.value.eventId}"/></td>
					<td><c:out value="${meal.value.title}"/></td>
					<td><c:out value="${meal.value.eventDateTime}"/></td>
					<td><c:out value="${meal.value.description}"/></td>
					<td><c:out value="${meal.value.location}"/></td>
					<td><c:out value="${meal.value.mealType}"/></td>
					<td><c:out value="${meal.value.weight}"/></td>
					<td><c:out value="${meal.value.calories}"/></td>
					<td><c:out value="${meal.value.fv}"/></td>
					<td><c:out value="${meal.value.carbs}"/></td>
					<td><c:out value="${meal.value.protein}"/></td>
					<td><c:out value="${meal.value.dairy}"/></td>
					<td><c:out value="${meal.value.oils}"/></td>
					<td><c:out value="${meal.value.junk}"/></td>
				</tr>
				<c:set var="count" value="${count+1}"/>
			</c:forEach>
		</table>

  	</div>
	
</body>
</html>