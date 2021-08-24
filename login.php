<?php
$message = ""; 
?>


    <?php
     require_once('inc/dbconnect.php');
 
     require_once('inc/core.php');

    if(loggedin()){
      header('Location: index.php');
    }else{

    // check for submit
    if(isset($_POST['submit'])){
    //  Get form data
        $email = mysqli_real_escape_string($conn, $_POST['email']);
        $password = mysqli_real_escape_string($conn, $_POST['password']);

        $query = "SELECT `id`, `email`, `password` FROM `staffprofile` WHERE email='$email' AND password='$password'";
        $result = $conn->query($query);

       
        if(!$row = $result->fetch_assoc()){
          $message =  "<div class=\"alert alert-danger\">
    <a href=\"login.php\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
     Invalid Login Credentials</div>";
        }else{
          
          $query = "SELECT `id` FROM `staffprofile` WHERE email='$email'";
          $stmt = $conn->query($query);
          while ($data = $stmt-> fetch_assoc()){
          $_SESSION['email'] = $email;
          $_SESSION['id'] = $row['id'];                   
          $_SESSION['start'] = time();        
        }

        $_SESSION['expire'] = $_SESSION['start'] + (10);

        header('Location: index.php');

        }
    }
  }

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AlignIT | Doctors Portal</title>  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page" style="background-image: url('dist/img/alignnn.jpg'); background-size:cover">
<div class="login-box">
  <div class="login-logo">
  <img src="dist/img/logoAlignIT.png" alt="">
   <p style="color:white"><b >AlignIT</b> Portal</p>
  
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
    <?php echo $message?>
      <p class="login-box-msg">Sign in to start your session</p>

      <form action="login.php" method="post">
        <div class="input-group mb-3">
          <input type="email" name="email" class="form-control" placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="password" class="form-control" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" name="submit" class="btn btn-primary btn-sm">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <!-- <div class="social-auth-links text-center mb-3">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
        </a>
      </div> -->
      <!-- /.social-auth-links -->

      <!-- <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="register.html" class="text-center">Register a new membership</a>
      </p> -->
      <a href="register.php" class="text-center">Not Yet Registered</a>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>

</body>
</html>
