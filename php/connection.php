<?php
//credential
$servername = "localhost";
$username = "root";
$password = "";
$db = "nuovo_database";
$port = "3306";

//connect
$connect = mysqli_connect($servername, $username, $password, $db, $port);

//error
if(mysqli_connect_errno())
{
    echo 'Database Connection Error';
}

?>