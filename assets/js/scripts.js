var $ = jQuery;
var editor; // use a global for the submit and return data rendering in the examples

$(document).ready(function () {
    var path = document.location.pathname;
    var directory = path.substring(path.indexOf('/'), path.lastIndexOf('/'));
    console.log(directory);
    editor = new $.fn.dataTable.Editor({
        ajax: "../php/staff.php",
        //ajax: '../wp-content/themes/my-theme/assets/Editor-PHP-2.0.8/controllers/staff.php',
        table: "#table",
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

    var table = $('#table').DataTable({
        lengthChange: false,
        dom: 'lBfrtip',
        //ajax: "../php/staff.php",
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
    });

    // Display the buttons
    new $.fn.dataTable.Buttons(table, [
        { extend: "create", editor: editor },
        { extend: "edit", editor: editor },
        { extend: "remove", editor: editor },
    ]);

    table.buttons().container()
        .prependTo($('div.fg-toolbar:eq(0)', table.table().container()));
    console.clear();
});