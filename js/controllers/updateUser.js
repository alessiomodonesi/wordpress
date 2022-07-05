var $ = jQuery;
$(document).on('submit', '#updateUser', function (e) {
    e.preventDefault();
    let page = $('#title').val();
    let id_valore = $('#id').val();
    //console.log("Questo è l'id: " + id_valore);

    var dataValue = Setup_Array(page, true);
    let url = Get_URL(page, 'wp-content/themes/my-theme/php/update_user.php');
    let pageData = Get_Table(page);
    let dataNames = Setup_Array(page, false);

    var trid = $('#trid').val();
    //console.log("Questo è il trid: " + trid);

    //da aggiungere un controllo decente
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
                    table = $('#table').DataTable();//crea una nuova tabella
                    //crea i bottoni per modificare il singolo record
                    var button = '<td><a href="#!" data-id="' + id_valore + '" class="btn btn-outline-primary btn-sm editbtn">Modifica</a> <a href="#!" data-id="' + id_valore + '"class="btn btn-outline-danger btn-sm deleteBtn">Elimina</a></td>';
                    //crea la riga della tabella
                    var row = table.row("[id='" + trid + "']");
                    dataValue.push(button); dataValue.unshift(id_valore);

                    console.log("Questa è la riga di visualizzazione: ");
                    console.log(dataValue);
                    //aggiunge la riga alla tabella
                    row.row("[id='" + trid + "']").data(dataValue);
                    //nasconde il modal
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

/*Questa funzione ritorna o l'insieme di dati modificati dall'utente tramite input 
o il nome delle varie colonne del database in base alla tabella */
function Setup_Array(page, getValue) {
    switch (page) {
        //acconto
        case "acconto":
            if (getValue)
                return Get_Array(fields.acconto);
            return Get_Names(fields.acconto);
        //allegati
        case "allegati":
            if (getValue)
                return Get_Array(fields.allegati);
            return Get_Names(fields.allegati);
        //appuntamenti
        case "appuntamenti":
            if (getValue)
                return Get_Array(fields.appuntamenti);
            return Get_Names(fields.appuntamenti);
        //caso
        case "caso":
            if (getValue)
                return Get_Array(fields.caso);
            return Get_Names(fields.caso);
        //chiamata
        case "chiamata":
            if (getValue)
                return Get_Array(fields.chiamata);
            return Get_Names(fields.chiamata);
        //fascicolo
        case "fascicolo":
            if (getValue)
                return Get_Array(fields.fascicolo);
            return Get_Names(fields.fascicolo);
        //fascicolo-specialista
        case "fascicolo_s":
            if (getValue)
                return Get_Array(fields.fascicolo_s);
            return Get_Names(fields.fascicolo_s);
        //gestito
        case "gestito":
            if (getValue)
                return Get_Array(fields.gestito);
            return Get_Names(fields.gestito);
        //metodo_pagamento
        case "metodo_p":
            if (getValue)
                return Get_Array(fields.metodo_p);
            return Get_Names(fields.metodo_p);
        //pagamento
        case "pagamento":
            if (getValue)
                return Get_Array(fields.pagamento);
            return Get_Names(fields.pagamento);
        //prospective
        case "prospective":
            if (getValue)
                return Get_Array(fields.prospective);
            return Get_Names(fields.prospective);
        //rata
        case "rata":
            if (getValue)
                return Get_Array(fields.rata);
            return Get_Names(fields.rata);
        //referente
        case "referente":
            if (getValue)
                return Get_Array(fields.referente);
            return Get_Names(fields.referente);
        //specialista
        case "specialista":
            if (getValue)
                return Get_Array(fields.specialista);
            return Get_Names(fields.specialista);
        //spese
        case "spese":
            if (getValue)
                return Get_Array(fields.spese);
            return Get_Names(fields.spese);
        //sponsor
        case "sponsor":
            if (getValue)
                return Get_Array(fields.sponsor);
            return Get_Names(fields.sponsor);
        //stato
        case "stato":
            if (getValue)
                return Get_Array(fields.stato);
            return Get_Names(fields.stato);
        //ufficio
        case "ufficio":
            if (getValue)
                return Get_Array(fields.ufficio);
            return Get_Names(fields.ufficio);
    }
}
//Questa funzione ritorna l'insieme dei valori cambiati dall'utente a mano tramite input
function Get_Array(arr) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " nome id variabile: " + arr[i].idUpdate);
        tmp.push($('#' + arr[i].idUpdate).val());
    }
    return tmp;
}
/*Questa funzione ritorna il nome dei vari campi delle colonne del database */
function Get_Names(arr) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " nome variabile: " + arr[i].varName);
        tmp.push(arr[i].varName);
    }
    return tmp;
}