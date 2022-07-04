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
            switch (page) {
                //acconto
                case "acconto":
                    Get_Fields_ID(json, fields.acconto);
                    break;
                //allegati
                case "allegati":
                    Get_Fields_ID(json, fields.allegati);
                //caso
                case "caso":
                    Get_Fields_ID(json, fields.caso);
                    break;
                //fascicolo
                case "fascicolo":
                    Get_Fields_ID(json, fields.fascicolo);
                    break;
                //fascicolo-specialista
                case "fascicolo-specialista":
                    Get_Fields_ID(json, fields.fascicolo_s);
                    break;
                //gestito
                case "gestito":
                    Get_Fields_ID(json, fields.gestito);
                    break;
                //metodo_pagamento
                case "metodo-pagamento":
                    Get_Fields_ID(json, fields.metodo_p);
                    break;
                //pagamento
                case "pagamento":
                    Get_Fields_ID(json, fields.pagamento);
                    break;
                //prospective
                case "prospective":
                    Get_Fields_ID(json, fields.prospective);
                    break;
                //rata
                case "rata":
                    Get_Fields_ID(json, fields.rata);
                    break;
                //referente
                case "referente":
                    Get_Fields_ID(json, fields.referente);
                    break;
                //specialista
                case "specialista":
                    Get_Fields_ID(json, fields.specialista);
                    break;
                //spese
                case "spese":
                    Get_Fields_ID(json, fields.spese);
                    break;
                //sponsor
                case "sponsor":
                    Get_Fields_ID(json, fields.sponsor);
                    break;
                //stato
                case "stato":
                    Get_Fields_ID(json, fields.stato);
                    break;
                //ufficio
                case "ufficio":
                    Get_Fields_ID(json, fields.ufficio);
                    break;
            }
        }
    })
});

//permette di dare il valore ad ogni input, in maniera corretta indipendentemente dalla pagina
function Get_Fields_ID(json, arr) {
    for (let i = 0; i < arr.length; i++) {
        $('#' + arr[i].idUpdate).val(json[arr[i].varName]);
    }
}