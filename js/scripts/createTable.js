var $ = jQuery;
$(document).ready(function () {
    let page = $('#title').val();
    console.log("Questa è la pagina: " + page);
    let page_data = Get_Table(page);
    let url = Get_URL(page, 'wp-content/themes/my-theme/php/fetch_data.php');
    let dataNames = Setup_Array(page, false);

    $('#table').DataTable({
        "fnCreatedRow": function (nRow, aData, iDataIndex) {
            $(nRow).attr('id', aData[0]);
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
function Get_Table(page) {
    let table, id, number;
    switch (page) {
        //wp_cliente
        case "cliente":
            table = "wp_cliente";
            id = "id_cliente";
            number = 10;
            break;

        //wp_cliente_specialista
        case "cliente-specialista":
            table = "wp_cliente_specialista";
            id = "id_cliente";
            number = 3;
            break;

        //wp_documenti_caso
        case "documenti-caso":
            table = "wp_documenti_caso";
            id = "id_caso";
            number = 2;
            break;

        //wp_metodo_pagamento
        case "metodo-pagamento":
            table = "wp_metodo_pagamento";
            id = "id";
            number = 2;
            break;

        //wp_pagamento
        case "pagamento":
            table = "wp_pagamento";
            id = "id_pagamento";
            number = 4;
            break;

        //wp_rata
        case "rata":
            table = "wp_rata";
            id = "id_rata";
            number = 5;
            break;

        //wp_specialista
        case "specialista":
            table = "wp_specialista";
            id = "id_specialista";
            number = 6;
            break;

        //wp_tipo_caso
        case "tipo-caso":
            table = "wp_tipo_caso";
            id = "id_caso";
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