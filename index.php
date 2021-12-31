<?php
session_start();
?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>TODO LIST AND LIKE AND DISLIKE</title>
	<link rel="stylesheet" href="public/css/bootstrap.min.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
	<link rel="stylesheet" href="public/css/like.css">
	<link rel="stylesheet" href="public/css/nav.css">
	<link rel="stylesheet" href="public/css/footer1.css">
</head>

<body>

<?php  include 'navBar.php'?>

	<div class="container">
		<div class="main-heading">
			<h2>Like & Dislike System</h2>
		</div>
		<div class="row">
			<?php require_once 'db.php'; ?>
			<?php display_questions(); ?>
		</div>

	</div>


	<?php include 'footer.php'?>

	<script src="public/js/jquery-3.2.1.min.js"></script>
	<script src="public/js/bootstrap.min.js"></script>
	<script src="public/js/script.js"></script>
</body>

</html>