<section class="footer">
    <div class="social-icons" class="social-icons" style="text-align: center;font-size: 30px;margin: 16px; ">
        <a href=" #">
        <i class="fab fa-facebook-f" style="margin: 0 5px;color: #fff;" ></i>
        </a>
        <a href="#">
            <i class="fab fa-twitter" style="margin: 0 5px;color: #fff;" ></i>
        </a>
        <a href="#">
            <i class="fab fa-instagram" style="margin: 0 5px;color: #fff;" ></i>
        </a>
        <a href="#">
            <i class="fab fa-linkedin-in" style="margin: 0 5px;color: #fff;" ></i>
        </a>
    </div>

    <ul>
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
            <li><a href=".login.php">Login</a></li>
        <?php endif; ?>
        <li>
            <a href="about.php">About us</a>
        </li>
        <li>
            <a href="#">Privcy Policy</a>
        </li>
    </ul>
    <p class="copyright">
        Sayed Rashid Ali 2K18/CSM/101 BCS Part-IV Computer Science UoS Jamshoro @ 2022
    </p>
</section>
