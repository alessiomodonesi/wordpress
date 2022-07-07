<?php 
include('connection.php');

$tabella =$_POST['tab'];//va a prendere il nome della tabella
$id = $_POST['id_daEliminare'];//va a prendere l'id contenuto nel bottone elimina
$id_name = $_POST['tab_id'];//va a prendere l'id della tabella


//elimina la riga dal database
$sql = "DELETE FROM $tabella WHERE $id_name='$id'";

$delQuery = mysqli_query($connect, $sql);
if ($delQuery == true)
{
	$data = array(
        'status'=>'success', 
    );
    echo json_encode($data);
}
else
{
    $data = array(
        'status'=>'failed',
    );
    echo json_encode($data);
} 
?>