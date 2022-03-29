<?php
session_start();
$url = $_SESSION['url'];
session_unset();
session_destroy();

header("location: $url");
