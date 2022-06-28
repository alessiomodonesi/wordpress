var $ = jQuery;
$(document).on('submit', '#updateUser', function (e) {
    e.preventDefault();
    let page = $('#title').val();
    let id_valore = $('#id').val();
    //console.log("Questo è l'id: " + id_valore);

    var dataValue = Setup_Array(page, true);
    let url = Get_URL(page, 'wp-content/themes/my-theme-2.0/php/update_user.php');
    let pageData = Get_Table(page);
    let dataNames = Setup_Array(page, false);

    var trid = $('#trid').val();
    //console.log("Questo è il trid: " + trid);

    if (trid != '') {
        $.ajax({
            url: url,
            type: "post",
            data: {
                arr_value: dataValue,
                arr_name: dataNames,
                tabella: pageData.tab,
                id_value: id_valore,
                id_name: pageData.tab_id,
            },
            success: function (data) {
                var json = JSON.parse(data);
                var status = json.status;
                if (status == 'true') {
                    table = $('#table').DataTable();
                    var button = '<td><a href="#!" data-id="' + id_valore + '" class="btn btn-outline-primary btn-sm editbtn">Modifica</a> <a href="#!" data-id="' + id_valore + '"class="btn btn-outline-danger btn-sm deleteBtn">Elimina</a></td>';
                    var row = table.row("[id='" + trid + "']");
                    dataValue.push(button); dataValue.unshift(id_valore);
                    console.log("Questa è la riga di visualizzazione: ");
                    console.log(dataValue);
                    row.row("[id='" + trid + "']").data(dataValue);
                    $('#editUserModal').modal('hide');
                } else {
                    alert('ERROR: impossibile modificare la riga');
                }
            }
        });
    } else {
        alert('WARNING: compila tutti i campi richiesti');
    }
});

function Setup_Array(page, getValue) {
    switch (page) {
        //wp_cliente
        case "cliente":
            if (getValue)
                return Get_Array(fields.cliente);
            return Get_Names(fields.cliente);
        //wp_cliente_specialista
        case "cliente-specialista":
            if (getValue)
                return Get_Array(fields.cliente_s);
            return Get_Names(fields.cliente_s);
        //wp_documenti_caso
        case "documenti-caso":
            if (getValue)
                return Get_Array(fields.documenti_c);
            return Get_Names(fields.documenti_c);
        //wp_metodo_pagamento
        case "metodo-pagamento":
            if (getValue)
                return Get_Array(fields.metodo_p);
            return Get_Names(fields.metodo_p);
        //wp_pagamento
        case "pagamento":
            if (getValue)
                return Get_Array(fields.pagamento);
            return Get_Names(fields.pagamento);
        //wp_rata
        case "rata":
            if (getValue)
                return Get_Array(fields.rata);
            return Get_Names(fields.rata);
        //wp_specialista
        case "specialista":
            if (getValue)
                return Get_Array(fields.specialista);
            return Get_Names(fields.specialista);
        //wp_tipo_caso
        case "tipo-caso":
            if (getValue)
                return Get_Array(fields.tipo_c);
            return Get_Names(fields.tipo_c);
    }
}
function Get_Array(arr) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " nome id variabile: " + arr[i].idEdit);
        tmp.push($('#' + arr[i].idEdit).val());
    }
    return tmp;
}
function Get_Names(arr) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " nome variabile: " + arr[i].varName);
        tmp.push(arr[i].varName);
    }
    return tmp;
}