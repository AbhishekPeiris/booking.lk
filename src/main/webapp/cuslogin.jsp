<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">

<link rel="stylesheet" href="css/login.css">

<title>Booking.lk</title>
</head>
<body>	
	<div class="center">
		<h1>Login</h1>
		
		<form action="CusLoginServlet" method="post">
			<div class="txt_field">
				<input type="text" name="uid" required>
				<label>Username</label>
			</div>
			<div class="txt_field">
				<input type="password" name="pass" required>
				<label>Password</label>
			</div>
			<div class="pass">Forgot Password?</div>
			<input type="submit" value="Login" name="login">
			<div class="signup_link">
				Not a member? <a href="#">Signup</a>
			</div>
		</form>
	</div>
	<img src="images/Logo.png" class="logo" width="150">
</body>
</html>