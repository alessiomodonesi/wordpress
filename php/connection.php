<?php
//credential
$servername = "localhost";
$username = "root";
$password = "";
$db = "wordpress";
$port = "3306";

//connect
$connect = mysqli_connect($servername, $username, $password, $db, $port);

//error
if(mysqli_connect_errno())
{
    echo 'Database Connection Error';
}

?>