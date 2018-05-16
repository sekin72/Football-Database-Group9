<?php
    session_start();

    $_SESSION['whologged'] = -1;
    $_SESSION['user'] = -1;
    header("location: index_homescreen.php");
?>