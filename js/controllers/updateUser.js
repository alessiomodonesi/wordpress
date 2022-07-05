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
                    var button = '<td><a href="#!" data-id="' + id_valore + '" class="btn btn-outline-primary btn-sm editbtn" style="margin-bottom: 5px; width: 75px;">Modifica</a> <a href="#!" data-id="' + id_valore + '"class="btn btn-outline-danger btn-sm deleteBtn" style="margin-bottom: 5px; width: 75px;">Elimina</a></td>';
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
    let dataType = Get_Type(fields[page]);//prende i tipi di dati della tabella
    if (getValue)
        return Get_Array(fields[page], dataType);
    return Get_Names(fields[page]);
}
//Questa funzione ritorna l'insieme dei valori cambiati dall'utente a mano tramite input
function Get_Array(arr, types) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " nome id variabile: " + arr[i].idUpdate);
        let valore = $('#' + arr[i].idUpdate).val();
        if (arr[i].idUpdate == "DateTimeRecordUpdateField") {
            valore += Get_Current_Date();
        }
        if (arr[i].idUpdate == "DateTimeRecordInsertField") {
            valore += " " + dateRemoved;
        }
        tmp.push(valore);
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

function Get_Current_Date() {
    let current = new Date();
    let orario = current.toLocaleTimeString().replace(' PM', '');
    orario = current.toLocaleTimeString().replace(' AM', '');
    return " " + orario;
}