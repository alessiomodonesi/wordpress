var $ = jQuery;
$(document).on('click', '.deleteBtn', function (event) {
    var table = $('#table').DataTable();//va a prendere la tabella
    event.preventDefault();
    let page = $('#title').val();
    let url = Get_URL(page, 'wp-content/themes/sage/app/Controllers/delete_user.php');
    var id = $(this).data('id');//va a prendere l'id del bottone elimina
    let deleteData = Get_Table(page);//va a prendere nome e id della tabella in base alla pagina in cui i si trova

    if (confirm("L'azione richiesta è irreversibile, continuare?")) {
        $.ajax({
            url: url,
            type: "post",
            data: {
                tab: deleteData.tab,
                tab_id: deleteData.tab_id,
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