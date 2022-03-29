<?php
session_start();
$_SESSION['url'] = $_SERVER['REQUEST_URI'];
include('connection.php');
if (isset($_GET['medi-name'])) {
    $q_ml = mysqli_query($conn, "SELECT * FROM `medicine_master` m JOIN generic_master g ON m.drug_id = g.g_drug_id JOIN medicine_company_master mc ON m.medicine_company_id = mc.medicine_company_id 
    JOIN medicine_type_master mtype ON m.medicine_type_id = mtype.medicine_type_id 
    JOIN medicine_category_master mcategory ON m.medicine_category_id = mcategory.medicine_category_id 
    JOIN drug_master d ON m.drug_id = d.drug_id 
    JOIN content_master c ON m.content_id = c.content_id WHERE medicine_name = '" . $_GET['medi-name'] . "';");

    while ($row = mysqli_fetch_array($q_ml)) {
        $medi_name = $row['medicine_name'];
        $medi_price = $row['medicine_price'];
        $medi_usage = $row['medicine_usage'];
        $medi_sideefct = $row['medicine_side_ecft'];
        $medi_wntu = $row['medicine_wntu'];
        $medi_company = $row['medicine_company_name'];
        $medi_type = $row['medicine_type'];
        $medi_category = $row['medicine_category'];
        $medi_drug_used = $row['drug_name'];
        $generic_alternative = $row['generic_name'];
    }
} elseif (isset($_GET['generic-medi-name'])) {
    $q_gml = mysqli_query($conn, "SELECT * FROM `generic_master` m JOIN medicine_company_master mc ON m.g_medicine_company_id = mc.medicine_company_id 
    JOIN medicine_type_master mtype ON m.g_medicine_type_id = mtype.medicine_type_id 
    JOIN medicine_category_master mcategory ON m.g_medicine_category_id = mcategory.medicine_category_id 
    JOIN drug_master d ON m.g_drug_id = d.drug_id 
    JOIN content_master c ON m.g_drug_content_id = c.content_id WHERE generic_name = '" . $_GET['generic-medi-name'] . "';");

    while ($row = mysqli_fetch_array($q_gml)) {
        $medi_name = $row['generic_name'];
        $medi_price = $row['g_medicine_price'];
        $medi_usage = $row['g_medicine_usage'];
        $medi_sideefct = $row['g_medicine_side_ecft'];
        $medi_wntu = $row['g_medicine_wntu'];
        $medi_company = $row['medicine_company_name'];
        $medi_type = $row['medicine_type'];
        $medi_category = $row['medicine_category'];
        $medi_drug_used = $row['drug_name'];
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/medicine.css">
    <title><?php echo $medi_name; ?></title>
</head>

<body>
    <!--  -->
    <header>
        <div class="main-menu">
            <div class="sub-white-menu">
                <div class="container">
                    <div class="sub-menu-flex">
                        <div class="left-block">
                            <a href="index.php" class="logo">e<span>G</span>eneric</a>
                        </div>
                        <div class="right-block">
                            <?php

                            if (isset($_SESSION['login_id'])) {
                                echo "
                                    <div class='login-div' id='profile'>
                                        <a href='javascript:void(0);'>
                                            <div><i class='fa fa-user-circle' aria-hidden='true'></i></div>
                                            <div class='login-div-column'>
                                                <h6>Hi! " . $_SESSION['first_name'] . " " . $_SESSION['last_name'] . " </h6>
                                                <p>" . $_SESSION['login_email'] . "</p>
                                            </div>
                                        </a>
                                        <div class='profile-dropdown' id='dropdown'>
                                            <ul>
                                                <li><a href='#'><i class='fa fa-user' aria-hidden='true'></i>Profile</a></li>
                                                <li><a href='logout.php'><i class='fa-solid fa-right-from-bracket'></i>Logout</a></li>
                                            </ul>
                                        </div>
                                    </div>";
                            } else {
                                echo "
                                    <div class='login-div'>
                                        <a href='login.php'>
                                            <div><i class='fa fa-user-circle' aria-hidden='true'></i></div>
                                            <div class='login-div-column'>
                                                <h6>Hi There!</h6>
                                                <p>Login/Sign-up</p>
                                            </div>
                                        </a>
                                    </div>";
                            }

                            ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sub-green-menu" id="sub-green-menu">
                <div class="container">
                    <div class="sub-menu-flex">
                        <div class="left-block">
                            <div class="menu">
                                <ul>
                                    <li><a href="index.php">home</a></li>
                                    <li><a href="medicine-list.php" class="active">medicine List</a></li>
                                    <li><a href="#">about us</a></li>
                                    <li><a href="#">contact us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="right-block">
                            <form class="search-bar">
                                <input type="text" name="search-bar" placeholder="search here">
                                <a href="#" class="btn-gray">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Bread Crumb -->
    <div class="bread-crumb-container">
        <div class="container">
            <div class="breadcrumb">
                <div class="left-breadcrumb">
                    <h2>Medicine-List</h2>
                </div>
                <div class="right-breadcrumb">
                    <h2>
                        <a href="index.php">HOME</a>
                        <span>/</span>
                        <a href="medicine-list.php">medicine-list</a>
                        <span>/</span>
                        <a href="javascript:void(0);" class="active"><?php echo $medi_name; ?></a>
                    </h2>
                </div>
            </div>
        </div>
    </div>

    <!-- Medicine Full Container -->
    <div class="medicine-full-container">
        <!-- Medicine Header Container -->
        <div class="medicine-header-container">
            <div class="container">
                <div class="medicine-header-container-flex">
                    <div class="medicine-img">
                        <img src="images/capsule.svg" alt="medicine_img">
                    </div>
                    <div class="medicine-desc">
                        <div>
                            <h2><?php echo $medi_name; ?></h2>
                            <span>
                                <?php echo "(" . $medi_category . ")"; ?>
                            </span>
                        </div>
                        <div>
                            <h4>manufacturer</h4>
                            <a href="#"><?php echo $medi_company; ?></a>
                        </div>
                        <div>
                            <h4>composition</h4>
                            <a href="#"><?php echo $medi_drug_used; ?></a>
                        </div>
                        <div>
                            <h4>
                                mrp
                                <span class="mrp-linethrough">₹<?php
                                                                $mrp =  (float)$medi_price + 20;
                                                                echo $mrp;
                                                                ?>
                                </span>
                                &nbsp;&nbsp;<span class="green-text">20₹ off</span>
                            </h4>
                            <h2>₹ <?php echo $medi_price ?></h2>
                        </div>
                        <div class="add-to-cart">
                            <a href="#" class="btn-green">Add To Cart</a>&nbsp;&nbsp;
                            <?php
                            if (isset($generic_alternative)) {
                                echo "<a href='medicine.php?generic-medi-name=" . $generic_alternative . "' class='btn-green'>Get Generic Alternative</a>";
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Medicine Usage Container -->
        <div class="medicine-sub-container">
            <div class="container">
                <div class="medicine-sub">
                    <h2>Uses Of <?php echo $medi_name; ?></h2>
                    <ul>
                        <?php
                        $usage = explode(",", $medi_usage);
                        for ($i = 0; $i < count($usage); $i++) {
                            echo "<li>" . $usage[$i] . "</li>";
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Medicine Side Effects Container -->
        <div class="medicine-sub-container">
            <div class="container">
                <div class="medicine-sub">
                    <h2>Side Effects Of <?php echo $medi_name; ?></h2>
                    <ul>
                        <?php
                        $side_efct = explode(",", $medi_sideefct);
                        for ($i = 0; $i < count($side_efct); $i++) {
                            echo "<li>" . $side_efct[$i] . "</li>";
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Medicine WNTU Container -->
        <div class="medicine-sub-container">
            <div class="container">
                <div class="medicine-sub">
                    <h2>Safety Advice (When Not To Use) <?php echo $medi_name; ?></h2>
                    <ul>
                        <?php
                        $wntu = explode(",", $medi_wntu);
                        for ($i = 0; $i < count($wntu); $i++) {
                            echo "<li>" . $wntu[$i] . "</li>";
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="footer-main-container">
            <div class="container">
                <div class="footer-flex-container">
                    <div class="footer-left-block">
                        <h2 class="logo">e<span>G</span>eneric</h2>
                    </div>
                    <div class="footer-right-block">
                        <div class="footer-menu">
                            <ul>
                                <li><a href="index.php">Home</a></li>
                                <li><a href="#">Medicine List</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-container">
            <div class="container">
                <h6>© copyright <span><a href="index.php">eGeneric</a></span> 2022. All Rights Reserved.</h6>
            </div>
        </div>
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/ed680f4ec4.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="slick/slick.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#profile').hover(function() {
                // over
                $('#dropdown').stop(true, true).slideDown('medium');
            }, function() {
                // out
                $('#dropdown').stop(true, true).slideUp('medium');
            });
        });
    </script>
    <script>
        window.onscroll = function() {
            myFunction()
        };

        // Get the navbar
        var navbar = document.getElementById("sub-green-menu");

        // Get the offset position of the navbar
        var sticky = navbar.offsetTop;
        var main_container = document.getElementById("main-medicine-container");
        // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
        function myFunction() {
            if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
                main_container.style.marginTop = "250px";
            } else {
                navbar.classList.remove("sticky");
                main_container.style.marginTop = "0px";
            }
        }
    </script>
</body>

</html>