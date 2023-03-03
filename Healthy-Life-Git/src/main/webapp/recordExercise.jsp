<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Record exercise</title>

<jsp:include page="StandardImports.jsp"/>

<script type="text/javascript">
	function setWorkoutType() { 
		var type = document.getElementById("type").value
		if(type == "Cardio") {
			document.getElementById("penis").style.visibility = "visible";
		}
			
	}
</script>

</head>
<body>
	<jsp:include page="nav-top.jsp"/>
	
	<div class="container">
	<div class="row">
	<h1>Record a Workout</h1>
	<br>
  		<div class="row">
  			<div class="col-sm-4">
  				<h3>Add Workout</h3>
  				<form name="workout" action = "RecordWorkoutServlet" onsubmit="return validateWorkout()" method = "post">
  					<table>
  						<tbody>
							<tr class="loginRow">
								<td>Workout Date</td>
								<td><input type="date" id="mealDate" name="mealDate" required>
							</tr>
							<tr class="loginRow">
								<td>Time of day</td>
								<td><input type="time" id="mealTime" name="mealTime" required></td>
							</tr>
							<tr class="loginRow">
								<td>Weight (g)</td>
								<td><input type="number" id="mealWeight" name="mealWeight" required></td>
							</tr>
							<tr class="loginRow">
								<td>Calories</td>
								<td><input type="number" id="mealCal" name="mealCal" required></td>
							</tr>
							
						</tbody>
  					</table>
  					<br>
  					<p><input type="submit" value="Add"/></p>
  				</form>
  			</div>
  			<div class="col-sm-4">
  				<h3>Add Exercise</h3>
  				<form name="workout" action = "RecordExerciseServlet" onsubmit="return validateWorkout()" method = "post">
  					<table>
  						<tbody>
  							<tr class = "loginRow" >
  								<td>Workout</td>
								<td><select id="workout" name="workout">
									<!-- This will be populated with workouts when the database has been implemented -->
									<option>Select</option>
									<option>Workout 1</option>
									<option>Workout 2</option>
								</select></td>
  							</tr>
  							<tr class = "loginRow">
  								<td>Type</td>
  								<td><select id="type" name="type">
  									<option>Cardio</option>
  									<option>Muscle</option>
  								</select></td>
  							</tr>
  							<tr class = "loginRow">
  								<td>Sets</td>
								<td><input type="number" id="sets" name="sets"></td>
  							</tr>
  							<tr class = "loginRow">
  								<td>Reps</td>
								<td><input type="number" id="reps" name="reps"></td>
  							</tr>
  							<tr class = "loginRow">
  								<td>Weight - Kg</td>
								<td><input type="number" id="weight" name="weight"></td>
  							</tr>
  							<tr class = "loginRow">
  								<td>Distance - Mi</td>
								<td><input type="number" id="distance" name="distance"></td>
  							</tr>
  							<tr class = "loginRow">
  								<td>Time Taken - Min</td>
								<td><input type="number" id="time" name="time"></td>
  							</tr>
  							<tr class = "loginRow">
  								<td>Chalories Burnt</td>
								<td><input type="number" id="chalorie" name="chalore"></td>
  							</tr>
  							<tr class = "loginRow">
  								<td>Feeling After</td>
  								<td><select id="after" name="after">
  									<option>Select</option>
  									<option>Energized</option>
  									<option>Fine</option>
  									<option>Tired</option>
  									<option>Exhausted</option>
  								</select></td>
  							</tr>					
  						</tbody>
  					</table>
  					<p><input type="submit" value="Add"/></p>
  				</form>
  			</div>
  			</div>	
  		</div>
  	</div>
	
</body>
</html>