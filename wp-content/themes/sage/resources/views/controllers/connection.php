<?php
//credential
$servername = "localhost";

$username = "evolve";
$password = "e_volvetest!8!";

$usernameL = "root";
$passwordL = "";

$db = "wp_evolve";
$port = "3306";

//connect
$connect = mysqli_connect($servername, $usernameL, $passwordL, $db, $port);

//error
if(mysqli_connect_errno())
{
    echo 'Database Connection Error';
}

?>
