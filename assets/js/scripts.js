var $ = jQuery;
var editor; // use a global for the submit and return data rendering in the examples

$(document).ready(function () {

    var path = document.location.pathname;
    var directory = path.substring(path.indexOf('/'), path.lastIndexOf('/'));
    console.log();

    editor = new $.fn.dataTable.Editor({
        ajax: "../wp-content/themes/my-theme/assets/data_tables/Editor-PHP-2.0.8/controllers/controllerdb.php",
        table: "#table",
        idSrc: 'id',
        fields: [
            { label: 'ID', name: 'id' },
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

    var table = $('#table').DataTable({
        ajax: {
            url: "../wp-content/themes/my-theme/assets/data_tables/Editor-PHP-2.0.8/controllers/controllerdb.php",
            type: "POST"
        },
        lengthChange: false,
        dom: 'Bfrtip',
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
        buttons: [
            { extend: "create", editor: editor },
            { extend: "edit", editor: editor },
            { extend: "remove", editor: editor },
            'print'
        ],
        select: true,
        "processing": true,
        columnDefs: [{
            "defaultContent": "-",
            "targets": "_all"
        }]
    });
    table.buttons().container()
        .appendTo($('.col-sm-6:eq(0)', table.table().container()));
    //console.clear();
});