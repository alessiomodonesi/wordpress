<?php 
include('connection.php');

$tabella =$_POST['tab'];
$id = $_POST['id_daEliminare'];
$id_name = $_POST['tab_id'];

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