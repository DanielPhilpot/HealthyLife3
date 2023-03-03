<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Record a Meal</title>

<jsp:include page="StandardImports.jsp"/>

<script type="text/javascript">
	function validateMeal() { 
		var fv = parseInt(document.getElementById("f&v").value) || 0;
		var carb = parseInt(document.getElementById("carb").value) || 0;
		var protein = parseInt(document.getElementById("protein").value) || 0;
		var dairy = parseInt(document.getElementById("dairy").value) || 0;
		var os = parseInt(document.getElementById("o&s").value) || 0;
		var jf = parseInt(document.getElementById("jF").value) || 0;
		var mT = document.getElementById("type").value;
		
		if (mT == "Select") {
			a1 = "Please select a meal type; "
		}
		
		if (fv + carb + protein + dairy + os + jf != 100) {
			a2 = "Percentages must total 100; ";
		}
		
		if (a1 != "" || a2 != "") {
			alert(a1 + a2);
			a1 = "";
			a2 = "";
			return false;
		}
	}
	
</script>

</head>
<body>
	<jsp:include page="nav-top.jsp"/>
	
	<div class="container">
	<h1>Record a Meal</h1>
	<br>
  		<div class="row">
  			<div class="col-sm-4">
  				<form method="POST" action="http://localhost:8080/Healthy-Life-Git/recordMeal.html" onsubmit="return validateMeal()">
  					<table>
  						<tbody>
  							<tr class="loginRow">
								<td>Meal Title</td>
								<td><input type="text" id="mealTitle" name="mealTitle" required></td>
							</tr>
							<tr class="loginRow">
								<td>Meal Description</td>
								<td><textarea id="mealDesc" name="mealDesc" required></textarea></td>
							</tr>
							<tr class="loginRow">
								<td>Meal Date</td>
								<td><input type="date" id="mealDate" name="mealDate" required>
							</tr>
							<tr class="loginRow">
								<td>Time of day</td>
								<td><input type="time" id="mealTime" name="mealTime" required></td>
							</tr>
							<tr class="loginRow">
								<td>Location</td>
								<td><input type="text" id="mealLoc" name="mealLoc" required></td>
							</tr>
							<tr class="loginRow">
								<td>Meal Type</td>
								<td>
									<select id="type" name="type" required>
										<option>Select</option>
										<option>Meal</option>
										<option>Snack</option>
									</select>
								</td>
							</tr>
							<tr class="loginRow">
								<td>Weight (g)</td>
								<td><input type="number" id="mealWeight" name="mealWeight" required></td>
							</tr>
							<tr class="loginRow">
								<td>Calories</td>
								<td><input type="number" id="mealCal" name="mealCal" required></td>
							</tr>
							<tr><td>----------------------------------------</td></tr>
							<tr>
								<td>Food Group Percentages</td>
							</tr>
							<tr>
								<td>Fruit & Veg %</td>
								<td><input type="number" id="f&v" name="f&v" value="0" required></td>
							</tr>
							<tr>
								<td>Starchy Carbohydrates %</td>
								<td><input type="number" id="carb" name="carb" value="0" required></td>
							</tr>
							<tr>
								<td>Protien %</td>
								<td><input type="number" id="protein" name="protein" value="0" required></td>
							</tr>
							<tr>
								<td>Dairy & Alternatives %</td>
								<td><input type="number" id="dairy" name="dairy" value="0" required></td>
							</tr>
							<tr>
								<td>Oils & Spreads %</td>
								<td><input type="number" id="o&s" name="o&s" value="0" required></td>
							</tr>
							<tr>
								<td>Junk Food %</td>
								<td><input type="number" id="jF" name="jF" value="0" required></td>
							</tr>
						</tbody>
  					</table>
  					<br>
  					<p><input type="submit" value="Add"/></p>
  				</form>
  			</div>
  			
  		</div>
  	</div>
	
</body>
</html>