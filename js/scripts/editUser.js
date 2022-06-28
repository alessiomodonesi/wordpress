var $ = jQuery;
$(document).on('click', '.editbtn ', function (event) {
    let page = $('#title').val();
    console.log("Questa è la pagina, scemoo: " + page);
    let url = Get_URL(page, 'wp-content/themes/my-theme-2.0/php/get_single_data.php');

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
            switch (page) {
                //wp_cliente
                case "cliente":
                    $('#NomeField').val(json.nome);
                    $('#CognomeField').val(json.cognome);
                    $('#DataField').val(json.data_nascita);
                    $('#IndirizzoField').val(json.indirizzo);
                    $('#TelefonoField').val(json.numero_telefono);
                    $('#MailField').val(json.mail);
                    $('#UfficioField').val(json.ufficio_usa);
                    $('#CasoField').val(json.caso);
                    $('#ApplicantField').val(json.id_applicant);
                    break;
        
                //wp_cliente_specialista
                case "cliente-specialista":
                    $('#SpecialistaField').val(json.id_specialista);
                    $('#NumeroField').val(json.numero_specialista);
                    break;
        
                //wp_documenti_caso
                case "documenti-caso":
                    $('#DocumentoField').val(json.documento);
                    break;
        
                //wp_metodo_pagamento
                case "metodo-pagamento":
                    $('#NomeField').val(json.nome);
                    break;
        
                //wp_pagamento
                case "pagamento":
                    $('#ClienteField').val(json.id_cliente);
                    $('#TotaleField').val(json.totale);
                    $('#TotaleVeroField').val(json.totale_vero);
                    break;
        
                //wp_rata
                case "rata":
                    $('#PagamentoField').val(json.id_pagamento);
                    $('#SommaField').val(json.somma);
                    $('#DataPagamentoField').val(json.data_pagamento);
                    $('#TipoPagamentoField').val(json.tipo_pagamento);
                    break;
        
                //wp_specialista
                case "specialista":
                    $('#NomeField').val(json.nome);
                    $('#CognomeField').val(json.cognome);
                    $('#DataNascitaField').val(json.data_nascita);
                    $('#MailField').val(json.mail);
                    $('#TelefonoField').val(json.numero_telefono);
                    break;
        
                //wp_tipo_caso
                case "tipo-caso":
                    $('#NomeField').val(json.nome_caso);
                    break;
            }
        }
    })
});