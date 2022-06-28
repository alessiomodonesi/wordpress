<?php 
include('connection.php');

$arr_value = $_POST['arr_value'];
$arr_nomi = $_POST['arr_name'];
$tabella = $_POST['tabella'];
$id_value = $_POST['id_value'];
$id_name = $_POST['id_name'];

//$sql = "UPDATE `wp_cliente` SET `nome`='$arr_value[1]', `cognome`='$arr_value[2]', `data_nascita`='$arr_value[3]', `indirizzo`='$arr_value[4]', `mail`='$arr_value[5]', `ufficio_usa`='$arr_value[6]', `caso`='$arr_value[7]', `id_applicant`='$arr_value[8]' WHERE id_cliente='$arr_value[0]'";
//$sql = "UPDATE `wp_cliente` SET `nome`='$arr_value[1]' WHERE id_cliente='$arr_value[0]'";
$sql = "UPDATE `$tabella` SET";
for($i = 0; $i < count($arr_value); $i++){
    if($i < count($arr_value) - 1)
        $sql .= " `$arr_nomi[$i]`='$arr_value[$i]',";
    else
        $sql .= " `$arr_nomi[$i]`='$arr_value[$i]' WHERE `$id_name`='$id_value' ";
}

$query= mysqli_query($connect, $sql);
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