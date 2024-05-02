<?php

    // echo "<pre>";
    // print_r($_GET);
    // echo "</pre>";

    // echo "<pre>";
    // print_r($_POST);
    // echo "</pre>";

    // echo "<pre>";
    // print_r($_REQUEST);
    // echo "</pre>";

    // echo "<h1>Welcome to our company Mr/Ms. " .ucwords($_GET['username']). " as we see your qualification ".$_GET['qualification']. " matches our requiremnets</h1>" 

    echo "<h1>Welcome to our company Mr/Ms. " .ucwords($_REQUEST['username']). " as we see your qualification ".$_REQUEST['qualification']. " matches our requiremnets</h1>" 
?>