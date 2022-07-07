var $ = jQuery;
$(document).on('submit', '#updateUser', function (e) {
    e.preventDefault();
    let page = $('#title').val();
    let id_valore = $('#id').val();
    //console.log("Questo è l'id: " + id_valore);

    var dataValue = Setup_Array(page, true);
    let url = Get_URL(page, 'wp-content/themes/sage/app/Controllers/update_user.php');
    let pageData = Get_Table(page);
    let dataNames = Setup_Array(page, false);
    let dataType = Get_Type(fields[page]);//prende i tipi di dati della tabella

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
                arr_type: dataType
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
                    dataValue.push(button);

                    page = page.toLowerCase();
                    if (page != "spese" && page != "fascicolo_s") {
                        dataValue.unshift(id_valore);
                    }

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
    if (getValue)
        return Get_Array(fields[page]);
    return Get_Names(fields[page]);
}
//Questa funzione ritorna l'insieme dei valori cambiati dall'utente a mano tramite input
function Get_Array(arr) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " nome id variabile: " + arr[i].idUpdate);
        let valore = $('#' + arr[i].idUpdate).val();
        if (arr[i].type == "checkbox") {
            if ($("#" + arr[i].idUpdate).is(":checked"))
                valore = 1;
            else
                valore = 0;
        }
        if (arr[i].varName == "somma" || arr[i].varName == "totale" || arr[i].varName == "totale_vero" || arr[i].varName == "perc_sponsor") {
            valore = Format_Decimal(valore); //formatta la cifra
        }
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

function Format_Decimal(numero) {
    const stringLength = numero.length;
    let virgolaDecimale = numero.charAt(stringLength - 3);//divisorio per i centesimi
    if (virgolaDecimale == "." || virgolaDecimale == ",") {
        let lastN = numero.charAt(stringLength - 1);//ultimo numero
        let penLastN = numero.charAt(stringLength - 2);//penultimo numero
        for (let i = 0; i < 3; i++) {//toglie la virgola e le ultime due cifre
            numero = numero.slice(0, -1);
        }
        numero += "." + penLastN + lastN;
        console.log("cifra formattata: " + numero);
        return numero;
    }
    numero += ".00";
    return numero;
}