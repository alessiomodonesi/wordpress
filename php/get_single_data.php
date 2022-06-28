<?php 
include('connection.php');

$tab = $_POST['tab'];//nome della tabella
$tab_id = $_POST['tab_id'];//id della tabella
$val_id = $_POST['val_id'];//id contenuto nel bottone modifica



$sql = "SELECT * FROM $tab WHERE $tab_id='$val_id' LIMIT 1";
$query = mysqli_query($connect,$sql);
$row = mysqli_fetch_assoc($query);
echo json_encode($row);
?>
