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