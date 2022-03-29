<?php
session_start();
$url = $_SESSION['url'];
include('connection.php');

if (isset($_POST['login-btn'])) {
    $q = mysqli_query($conn, "SELECT * FROM `common_signup_master` WHERE common_email = '" . $_POST['username'] . "' AND pass_wd = '" . $_POST['password'] . "' AND user_type_id = 6");
    $data = mysqli_fetch_array($q);
    if ($data > 0) {
        $_SESSION['login_id'] = $data['common_signup_id'];
        $_SESSION['first_name'] = $data['common_first_name'];
        $_SESSION['last_name'] = $data['common_last_name'];
        $_SESSION['login_email'] = $_POST['username'];
        header("location: $url");
    } else {
        echo "<script>alert('Invalid Username Or Password');</script>";
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <link rel="icon" type="image/svg" href="images/capsule.svg">

    <title>eGeneric | Login</title>
</head>

<body>
    <div class="container">
        <div class="sub-container">
            <div class="form-img">
                <img src="images/capsule.svg" alt="eGeneric">
            </div>
            <form method="POST" class="login-form">
                <h2>eGeneric | <span>Login</span></h2>
                <div class="form">
                    <input type="email" name="username" id="username" placeholder="Username" required>
                    <div class="password-div">
                        <input type="password" name="password" id="password" placeholder="Password" required>
                        <a href="javascript:void(0)" id="password-toggle"><i class="fas fa-eye-slash" aria-hidden="true"></i></a>
                    </div>
                    <input type="submit" value="Login" name="login-btn">
                    <h4>New On eGeneric? <a href="register.php" class="create-account">Sign Up</a></h4>
                    <div class="go-back-div">
                        <a href="<?php echo $url; ?>" class="go-back"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i> Go BAck</a>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/ed680f4ec4.js" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            $('#password-toggle').click(function(e) {
                e.preventDefault();
                if ($('#password').attr("type") == "text") {
                    $('#password').attr("type", "password");
                    $('#password-toggle').html("<i class='fas fa-eye-slash' aria-hidden='true'></i>");
                } else {
                    $('#password').attr("type", "text");
                    $('#password-toggle').html("<i class='fas fa-eye' aria-hidden='true'></i>");
                }
            });
        });
    </script>
</body>

</html>