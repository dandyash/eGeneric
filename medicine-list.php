<?php
session_start();
$_SESSION['url'] = $_SERVER['REQUEST_URI'];
include("connection.php");
?>

<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>eGeneric</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='css/medicine-list.css'>
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="slick/slick.css">
    <link rel="icon" type="image/svg" href="images/capsule.svg">
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
                        <a href="javascript:void(0);" class="active">medicine-list</a>
                    </h2>
                </div>
            </div>
        </div>
    </div>

    <!-- Filter Container -->
    <div class="filter-container">
        <div class="container">
            <div class="filter">
                <div class="left-filter">
                    <h2>type of medicine</h2>
                </div>
                <div class="right-filter">
                    <select name="medi-type" id="medi-type" onchange="medicine_type_display()">
                        <option value="Allopathic">Allopathic</option>
                        <option value="Generic">Generic</option>
                        <option value="Both">Both</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <!-- Medicine List Container -->
    <div class="main-medicine-container">
        <div class="container">
            <div class="medicine-container-flex">
                <div class="medicine-intro">
                    <h6 class="green-header">medicine list</h6>
                    <h2 class="common-header">List of medicines</h2>
                    <span class="green-line">asdavdbvsvrdvjnsrfdvjcnkrnjs</span>
                </div>
                <div class="medicine-container">

                    <div class="allo-medi-container" id="allo-medi-container">
                        <!-- Allopathic Medicines Loop -->
                        <?php
                        $q_ml = mysqli_query($conn, "SELECT * FROM medicine_master;");
                        while ($row = mysqli_fetch_array($q_ml)) {
                        ?>
                            <a href="medicine.php?medi-name=<?php echo $row['medicine_name']; ?>" class="medicine-card">
                                <div class="medicine-img">
                                    <img src="images/capsule.svg" alt="">
                                    <div class="medicine-type">
                                        <p>Allopathic</p>
                                    </div>
                                </div>
                                <div class="medicine-desc">
                                    <h2><?php echo $row['medicine_name']; ?></h2>
                                    <h4>
                                        mrp
                                        <span class="mrp-linethrough">₹<?php
                                                                        $mrp =  (float)$row['medicine_price'] + 20;
                                                                        echo $mrp;
                                                                        ?>
                                        </span>
                                        &nbsp;&nbsp;<span class="green-text">20₹ off</span>
                                    </h4>
                                    <h2><?php echo $row['medicine_price']; ?>₹</h2>
                                    <!-- <a href="#">view detailed info <i class="fa fa-arrow-circle-right" aria-hidden="true"></i> </a> -->
                                </div>
                            </a>
                        <?php
                        }
                        ?>
                    </div>

                    <!-- Generic Medicines Loop -->
                    <div class="generic-medi-container" id="generic-medi-container" style="display: none;">
                        <?php
                        $q_gml = mysqli_query($conn, "SELECT * FROM generic_master;");
                        while ($row = mysqli_fetch_array($q_gml)) {
                        ?>
                            <a href="medicine.php?generic-medi-name=<?php echo $row['generic_name']; ?>" class="medicine-card">
                                <div class="medicine-img">
                                    <img src="images/capsule.svg" alt="">
                                    <div class="medicine-type">
                                        <p>generic</p>
                                    </div>
                                </div>
                                <div class="medicine-desc">
                                    <h2><?php echo $row['generic_name']; ?></h2>
                                    <h4>
                                        mrp
                                        <span class="mrp-linethrough">₹<?php
                                                                        $mrp =  (float)$row['g_medicine_price'] + 20;
                                                                        echo $mrp;
                                                                        ?>
                                        </span>
                                        &nbsp;&nbsp;<span class="green-text">20₹ off</span>
                                    </h4>
                                    <h2><?php echo $row['g_medicine_price']; ?>₹</h2>
                                    <!-- <a href="#">view detailed info <i class="fa fa-arrow-circle-right" aria-hidden="true"></i> </a> -->
                                </div>
                            </a>
                        <?php
                        }
                        ?>
                    </div>
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
    <script>
        function medicine_type_display() {
            var type = document.getElementById('medi-type');
            var allo_medi_container = document.getElementById("allo-medi-container");
            var generic_medi_container = document.getElementById("generic-medi-container");
            if (type.value == "Allopathic") {
                allo_medi_container.style.display = "flex";
                generic_medi_container.style.display = "none";
            } else if (type.value == "Generic") {
                allo_medi_container.style.display = "none";
                generic_medi_container.style.display = "flex";
            } else {
                allo_medi_container.style.display = "flex";
                generic_medi_container.style.display = "flex";
            }
        }
    </script>
</body>

</html>