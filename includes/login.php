<section class="main-container">
    <div class="main-wrapper">
      <h2>Signup</h2>
      <form class="signup-form" action="includes/signup.inc.php" method="POST">
          <input type="text" name="firstname" placeholder="firstname">
          <br>
          <input type="text" name="lastname" placeholder="lastname">
          <br>
          <input type="password" name="password" placeholder="password">
          <br>
          <input type="text" name="username" placeholder="username">
          <br>
          <button type="submit" name="submit">Sign up</button>
      </form>
    </div>
</section>

<?php
include_once 'footer.php';
 ?>
