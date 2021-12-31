<?php
session_start();
if(isset($_SESSION['logged_in'])){
	header('location: index.php');
}  
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>TODO LIST AND LIKE AND DISLIKE LOGIN PAGE</title>
	<link rel="stylesheet" href="public/css/bootstrap.min.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" href="public/css/style.css">
	<link rel="stylesheet" href="public/css/loginPage.css">
</head>
<body>
	
	<div class="container">
		<form action="auth.php" method="POST" class="login-email">
			<p class="login-text" style="font-size: 2rem; font-weight: 800;">Login</p>
			<div class="input-group">
				<input type="email" placeholder="Email" name="email" id="email"  required>
			</div>
			<div class="input-group">
				<input type="password" placeholder="Password" name="password" id="password" required>
			</div>
			<div class="input-group">
				<button name="submit" class="btn">Login</button>
			</div>
		</form>
	</div>

	</div>

	<script src="public/js/jquery-3.2.1.min.js"></script>
	<script src="public/js/bootstrap.min.js"></script>
	<script src="public/js/script.js"></script>
</body>
</html>