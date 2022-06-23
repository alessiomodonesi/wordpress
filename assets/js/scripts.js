var $ = jQuery;
$(document).ready(function () {
    var path = document.location.pathname;
    var directory = path.substring(path.indexOf('/'), path.lastIndexOf('/'));
    console.log(directory);
    $('#table').DataTable({
        //ajax: '/xampp/htdocs/wordpress/wp-content/themes/my-theme/assets/data_tables/Editor-PHP-2.0.8/controllers/staff',
        //ajax: '/wordpress/wp-content/themes/my-theme/assets/Editor-PHP-2.0.8/controllers/staff.php',
        dom: 'lBfrtip',
        columns: [
            { data: 'ID' },
            { data: 'Nome' },
            { data: 'Cognome' },
            { data: 'Data di nascita' },
            { data: 'Indirizzo' },
            { data: 'Telefono' },
            { data: 'Email' },
            { data: 'Ufficio' },
            { data: 'Caso' },
            { data: 'Applicant' }
        ],
        select: true,
        buttons: [
            { extend: 'create', editor: editor },
            { extend: 'edit', editor: editor },
            { extend: 'remove', editor: editor }
        ]
    });
    var editor = new $.fn.dataTable.Editor({
        //ajax: '/xampp/htdocs/wordpress/wp-content/themes/my-theme/assets/data_tables/Editor-PHP-2.0.8/controllers/staff',
        //ajax: '/wordpress/wp-content/themes/my-theme/assets/Editor-PHP-2.0.8/controllers/staff.php',
        table: '#table',
        fields: [
            { label: 'ID', name: 'id_cliente' },
            { label: 'Nome', name: 'nome' },
            { label: 'Cognome', name: 'cognome' },
            { label: 'Data di nascita', name: 'data_nascita' },
            { label: 'Indirizzo', name: 'indirizzo' },
            { label: 'Telefono', name: 'numero_telefono' },
            { label: 'Email', name: 'mail' },
            { label: 'Ufficio', name: 'ufficio_usa' },
            { label: 'Caso', name: 'caso' },
            { label: 'Applicant', name: 'id_applicant' }
        ]
    });
});