<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title>Sign Up</title>

<jsp:include page="StandardImports.jsp"/>

<script type="text/javascript">
	function validateForm() {
		let username = document.getElementById("username").value;
		let password = document.getElementById("password").value;
		let sex = document.getElementById("sex").value;
		if (username == "") {
			UMessage = "Username is Required; ";
		}
		if (password == "") {
			PMessage = "Password is Required; ";
		}
		if (sex == "Select") {
			SMessage = "Sex is Required; ";
		}
		if (UMessage != "" || PMessage != "" || SMessage != ""){
			alert(UMessage + PMessage + SMessage);
			UMessage = "";
			PMessage = "";
			SMessage = "";
			
			return false;
		}
	}
</script>

</head>
<body>
	<jsp:include page="nav-top.jsp"/>

	
	<div style="text-align: center;">
		<h1>Sign up to Healthy Life</h1>
		<jsp:useBean class="model.User" id="user" scope="session"/>
		<br>
		<form method="POST" action="http://localhost:8080/Healthy-Life-Git/signup.html" onsubmit="return validateForm()">
		<table class="center">
			<tbody>
				<tr class="loginRow">
					<td>Username</td>
					<td><input type="text" id="username" name="username"></td>
				</tr>
				<tr class="loginRow">
					<td>Password</td>
					<td><input type="password" id="password" name="password"></td>
				</tr>
				<tr class="loginRow">
					<td>Sex</td>
					<td>
						<select id="sex" name="sex">
							<option>Select</option>
							<option>Male</option>
							<option>Female</option>
						</select>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<p><input type="submit" value="Sign Up"/></p>
		</form>
	</div>
</body>
</html>