var $ = jQuery;
$(document).ready(function () {
    BrowserDetect();
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

function BrowserDetect() {
    let userAgent = navigator.userAgent;
    let browserName;
    if (userAgent.match(/chrome|chromium|crios/i)) {
        browserName = "chrome";
    } else if (userAgent.match(/firefox|fxios/i)) {
        browserName = "firefox";
    } else if (userAgent.match(/safari/i)) {
        browserName = "safari";
    } else if (userAgent.match(/opr\//i)) {
        browserName = "opera";
    } else if (userAgent.match(/edg/i)) {
        browserName = "edge";
    } else {
        browserName = "No browser detection";
    }
    //console.log("Stai usando " + browserName);
    if (browserName != "chrome") {
        $('#pagina_chrome').hide();
        $('#header_chrome').hide();
    }
}

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