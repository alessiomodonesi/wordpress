var $ = jQuery;
$(document).on('submit', '#addUser', function (e) {
    e.preventDefault();
    let page = $('#title').val();
    let url = Get_URL(page, pathDBControllers + "add_user.php");

    var dataValue = Ottieni_Array(page, true);//va a prendere i valori aggiunti dall'utente
    let pageData = Get_Table(page);//prende le informazioni base sulla tabella
    let dataNames = Ottieni_Array(page, false);//va a prendere i nomi delle colonne del database
    let dataType = Get_Type(fields[page]);//prende i tipi di dati della tabella

    console.log("dataValue:\n");
    console.log(dataValue);

    //da aggiungere un controllo
    if (true) {
        $.ajax({
            url: url,
            type: "post",
            data: {
                arr_value: dataValue,
                arr_name: dataNames,
                tabella: pageData.tab,
                arr_type: dataType,
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
    if (getValue)
        return Get_Value_Add(fields[page]);
    return Get_Names(fields[page]);
}

/*Questa funzione ti ritorna un array con tutti i valori degli input(i campi aggiunti dall'utente)
che sono stati introdotti dall'utente*/
function Get_Value_Add(arr) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " nome id variabile: " + arr[i].idAdd);
        if (arr[i].type == "checkbox") {
            if ($("#" + arr[i].idAdd).is(":checked"))
                tmp.push(1);
            else
                tmp.push(0);
        }
        else {
            let valore = $('#' + arr[i].idAdd).val();
            if (arr[i].idAdd == "addDateTimeRecordUpdateField" || arr[i].idAdd == "addDateTimeRecordInsertField") {
                valore += Get_Current_Date();
            }
            tmp.push(valore);
        }
        //console.log("riga n " + i + " valore form: " + $("#" + arr[i].idAdd).val());
    }
    return tmp;
}

function Get_Type(arr) {
    let tmp = [];
    for (let i = 0; i < arr.length; i++) {
        console.log("riga n " + i + " tipo variabile: " + arr[i].type);
        tmp.push(arr[i].type);
    }
    return tmp;
}
