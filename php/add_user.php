<?php
include('connection.php');

$arr_value = $_POST['arr_value'];
$arr_nomi = $_POST['arr_name'];
$tabella = $_POST['tabella'];

$sql = "INSERT INTO `$tabella` (";

for($i = 0; $i < count($arr_nomi); $i++){
    if($i < count($arr_nomi) - 1)
        $sql .= " `$arr_nomi[$i]`,";
    else
        $sql .= " `$arr_nomi[$i]`) values (";
}

for($i = 0; $i < count($arr_value); $i++){
    if($i < count($arr_value) - 1)
        $sql .= " '$arr_value[$i]',";
    else
        $sql .= " '$arr_value[$i]')";
}

$query = mysqli_query($connect, $sql);
$lastId = mysqli_insert_id($connect);
if($query == true)
{
    $data = array(
        'status'=>'true',
    );
    echo json_encode($data);
}
else
{
    $data = array(
        'status'=>'false',
    );
    echo json_encode($data);
} 
?>