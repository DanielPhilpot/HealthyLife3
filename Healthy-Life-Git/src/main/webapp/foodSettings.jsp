<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Settings</title>

<jsp:include page="StandardImports.jsp"/>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  


<script type="text/javascript">
	function validateAddActivity() {
		let day = document.getElementById("day").value;
		let type = document.getElementById("type").value;
		if (day == "Select") {
			DMessage = "A day is Required; ";
		}
		if (type == "Select") {
			TyMessage = "A meal type is Required; ";
		}
		if (DMessage != "" || TyMessage != ""){
			alert(DMessage + TyMessage);
			DMessage = "";
			TyMessage = "";
			return false;
		}
	}
</script>

</head>
<body>
	<jsp:include page="nav-top.jsp"/>
	
	<div class="container">
	
	<h1>Food Settings</h1>
	
	<br>
	
  		<div class="row">
  			<div class="col-sm-4">
  				<h3 >Add a meal to schedule</h3>
  				<br>
  				<form form method="POST" action="http://localhost:8080/Healthy-Life-Git/addScheduleItem.html" onsubmit="return validateAddActivity()">
  					<table>
  						<tbody>
  							<tr class="loginRow">
  								<td>Event Type</td>
  								<td>
  									<select id="event" name="event">
  										<option>Meal</option>
  									</select>
  							</tr>
  							<tr class="loginRow">
								<td>Day of the Week</td>
								<td>
									<select id="day" name="day">
										<option>Monday</option>
										<option>Tuesday</option>
										<option>Wednesday</option>
										<option>Thursday</option>
										<option>Friday</option>
										<option>Saturday</option>
										<option>Sunday</option>
									</select>
								</td>
							</tr>
							<tr class="loginRow">
								<td>Time - HR:Min</td>
								<td><input type ="time" id="time" name="time" required></td>
							</tr>
							<tr class="loginRow">
								<td>Meal Type</td>
								<td>
									<select id="type" name="type">
										<option>Meal</option>
										<option>Snack</option>
									</select>
								</td>
							</tr>
							<tr class="loginRow">
								<td>Duration - HR:Min</td>
								<td><input type ="time" id="dur" name="dur" required></td>
							</tr>
						</tbody>
  					</table>
  					<br>
  					<p><input type="submit" value="Add"/></p>
  				</form>
  			</div>
  			
  			<div class="col-sm-8"; style="overflow: auto">
  				<h3>Meal Schedule</h3>
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
  	</div>
  	<br>
  	<div class="container">
  		<div class="row">
  			<div class="col-sm-6">
  				<h3>Dietary Requirements</h3>
  				<br>
  				<form method="POST" action="http://localhost:8080/Healthy-Life-Git/setDietReq.html" onsubmit="return validateForm()">
  					<table>
  						<tbody>
  							<tr class="loginRow">	
  								<td>Vegetarian</td>
  								<td>
  									<c:choose>
  										<c:when test="${user.isVegiterian}">
  											<input type='checkbox' id='Vegetarian' name='Vegetarian' value='V' checked>
  										</c:when>
  										<c:otherwise>
  											<input type='checkbox' id='Vegetarian' name='Vegetarian' value='V'>
  										</c:otherwise>
  									</c:choose>							
  								</td>
  							</tr>
  							<tr class="loginRow">	
  								<td>Vegan</td>
  								<td>
  									<c:choose>
  										<c:when test="${user.isVegan}">
  											<input type="checkbox" id="Vegan" name="Vegan" value="VV" checked>
  										</c:when>
  										<c:otherwise>
  											<input type="checkbox" id="Vegan" name="Vegan" value="VV">
  										</c:otherwise>
  									</c:choose>  									
  								</td>
  							</tr>
  							<tr class="loginRow">	
  								<td>Lactose Intolerance</td>
  								<td>
  									<c:choose>
  										<c:when test="${user.isLactoseInt}">
  											<input type="checkbox" id="LacInt" name="LacInt" value="L" checked>
  										</c:when>
  										<c:otherwise>
  											<input type="checkbox" id="LacInt" name="LacInt" value="L">	
  										</c:otherwise>
  									</c:choose>  
  								</td>								
  							</tr>
  							<tr class="loginRow">	
  								<td>Gluten Intolerance</td>
  								<td>
  									<c:choose>
  										<c:when test="${user.isGlutenInt}">
  											<input type="checkbox" id="GlucInt" name="GlucInt" value="G" checked>
  										</c:when>
  										<c:otherwise>
  											<input type="checkbox" id="GlucInt" name="GlucInt" value="G">
  										</c:otherwise>
  									</c:choose>  									
  								</td>					
  							</tr>
  							<tr class="loginRow">	
  								<td>Nut Allergy</td>
  								<td>
  									<c:choose>
  										<c:when test="${user.isNutAlerg}">
  											<input type="checkbox" id="NutAlg" name="NutAlg" value="N" checked>
  										</c:when>
  										<c:otherwise>
  											<input type="checkbox" id="NutAlg" name="NutAlg" value="N">
  										</c:otherwise>
  									</c:choose>  									
  								</td>	
  							</tr>
  							<tr class="loginRow">	
  								<td>Kosher</td>
  								<td>
  									<c:choose>
  										<c:when test="${user.isKosher}">
  											<input type="checkbox" id="Kosher" name="Kosher" value="K" checked>
  										</c:when>
  										<c:otherwise>
  											<input type="checkbox" id="Kosher" name="Kosher" value="K">
  										</c:otherwise>
  									</c:choose>  									
  								</td>  								
  							</tr>
  							<tr class="loginRow">	
  								<td>Halal</td>
  								<td>
  									<c:choose>
  										<c:when test="${user.isHalal}">
  											<input type="checkbox" id="Halal" name="Halal" value="H" checked>
  										</c:when>
  										<c:otherwise>
  											<input type="checkbox" id="Halal" name="Halal" value="H">
  										</c:otherwise>
  									</c:choose>  									
  								</td>
  							</tr>
  						</tbody>
  					</table>
  					<p><input type="submit" value="Set"/></p>
  				</form>
  			</div>
  			<div class="col-sm-6">
  				<h3>Targets</h3>
  				<form method="POST" action="http://localhost:8080/Healthy-Life-Git/addTarget.html" onsubmit="return validateForm()">
  					<table>
  						<tbody>
  							<tr class="loginRow">	
								<td>TBD</td>
  							</tr>
  						</tbody>
  					</table>
  				<p><input type="submit" value="Set"/></p>
  				</form>
  			</div>
  		</div>
  	</div>
	
</body>
</html>