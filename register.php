<?php
include('connection.php');
if (isset($_POST['signup-btn'])) {
    if ($_POST['password'] == $_POST['confirm-password']) {
        $q = mysqli_query($conn, "INSERT INTO `common_signup_master`(`common_first_name`, `common_last_name`, `common_gender`, `common_dob`, `common_phone`, `common_email`, `pass_wd`, `user_type_id`) 
        VALUES ('" . $_POST['firstname'] . "', '" . $_POST['lastname'] . "', '" . $_POST['gender'] . "', " . $_POST['dob'] . ", '" . $_POST['phone'] . "', '" . $_POST['email'] . "' , '" . $_POST['password'] . "', 6)");
        if ($q) {
            header("location: login.php");
        } else {
            echo "<script>alert('Sign Up Unsuccessful !!!');</script>";
        }
    } else {
        echo "<script>alert('Password and Confirm Password Not Same !!!');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/register.css">
    <link rel="icon" type="image/svg" href="images/capsule.svg">

    <title>eGeneric | Register</title>
</head>

<body>
    <div class="container">
        <div class="sub-container">
            <div class="form-img">
                <img src="images/capsule.svg" alt="eGeneric">
            </div>
            <form method="POST" class="login-form">
                <h2>eGeneric | <span>Register</span></h2>
                <div class="form">
                    <div class="row">
                        <input type="text" name="firstname" id="firstname" placeholder="First Name" required>
                        <input type="text" name="lastname" id="lastname" placeholder="Last Name" required>
                    </div>
                    <input type="email" name="email" id="email" placeholder="E-mail" required>
                    <input type="text" name="phone" id="phone" placeholder="Mobile-No" minlength="10" maxlength="10" required>
                    <select name="gender" id="gender" required>
                        <option value="Select Your Gender">Select Your Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                    <input type="date" name="dob" id="dob" placeholder="Date Of Birth" required>
                    <div class="row">
                        <div class="password-div">
                            <input type="password" name="password" id="password" placeholder="Password" required>
                            <a href="javascript:void(0)" id="password-toggle"><i class="fas fa-eye-slash" aria-hidden="true"></i></a>
                        </div>
                        <div class="password-div">
                            <input type="password" name="confirm-password" id="confirm-password" placeholder="Confirm Password" required>
                            <a href="javascript:void(0)" id="confrm-password-toggle"><i class="fas fa-eye-slash" aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <input type="submit" value="Sign Up" name="signup-btn">
                    <h4>Have an account? <a href="login.php" class="create-account">Login</a></h4>
                    <!-- <div class="go-back-div">
                        <a href="index.php" class="go-back"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i> Go BAck</a>
                    </div> -->
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
            $('#confrm-password-toggle').click(function(e) {
                e.preventDefault();
                if ($('#confirm-password').attr("type") == "text") {
                    $('#confirm-password').attr("type", "password");
                    $('#confrm-password-toggle').html("<i class='fas fa-eye-slash' aria-hidden='true'></i>");
                } else {
                    $('#confirm-password').attr("type", "text");
                    $('#confrm-password-toggle').html("<i class='fas fa-eye' aria-hidden='true'></i>");
                }
            });
        });
    </script>
</body>

</html>