<?php
include('connection.php');
$output = array();
$tab = $_POST['tabella'];
$tab_id = $_POST['id_tabella'];

$total_all_rows = get_records_filtered($connect, $tab);
$query = get_records_by_order($connect, $tab, $tab_id);
$count_rows = mysqli_num_rows($query);

$data = array();
while ($row = mysqli_fetch_assoc($query)) {
    $data[] = create_sub_array($row, $tab, $tab_id);
}
$output = array(
    'draw' => intval($_POST['draw']),
    'recordsTotal' => $count_rows,
    'recordsFiltered' => $total_all_rows,
    'data' => $data
);
echo json_encode($output);
function get_records_filtered($connect, $table)
{
    $sql = "SELECT * FROM $table";
    $result = mysqli_query($connect, $sql);
    return mysqli_num_rows($result);
}
function get_records_by_order($connect, $table, $id)
{
    $sql = "SELECT * FROM $table";
    $columns = get_columns($table);
    if (isset($_POST['search']['value']) && $_POST['search']['value'] != '') {
        $search_value = $_POST['search']['value'];
        $sql .= get_search_comands($table, $id, $search_value);
    }
    if (isset($_POST['order'])) {
        $column_name = $_POST['order'][0]['column'];
        $order = $_POST['order'][0]['dir'];
        $sql .= " ORDER BY " . $columns[$column_name] . " " . $order . "";
    } else {
        $sql .= " ORDER BY $id asc"; //desc --> discendente, asc --> ascendente
    }
    if ($_POST['length'] != -1) {
        $start = $_POST['start'];
        $length = $_POST['length'];
        $sql .= " LIMIT  " . $start . ", " . $length;
    }
    return mysqli_query($connect, $sql);
}
//si occupa di create il sub_array a seconda della tabella a cui si fa la query
function create_sub_array($row, $table, $id)
{
    $sub_array = array();
    //id della tabella come primo elemento
    $sub_array[] = $row[$id];
    switch ($table) {
        case "wp_cliente":
            $sub_array[] = $row['nome'];
            $sub_array[] = $row['cognome'];
            $sub_array[] = $row['data_nascita'];
            $sub_array[] = $row['indirizzo'];
            $sub_array[] = $row['numero_telefono'];
            $sub_array[] = $row['mail'];
            $sub_array[] = $row['ufficio_usa'];
            $sub_array[] = $row['caso'];
            $sub_array[] = $row['id_applicant'];
            break;
        case "wp_cliente_specialista":
            $sub_array[] = $row['id_specialista'];
            $sub_array[] = $row['numero_specialista'];
            break;
        case "wp_documenti_caso":
            $sub_array[] = $row['documento'];
            break;
        case "wp_metodo_pagamento":
            $sub_array[] = $row['nome'];
            break;
        case "wp_pagamento":
            $sub_array[] = $row['id_cliente'];
            $sub_array[] = $row['totale'];
            $sub_array[] = $row['totale_vero'];
            break;
        case "wp_rata":
            $sub_array[] = $row['id_pagamento'];
            $sub_array[] = $row['somma'];
            $sub_array[] = $row['data_pagamento'];
            $sub_array[] = $row['tipo_pagamento'];
            break;
        case "wp_specialista":
            $sub_array[] = $row['nome'];
            $sub_array[] = $row['cognome'];
            $sub_array[] = $row['data_nascita'];
            $sub_array[] = $row['mail'];
            $sub_array[] = $row['numero_telefono'];
            break;
        case "wp_tipo_caso":
            $sub_array[] = $row['nome_caso'];
            break;
    }
    $sub_array[] = '<a href="#!" data-id="' . $row[$id] . '" class="btn btn-outline-primary btn-sm editbtn">Modifica</a> <a href="#!" data-id="' . $row[$id] . '" class="btn btn-outline-danger btn-sm deleteBtn">Elimina</a>';
    return $sub_array;
}
function get_columns($table)
{
    $columns = array();
    switch ($table) {
        case "wp_cliente":
            $columns = array(
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
            break;
        case "wp_cliente_specialista":
            $columns = array(
                0 => 'id_cliente',
                1 => 'id_specialista',
                2 => 'numero_specialista'
            );
            break;
        case "wp_documenti_caso":
            $columns = array(
                0 => 'id_caso',
                1 => 'documento'
            );
            break;
        case "wp_metodo_pagamento":
            $columns = array(
                0 => 'id',
                1 => 'nome'
            );
            break;
        case "wp_pagamento":
            $columns = array(
                0 => 'id_pagamento',
                1 => 'id_cliente',
                2 => 'totale',
                3 => 'totale_vero'
            );
            break;
        case "wp_rata":
            $columns = array(
                0 => 'id_rata',
                1 => 'id_pagamento',
                2 => 'somma',
                3 => 'data_pagamento',
                4 => 'tipo_pagamento'
            );
            break;
        case "wp_specialista":
            $columns = array(
                0 => 'id_specialista',
                1 => 'nome',
                2 => 'cognome',
                3 => 'data_nascita',
                4 => 'mail',
                5 => 'numero_telefono'
            );
            break;
        case "wp_tipo_caso":
            $columns = array(
                0 => 'id_caso',
                1 => 'nome_caso'
            );
            break;
    }
    return $columns;
}
function get_search_comands($table, $id, $search_value)
{
    $cmd = " WHERE $id like '%" . $search_value . "%'";
    switch ($table) {
        case "wp_cliente":
            $cmd .= " OR nome like '%" . $search_value . "%'";
            $cmd .= " OR cognome like '%" . $search_value . "%'";
            $cmd .= " OR data_nascita like '%" . $search_value . "%'";
            $cmd .= " OR indirizzo like '%" . $search_value . "%'";
            $cmd .= " OR numero_telefono like '%" . $search_value . "%'";
            $cmd .= " OR mail like '%" . $search_value . "%'";
            $cmd .= " OR ufficio_usa like '%" . $search_value . "%'";
            $cmd .= " OR caso like '%" . $search_value . "%'";
            $cmd .= " OR id_applicant like '%" . $search_value . "%'";
            break;
        case "wp_cliente_specialista":
            $cmd .= " OR id_specialista like '%" . $search_value . "%'";
            $cmd .= " OR numero_specialista like '%" . $search_value . "%'";
            break;
        case "wp_documenti_caso":
            $cmd .= " OR documento like '%" . $search_value . "%'";
            break;
        case "wp_metodo_pagamento":
            $cmd .= " OR nome like '%" . $search_value . "%'";
            break;
        case "wp_pagamento":
            $cmd .= " OR id_cliente like '%" . $search_value . "%'";
            $cmd .= " OR totale like '%" . $search_value . "%'";
            $cmd .= " OR totale_vero like '%" . $search_value . "%'";
            break;
        case "wp_rata":
            $cmd .= " OR id_pagamento like '%" . $search_value . "%'";
            $cmd .= " OR somma like '%" . $search_value . "%'";
            $cmd .= " OR data_pagamento like '%" . $search_value . "%'";
            $cmd .= " OR tipo_pagamento like '%" . $search_value . "%'";
            break;
        case "wp_specialista":
            $cmd .= " OR nome like '%" . $search_value . "%'";
            $cmd .= " OR cognome like '%" . $search_value . "%'";
            $cmd .= " OR data_nascita like '%" . $search_value . "%'";
            $cmd .= " OR mail like '%" . $search_value . "%'";
            $cmd .= " OR numero_telefono like '%" . $search_value . "%'";
            break;
        case "wp_tipo_caso":
            $cmd .= " OR nome_caso like '%" . $search_value . "%'";
            break;
    }
    return $cmd;
}