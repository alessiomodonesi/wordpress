var $ = jQuery;
var dateRemoved;
$(document).on('click', '.editbtn ', function (event) {
    let page = $('#title').val();
    console.log("Questa è la pagina: " + page);
    let url = Get_URL(page, pathDBControllers + "get_single_data.php");
    let dataType = Get_Type(fields[page]);//prende i tipi di dati della tabella

    var table = $('#table').DataTable();
    var trid = $(this).closest('tr').attr('id');
    var id = $(this).data('id');
    let editData = Get_Table(page);
    $('#editUserModal').modal('show');
    $.ajax({
        url: url,
        type: 'post',
        data: {
            tab: editData.tab,
            tab_id: editData.tab_id,
            val_id: id
        },
        success: function (data) {
            var json = JSON.parse(data);
            $('#id').val(id);
            $('#trid').val(trid);
            //riempe i campi con i dati del database
            Get_Fields_ID(json, fields[page], dataType);
        }
    })
});

//permette di dare il valore ad ogni input, in maniera corretta indipendentemente dalla pagina
function Get_Fields_ID(json, arr, types) {
    for (let i = 0; i < arr.length; i++) {
        let val = json[arr[i].varName];
        if (arr[i].idUpdate == "DateTimeRecordUpdateField") {
            val = Remove_Date(val);
        }
        if (arr[i].idUpdate == "DateTimeRecordInsertField") {
            Save_Previous_Date(val);
            val = Remove_Date(val);
        }
        console.log("Questo è il valore: " + val);
        if (types[i] != "checkbox")
            $('#' + arr[i].idUpdate).val(val);
        else {
            if (val == "1")
                $('#' + arr[i].idUpdate).prop('checked', true);
            else
                $('#' + arr[i].idUpdate).prop('checked', false);
        }
    }
}

function Remove_Date(time) {
    let editedTime = time;
    for (let i = 0; i < 9; i++) {
        editedTime = editedTime.slice(0, -1);
    }
    return editedTime;
}

function Save_Previous_Date(time) {
    dateRemoved = time.substring(11);
}