<?php 
include('connection.php');

$arr_value = $_POST['arr_value'];//valori cambiati dall'utente tramite input
$arr_nomi = $_POST['arr_name'];//nomi dei campi del database
$arr_type = $_POST['arr_type'];//prende i tipi di dati dei campi della tabella
$tabella = $_POST['tabella'];//nome tabella
$id_value = $_POST['id_value'];//id contenuto nel bottone modifica
$id_name = $_POST['id_name'];//id della tabella

//aggiorna i valori aggiornati nel database
$sql = "UPDATE `$tabella` SET";
for($i = 0; $i < count($arr_value); $i++){
    if($i < count($arr_value) - 1){
        if($arr_type[$i] == "checkbox")
            $sql .= " `$arr_nomi[$i]`=b'$arr_value[$i]',";
        else
            $sql .= " `$arr_nomi[$i]`='$arr_value[$i]',";
    }
    else{
        if($arr_type[$i] == "checkbox")
            $sql .= " `$arr_nomi[$i]`=b'$arr_value[$i]' WHERE `$id_name`='$id_value' ";
        else
            $sql .= " `$arr_nomi[$i]`='$arr_value[$i]' WHERE `$id_name`='$id_value' ";
    }
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