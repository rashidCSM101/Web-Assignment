
<nav>
		<div class="wrapper">
			<div class="logo"><a href="#">Rashid</a></div>
			<input type="radio" name="slider" id="menu-btn">
			<input type="radio" name="slider" id="close-btn">
			<ul class="nav-links">
				<label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
				<li>
					<a href="slider.php">Home</a>
				</li>
				<li>
					<a href="index.php">Post</a>
				</li>
				<li>
					<a href="todomain.php">Todo List</a>
				</li>
				<?php if (isset($_SESSION['logged_in'])) : ?>
					<li><a href="logout.php">Logout</a></li>
				<?php else : ?>
					<li><a href="login.php">Login</a></li>
				<?php endif; ?>
				<li>
					<a href="about.php">About Us</a>
				</li>
			</ul>
			<label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
		</div>
	</nav>