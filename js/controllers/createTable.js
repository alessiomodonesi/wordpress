var $ = jQuery;
$(document).ready(function () {
    let page = $('#title').val();
    console.log("Questa è la pagina: " + page);
    let page_data = Get_Table(page);//prende i dati principali della tabella in base alla pagina
    let url = Get_URL(page, 'wp-content/themes/my-theme/php/fetch_data.php');
    let dataNames = Setup_Array(page, false);//va a prendere i nomi dei campi della tabella

    $('#table').DataTable({
        "fnCreatedRow": function (nRow, aData, iDataIndex) {
            $(nRow).attr('id', aData[0]);
            console.log("Numero di colonne secondo il db: " + aData.length);
        },
        'serverSide': 'true',
        'responsive': 'true',
        'processing': 'true',
        'paging': 'true',
        'order': [],
        'ajax': {
            'url': url,
            'type': 'post',
            'data': {
                'tabella': page_data.tab,
                'id_tabella': page_data.tab_id,
                'arr_name': dataNames,
            },
        },
        "aoColumnDefs": [{
            "bSortable": false,
            "aTargets": [page_data.nCol]
        }]
    });
});

//Funzione che restituisce i dati principali di una tabella in base alla pagina in cui ci si trova
function Get_Table(page) {
    let table, id, number;
    switch (page) {
        //caso
        case "caso":
            table = "caso";
            id = "id";
            number = 2;
            break;
        //cliente
        case "cliente":
            table = "cliente";
            id = "id";
            number = 7;
            break;
        //fascicolo
        case "fascicolo":
            table = "fascicolo";
            id = "id";
            number = 9;
            break;
        //fascicolo-cliente
        case "fascicolo-cliente":
            table = "fascicolo_cliente";
            id = "id_fascicolo";
            number = 2;
            break; 
        //fascicolo-specialista
        case "fascicolo-specialista":
            table = "fascicolo_specialista";
            id = "id_fascicolo";
            number = 4;
            break;
        //metodo_pagamento
        case "metodo-pagamento":
            table = "metodo_pagamento";
            id = "id";
            number = 2;
            break;
        //pagamento
        case "pagamento":
            table = "pagamento";
            id = "id_pagamento";
            number = 6;
            break;
        //rata
        case "rata":
            table = "rata";
            id = "id_rata";
            number = 5;
            break;
        //specialista
        case "specialista":
            table = "specialista";
            id = "id";
            number = 6;
            break;
        //spese
        case "spese":
            table = "spese";
            id = "id_fascicolo";
            number = 4;
            break;
        //stato
        case "stato":
            table = "stato";
            id = "id";
            number = 2;
            break;
        //ufficio
        case "ufficio":
            table = "ufficio";
            id = "id";
            number = 2;
            break;
    }
    return { tab: table, tab_id: id, nCol: number };
}

function Get_URL(page, url) {
    if (page != "home-page") {
        let prefx = '../'
        return prefx + url;
    }
    else
        return url;

}