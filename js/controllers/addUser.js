var $ = jQuery;
$(document).on('submit', '#addUser', function (e) {
    e.preventDefault();
    let page = $('#title').val();
    let url = Get_URL(page, 'wp-content/themes/my-theme/php/add_user.php');

    var dataValue = Ottieni_Array(page, true);//va a prendere i valori aggiunti dall'utente
    let pageData = Get_Table(page);//prende le informazioni base sulla tabella
    let dataNames = Ottieni_Array(page, false);//va a prendere i nomi delle colonne del database

    //da aggiungere un controllo
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

/*Questa funzione ritorna o l'insieme dei valori dei campi inseriti dall'utente a mano 
o il nome dei campi delle colonne del database in base alla tabella*/
function Ottieni_Array(page, getValue) {
    switch (page) {
        //caso
        case "caso":
            if (getValue)
                return Get_Value_Add(fields.caso);
            return Get_Names(fields.caso);
        //cliente
        case "cliente":
            if (getValue)
                return Get_Value_Add(fields.cliente);
            return Get_Names(fields.cliente);
        //fascicolo
        case "fascicolo":
            if (getValue)
                return Get_Value_Add(fields.fascicolo);
            return Get_Names(fields.fascicolo);
        //fascicolo-cliente
        case "fascicolo-cliente":
            if (getValue)
                return Get_Value_Add(fields.fascicolo_c);
            return Get_Names(fields.fascicolo_c);
        //fascicolo-specialista
        case "fascicolo-specialista":
            if (getValue)
                return Get_Value_Add(fields.fascicolo_s);
            return Get_Names(fields.fascicolo_s);
        //metodo_pagamento
        case "metodo-pagamento":
            if (getValue)
                return Get_Value_Add(fields.metodo_p);
            return Get_Names(fields.metodo_p);
        //pagamento
        case "pagamento":
            if (getValue)
                return Get_Value_Add(fields.pagamento);
            return Get_Names(fields.pagamento);
        //rata
        case "rata":
            if (getValue)
                return Get_Value_Add(fields.rata);
            return Get_Names(fields.rata);
        //specialista
        case "specialista":
            if (getValue)
                return Get_Value_Add(fields.specialista);
            return Get_Names(fields.specialista);
        //spese
        case "spese":
            if (getValue)
                return Get_Value_Add(fields.spese);
            return Get_Names(fields.spese);
        //stato
        case "stato":
            if (getValue)
                return Get_Value_Add(fields.stato);
            return Get_Names(fields.stato);
        //ufficio
        case "ufficio":
            if (getValue)
                return Get_Value_Add(fields.ufficio);
            return Get_Names(fields.ufficio);
    }
}
/*Questa funzione ti ritorna un array con tutti i valori degli input(i campi aggiunti dall'utente)
che sono stati introdotti dall'utente*/
function Get_Value_Add(arr) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " nome id variabile: " + arr[i].idAdd);
        tmp.push($("#" + arr[i].idAdd).val());
        //console.log("riga n " + i + " valore form: " + $("#" + arr[i].idAdd).val());
    }
    return tmp;
}