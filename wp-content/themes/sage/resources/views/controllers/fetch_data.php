<?php
include('connection.php');
$output = array();
$tab = $_POST['tabella'];//prende nome della tabella
$tab_id = $_POST['id_tabella'];//prende l'id della tabella
$arr_nomi = $_POST['arr_name'];//prende i nomi dei campi della tabella

$total_all_rows = get_records_filtered($connect, $tab);//Tutte le righe
$query = get_records_by_order($connect, $tab, $tab_id, $arr_nomi);
$count_rows = mysqli_num_rows($query);

$data = array();
while ($row = mysqli_fetch_assoc($query)) {
    $data[] = create_sub_array($row, $tab, $tab_id, $arr_nomi);
}
$output = array(
    'draw' => intval($_POST['draw']),
    'recordsTotal' => $count_rows,
    'recordsFiltered' => $total_all_rows,
    'data' => $data
);
echo json_encode($output);
//Ritorna le righe della tabella
function get_records_filtered($connect, $table)
{
    $sql = "SELECT * FROM $table";
    $result = mysqli_query($connect, $sql);
    return mysqli_num_rows($result);
}

function get_records_by_order($connect, $table, $id, $arr)
{
    $sql = "SELECT * FROM $table";
    $columns = get_columns($arr, $id);
    if (isset($_POST['search']['value']) && $_POST['search']['value'] != '') {
        $search_value = $_POST['search']['value'];
        $sql .= get_search_comands($id, $search_value, $arr);
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
/*si occupa di creare il sub_array a seconda della tabella a cui si fa la query
 riempendolo con tutti i dati di ogni riga*/
function create_sub_array($row, $table, $id, $arr)
{
    $sub_array = array();
    //id della tabella come primo elemento
    if($table != "SPESE" && $table != "FASCICOLO_SPECIALISTA")
        $sub_array[] = $row[$id];
    for($i = 0; $i < count($arr); $i++){
        $sub_array[] = $row[$arr[$i]];
    }
    $sub_array[] = '<a
                        href="#!"
                        data-id="' . $row[$id] . '"
                        class="btn btn-outline-primary btn-sm editbtn">
                        Modifica
                    </a>
                    <a
                        href="#!"
                        data-id="' . $row[$id] . '"
                        class="btn btn-outline-danger btn-sm deleteBtn">
                        Elimina
                    </a>';
    return $sub_array;
}

//Funzione che va a prendere le colonne della tabella
function get_columns($arr, $id)
{
    $columns = $arr;
    array_unshift($columns, $id);
    return $columns;
}

//Funzione che ricerca nomi e dati all'interno delle tabelle
function get_search_comands($id, $search_value, $arr)
{
    $cmd = " WHERE $id like '%" . $search_value . "%'";
    for ($i = 0; $i < count($arr); $i++) {
        $cmd .= " OR " . $arr[$i] . " like '%" . $search_value . "%'";
    }
    return $cmd;
}
?>
