<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title>Login</title>

<jsp:include page="StandardImports.jsp"/>

<script type="text/javascript">
	function validateForm() {
		let username = document.getElementById("username").value;
		let password = document.getElementById("password").value;
		if (username == "") {
			UMessage = "Username is Required; ";
		}
		if (password == "") {
			PMessage = "Password is Required; ";
		}
		if (UMessage != "" || PMessage != ""){
			alert(UMessage + PMessage);
			UMessage = "";
			PMessage = "";
			return false;
		}
	}
</script>

</head>
<body>
	<jsp:include page="nav-top.jsp"/>
	
	<div style="text-align: center;">
		<h1>Login to Healthy Life</h1>
		<jsp:useBean class="model.User" id="user" scope="session"/>
		<br>
		<form method="POST" action="http://localhost:8080/Healthy-Life-Git/login.html" onsubmit="return validateForm()">
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
			</tbody>
		</table>
		<br>
		<p><input type="submit" value="Login"/></p>
		</form>
	</div>
</body>
</html>