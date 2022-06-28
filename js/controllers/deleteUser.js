var $ = jQuery;
$(document).on('click', '.deleteBtn', function (event) {
    var table = $('#table').DataTable();
    event.preventDefault();
    let page = $('#title').val();
    let url = Get_URL(page, 'wp-content/themes/my-theme/php/delete_user.php');
    var id = $(this).data('id');
    let deleteData = Get_Table(page);

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