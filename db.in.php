<?php 
$dbserver="localhost";
    $dbuser="atharva";
    $dbpwd="atharva";
    $dbname="atharva";
    $conn=mysqli_connect($dbserver,$dbuser,$dbpwd,$dbname);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>