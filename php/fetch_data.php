<?php
include('connection.php');
$output = array();
$tab = $_POST['tabella'];
$tab_id = $_POST['id_tabella'];
$sql = "SELECT * FROM $tab ";
//$sql = "SELECT * FROM wp_cliente ";
$totalQuery = mysqli_query($connect, $sql);
$total_all_rows = mysqli_num_rows($totalQuery);
/*$columns = array(
0 => 'id_cliente', 
1 => 'nome', 
2 => 'cognome', 
3 => 'data_nascita', 
4 => 'indirizzo',
5 => 'numero_telefono',
6 => 'mail',
7 => 'ufficio_usa',
8 => 'caso',
9 => 'id_applicant'
);

if(isset($_POST['search']['value']))
{
$search_value = $_POST['search']['value'];
$sql .= " WHERE nome like '%".$search_value."%'";
$sql .= " OR cognome like '%".$search_value."%'";
$sql .= " OR data_nascita like '%".$search_value."%'";
$sql .= " OR indirizzo like '%".$search_value."%'";
$sql .= " OR numero_telefono like '%".$search_value."%'";
$sql .= " OR mail like '%".$search_value."%'";
$sql .= " OR ufficio_usa like '%".$search_value."%'";
$sql .= " OR caso like '%".$search_value."%'";
$sql .= " OR id_applicant like '%".$search_value."%'";
}*/
if (isset($_POST['order'])) {
    $column_name = $_POST['order'][0]['column'];
    $order = $_POST['order'][0]['dir'];
    $sql .= " ORDER BY " . $columns[$column_name] . " " . $order . "";
} else {
    $sql .= " ORDER BY $tab_id asc"; //desc --> discendente, asc --> ascendente
}
/*
if($_POST['length'] != -1)
{
$start = $_POST['start'];
$length = $_POST['length'];
$sql .= " LIMIT  ".$start.", ".$length;
}    */

$query = mysqli_query($connect, $sql);
$count_rows = mysqli_num_rows($query);
$data = array();
while ($row = mysqli_fetch_assoc($query)) {
    $sub_array = array();
    $sub_array[] = $row[$tab_id];
    /*$sub_array[] = $row['id_cliente'];
    $sub_array[] = $row['nome'];
    $sub_array[] = $row['cognome'];
    $sub_array[] = $row['data_nascita'];
    $sub_array[] = $row['indirizzo'];
    $sub_array[] = $row['numero_telefono'];
    $sub_array[] = $row['mail'];
    $sub_array[] = $row['ufficio_usa'];
    $sub_array[] = $row['caso'];
    $sub_array[] = $row['id_applicant'];*/
    $sub_array[] = $row['id_specialista'];
    $sub_array[] = $row['numero_specialista'];
    $sub_array[] = '<a href="#!" data-id="' . $row[$tab_id] . '" class="btn btn-outline-primary btn-sm editbtn">Modifica</a> <a href="#!" data-id="' . $row[$tab_id] . '" class="btn btn-outline-danger btn-sm deleteBtn">Elimina</a>';
    $data[] = $sub_array;
}
$output = array(
    'draw' => intval($_POST['draw']),
    'recordsTotal' => $count_rows,
    'recordsFiltered' => $total_all_rows,
    'data' => $data
);
echo json_encode($output);