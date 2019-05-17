<?php
if (isset($_POST['submit'])){

  include_once 'login.php';

  $first = mysqli_real_escape_string ($config, $_POST["first"]);
  $last = mysqli_real_escape_string ($config, $_POST["last"]);
  $user = mysqli_real_escape_string ($config, $_POST["user"]);
  $pass = mysqli_real_escape_string ($config, $_POST["pass"]);

  //Error handlers
  //Check for empty fields
if (empty($first) || empty($last) || empty($user) || empty($pass)){
  header("Location: ../login.php?signup=empty");
  exit();
} else{
  //check if input characters are valid
  if (!preg_match("/^[a-zA-Z]*$", $first) || !preg_match("/^[a-zA-Z]*$"),
  $last) {
    header("Location: ../login.php?signup=invalid");
    exit();
  }
  else{
    //check if email is valid
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      header("Location: ../login.php?signup=invalid");
      exit();
  } else {
    $sql = 'SELECT * FROM users WHERE user_uid="$uid"';
    $result = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($result);

    if($resultCheck > 0) {
      header("Location: ../login.php?signup=usertaken");
      exit();
    } else{
      //hashing the password
      $hashedPwd = password_hash($pass, PASSWORD_DEFAULT);
        //insert the user into database
        $sql = "INSERT INTO users(user_first, user_last, user_user, user_pass) VALUES ('$first', '$last', '$user', '$hashedPwd');";
        mysqli_query($conn, $sql);
        header("Location: ../login.php?signup=usertaken");
        exit();
          }
        }
      }
}
else {
  header("Location: ../login.php")
  exit();
}



 ?>
