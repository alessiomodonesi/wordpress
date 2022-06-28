var $ = jQuery;
$(document).on('click', '.deleteBtn', function (event) {
    var table = $('#table').DataTable();
    event.preventDefault();
    let page = $('#title').val();
    let url = Get_URL(page, 'wp-content/themes/my-theme-2.0/php/delete_user.php');
    var id = $(this).data('id');
    let deleteData = Get_Page(page);

    if (confirm("L'azione richiesta è irreversibile, continuare?")) {
        $.ajax({
            url: url,
            type: "post",
            data: {
                tab: deleteData.pagina,
                tab_id: deleteData.nome_id,
                id_daEliminare: id
            },
            success: function (data) {
                var json = JSON.parse(data);
                var status = json.status;
                if (status == 'success') {
                    $("#" + id).closest('tr').remove();
                } else {
                    alert('ERROR: impossibile eliminare la riga');
                    return;
                }
            }
        });
    } else {
        return null;
    }
});

function Get_Page(page){
    let table, id;
    switch (page) {
        //wp_cliente
        case "cliente":
            table = "wp_cliente";
            id = "id_cliente";
            break;

        //wp_cliente_specialista
        case "cliente-specialista":
            table = "wp_cliente_specialista";
            id = "id_cliente";
            //id = "id_specialista";
            break;

        //wp_documenti_caso
        case "documenti-caso":
            table = "wp_documenti_caso";
            id = "id_caso";
            break;

        //wp_metodo_pagamento
        case "metodo-pagamento":
            table = "wp_metodo_pagamento";
            id = "id";
            break;

        //wp_pagamento
        case "pagamento":
            table = "wp_pagamento";
            id = "id_pagamento";
            break;

        //wp_rata
        case "rata":
            table = "wp_rata";
            id = "id_rata";
            //id = "id_pagamento";
            //id = "tipo_pagamento";
            break;

        //wp_specialista
        case "specialista":
            table = "wp_specialista";
            id = "id_specialista";
            break;

        //wp_tipo_caso
        case "tipo-caso":
            table = "wp_tipo_caso";
            id = "id_caso";
            break;
    }
    return { pagina: table, nome_id: id };
}