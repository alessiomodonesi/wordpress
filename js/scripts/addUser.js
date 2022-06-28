var $ = jQuery;
$(document).on('submit', '#addUser', function (e) {
    e.preventDefault();
    let page = $('#title').val();
    let url = Get_URL(page, 'wp-content/themes/my-theme-2.0/php/add_user.php');

    var dataValue = Ottieni_Array(page, true);
    let pageData = Get_Table(page);
    let dataNames = Ottieni_Array(page, false);

    if (true) {
        $.ajax({
            url: url, 
            type: "post",
            data: {
                arr_value: dataValue,
                arr_name: dataNames,
                tabella: pageData.tab,
            },
            success: function (data) {
                var json = JSON.parse(data);
                var status = json.status;
                if (status == 'true') {
                    mytable = $('#table').DataTable();
                    mytable.draw();
                    $('#addUserModal').modal('hide');
                } else {
                    alert('ERROR: impossibile aggiungere la riga');
                }
            }
        });
    } else {
        alert('WARNING: compila tutti i campi richiesti');
    }
});

function Ottieni_Array(page, getValue) {
    switch (page) {
        //wp_cliente
        case "cliente":
            if (getValue)
                return Get_Value_Add(fields.cliente);
            return Get_Names(fields.cliente);
        //wp_cliente_specialista
        case "cliente-specialista":
            if (getValue)
                return Get_Value_Add(fields.cliente_s);
            return Get_Names(fields.cliente_s);
        //wp_documenti_caso
        case "documenti-caso":
            if (getValue)
                return Get_Value_Add(fields.documenti_c);
            return Get_Names(fields.documenti_c);
        //wp_metodo_pagamento
        case "metodo-pagamento":
            if (getValue)
                return Get_Value_Add(fields.metodo_p);
            return Get_Names(fields.metodo_p);
        //wp_pagamento
        case "pagamento":
            if (getValue)
                return Get_Value_Add(fields.pagamento);
            return Get_Names(fields.pagamento);
        //wp_rata
        case "rata":
            if (getValue)
                return Get_Value_Add(fields.rata);
            return Get_Names(fields.rata);
        //wp_specialista
        case "specialista":
            if (getValue)
                return Get_Value_Add(fields.specialista);
            return Get_Names(fields.specialista);
        //wp_tipo_caso
        case "tipo-caso":
            if (getValue)
                return Get_Value_Add(fields.tipo_c);
            return Get_Names(fields.tipo_c);
    }
}
function Get_Value_Add(arr) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " nome id variabile: " + arr[i].idUpdate);
        tmp.push($("#" + arr[i].idUpdate).val());
        //console.log("riga n " + i + " valore form: " + $("#" + arr[i].idUpdate).val());
    }
    return tmp;
}