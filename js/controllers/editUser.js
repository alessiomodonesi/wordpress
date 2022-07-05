var $ = jQuery;
$(document).on('click', '.editbtn ', function (event) {
    let page = $('#title').val();
    console.log("Questa è la pagina: " + page);
    let url = Get_URL(page, 'wp-content/themes/my-theme/php/get_single_data.php');

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
            Get_Fields_ID(json, fields[page]);
        }
    })
});

//permette di dare il valore ad ogni input, in maniera corretta indipendentemente dalla pagina
function Get_Fields_ID(json, arr) {
    for (let i = 0; i < arr.length; i++) {
        let val = json[arr[i].varName];
        if (arr[i].idUpdate == "DateTimeRecordUpdateField" || arr[i].idUpdate == "DateTimeRecordInsertField") {
            val = Remove_Data(val);
        }
        console.log("Questo è il valore: " + val);
        $('#' + arr[i].idUpdate).val(val);
    }
}

function Remove_Data(time) {
    let editedTime = time;
    for (let i = 0; i < 9; i++) {
        editedTime = editedTime.slice(0, -1);
    }
    return editedTime;
}