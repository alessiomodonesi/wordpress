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
            switch (page) {
                //acconto
                case "acconto":
                    $('#RataFiled').val(json.id_rata);
                    $('#SommaFiled').val(json.somma);
                    $('#DataPagamentoField').val(json.data_pagamento);
                    $('#MetodoPagamentoField').val(json.metodo_pagamento);
                    break;
                //caso
                case "caso":
                    $('#NomeField').val(json.nome);
                    break;
                //fascicolo
                case "fascicolo":
                    $('#DataAperturaField').val(json.data_apertura);
                    $('#DataChiusuraField').val(json.data_chiusura);
                    $('#StatoField').val(json.stato);
                    $('#UfficioField').val(json.id_ufficio);
                    $('#ReferenteField').val(json.referente);
                    $('#CasoField').val(json.caso);
                    $('#NoteField').val(json.note);
                    $('#LinkField').val(json.link);
                    break;
                //fascicolo-specialista
                case "fascicolo-specialista":
                    $('#FascicoloField').val(json.id_fascicolo);
                    $('#SpecialistaField').val(json.id_specialista);
                    $('#NumeroSpecialistaField').val(json.numero_specialista);
                    $('#AccettatoField').val(json.accettato);
                    break;
                //gestito
                case "gestito":
                    $('#NomeField').val(json.nome);
                    $('#CognomeField').val(json.cognome);
                    $('#DataField').val(json.data_nascita);
                    $('#IndirizzoField').val(json.indirizzo);
                    $('#TelefonoField').val(json.numero_telefono);
                    $('#MailField').val(json.mail);
                    $('#FascicoloField').val(json.id_fascicolo);
                    break;
                //metodo_pagamento
                case "metodo-pagamento":
                    $('#NomeField').val(json.nome);
                    break;
                //pagamento
                case "pagamento":
                    $('#FascicoloField').val(json.id_fascicolo);
                    $('#CreazioneField').val(json.creazione);
                    $('#TotaleField').val(json.totale);
                    $('#TotaleVeroField').val(json.totale_vero);
                    $('#AccettatoField').val(json.accettato);
                    break;
                //rata
                case "rata":
                    $('#PagamentoField').val(json.id_pagamento);
                    $('#SommaField').val(json.somma);
                    $('#DataPagamentoField').val(json.data_pagamento);
                    $('#TipoPagamentoField').val(json.tipo_pagamento);
                    break;
                //referente
                case "referente":
                    $('#NomeField').val(json.nome);
                    $('#CognomeField').val(json.cognome);
                    $('#DataField').val(json.data_nascita);
                    $('#IndirizzoField').val(json.indirizzo);
                    $('#TelefonoField').val(json.numero_telefono);
                    $('#MailFIeld').val(json.mail);
                    break;
                //specialista
                case "specialista":
                    $('#NomeField').val(json.nome);
                    $('#CognomeField').val(json.cognome);
                    $('#DataNascitaField').val(json.data_nascita);
                    $('#TelefonoField').val(json.numero_telefono);
                    $('#MailField').val(json.mail);
                    break;
                //spese
                case "spese":
                    $('#FascicoloField').val(json.id_fascicolo);
                    $('#SommaField').val(json.somma);
                    $('#RimborsoField').val(json.rimborso);
                    $('#NoteField').val(json.note);
                    break;
                //stato
                case "stato":
                    $('#NomeField').val(json.nome);
                    break;
                //ufficio
                case "ufficio":
                    $('#NomeField').val(json.nome);
                    break;
            }    
        }
    })
});