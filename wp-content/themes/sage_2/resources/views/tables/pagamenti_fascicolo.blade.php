<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.3/css/select.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/datetime/1.0.3/css/dataTables.dateTime.min.css">
<link rel="stylesheet" type="text/css" href="../../../Editor-PHP/css/editor.bootstrap5.css">
<link rel="stylesheet" type="text/css" href="../../../Editor-PHP/examples/resources/syntax/shCore.css">
<link rel="stylesheet" type="text/css" href="../../../Editor-PHP/examples/resources/demo.css">
<style type="text/css" class="init">

</style>
<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.bootstrap4.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/datetime/1.0.3/js/dataTables.dateTime.min.js"></script>
<script type="text/javascript" language="javascript" src="../../../Editor-PHP/js/dataTables.editor.js"></script>
<script type="text/javascript" language="javascript" src="../../../Editor-PHP/js/editor.bootstrap5.js"></script>
<script type="text/javascript" language="javascript" src="../../../Editor-PHP/examples/resources/syntax/shCore.js"></script>
<script type="text/javascript" language="javascript" src="../../../Editor-PHP/examples/resources/demo.js"></script>
<script type="text/javascript" language="javascript" src="../../../Editor-PHP/examples/resources/editor-demo.js"></script>


<script type="text/javascript" language="javascript" class="init">



  var editor_4; // use a global for the submit and return data rendering in the examples
  jQuery(document).ready(function($){
    editor_4 = new $.fn.dataTable.Editor( {
      ajax:{url:"../../../Editor-PHP/controllers/pagamenti_fascicolo_edit.php",
        data:{id_fascicolo:{!! $id_fascicolo !!}}},
      table: "#pagamenti_fascicolo",
      fields: [
        {
          label: "totale in euro:",
          name: "totale_euro"
        },
        {label: "totale scontato in euro:",
          name: "totale_vero_euro"
        },
        {
          label: "totale in dollari:",
          name: "totale_dollari"
        },
        {label: "totale scontato in dollari:",
          name: "totale_vero_dollari"
        },
        {label: "note:",
          name: "note"
        }


      ]
    } );



    var table_4 = $('#pagamenti_fascicolo').DataTable( {
      language: {

        "infoFiltered": "(filtrati da _MAX_ elementi totali)",
        "infoThousands": ".",
        "loadingRecords": "Caricamento...",
        "processing": "Elaborazione...",
        "search": "Cerca:",
        "paginate": {
          "first": "Inizio",
          "previous": "Precedente",
          "next": "Successivo",
          "last": "Fine"
        },
        "aria": {
          "sortAscending": ": attiva per ordinare la colonna in ordine crescente",
          "sortDescending": ": attiva per ordinare la colonna in ordine decrescente"
        },
        "autoFill": {
          "cancel": "Annulla",
          "fill": "Riempi tutte le celle con <i>%d<\/i>",
          "fillHorizontal": "Riempi celle orizzontalmente",
          "fillVertical": "Riempi celle verticalmente",
          "info": "Informazioni"
        },
        "buttons": {
          "collection": "Collezione <span class=\"ui-button-icon-primary ui-icon ui-icon-triangle-1-s\"><\/span>",
          "colvis": "Visibilità Colonna",
          "colvisRestore": "Ripristina visibilità",
          "copy": "Copia",
          "copyKeys": "Premi ctrl o u2318 + C per copiare i dati della tabella nella tua clipboard di sistema.<br \/><br \/>Per annullare, clicca questo messaggio o premi ESC.",
          "copySuccess": {
            "1": "Copiata 1 riga nella clipboard",
            "_": "Copiate %d righe nella clipboard"
          },
          "copyTitle": "Copia nella Clipboard",
          "csv": "CSV",
          "excel": "Excel",
          "pageLength": {
            "-1": "Mostra tutte le righe",
            "1": "Mostra 1 riga",
            "_": "Mostra %d righe"
          },
          "pdf": "PDF",
          "print": "Stampa"
        },
        "decimal": ",",
        "emptyTable": "Nessun dato disponibile nella tabella",
        "info": "Risultati da _START_ a _END_ di _TOTAL_ elementi",
        "infoEmpty": "Risultati da 0 a 0 di 0 elementi",
        "infoPostFix": "",
        "lengthMenu": "Mostra _MENU_ elementi",
        "searchBuilder": {
          "add": "Aggiungi Condizione",
          "button": {
            "0": "Generatore di Ricerca",
            "_": "Generatori di Ricerca (%d)"
          },
          "clearAll": "Pulisci Tutto",
          "condition": "Condizione",
          "conditions": {
            "date": {
              "after": "Dopo",
              "before": "Prima",
              "between": "Tra",
              "empty": "Vuoto",
              "equals": "Uguale A",
              "not": "Non",
              "notBetween": "Non Tra",
              "notEmpty": "Non Vuoto"
            },
            "number": {
              "between": "Tra",
              "empty": "Vuoto",
              "equals": "Uguale A",
              "gt": "Maggiore Di",
              "gte": "Maggiore O Uguale A",
              "lt": "Minore Di",
              "lte": "Minore O Uguale A",
              "not": "Non",
              "notBetween": "Non Tra",
              "notEmpty": "Non Vuoto"
            },
            "string": {
              "contains": "Contiene",
              "empty": "Vuoto",
              "endsWith": "Finisce Con",
              "equals": "Uguale A",
              "not": "Non",
              "notEmpty": "Non Vuoto",
              "startsWith": "Inizia Con"
            },
            "array": {
              "equals": "Uguale A",
              "empty": "Vuoto",
              "contains": "Contiene",
              "not": "Non",
              "notEmpty": "Non Vuoto",
              "without": "Senza"
            }
          },
          "data": "Dati",
          "deleteTitle": "Elimina regola filtro",
          "leftTitle": "Criterio di Riduzione Rientro",
          "logicAnd": "E",
          "logicOr": "O",
          "rightTitle": "Criterio di Aumento Rientro",
          "title": {
            "0": "Generatore di Ricerca",
            "_": "Generatori di Ricerca (%d)"
          },
          "value": "Valore"
        },
        "searchPanes": {
          "clearMessage": "Pulisci Tutto",
          "collapse": {
            "0": "Pannello di Ricerca",
            "_": "Pannelli di Ricerca (%d)"
          },
          "count": "{total}",
          "countFiltered": "{shown} ({total})",
          "emptyPanes": "Nessun Pannello di Ricerca",
          "loadMessage": "Caricamento Pannello di Ricerca",
          "title": "Filtri Attivi - %d"
        },
        "select": {
          "1": "%d riga selezionata",
          "_": "%d righe selezionate",
          "cells": {
            "1": "1 cella selezionata",
            "_": "%d celle selezionate"
          },
          "columns": {
            "1": "1 colonna selezionata",
            "_": "%d colonne selezionate"
          },
          "rows": {
            "1": "1 riga selezionata",
            "_": "%d righe selezionate",
            "0": "%d righe selezionate"
          },
          "0": "Nessuna riga selezionata",
          "2": "%d righe selezionate"
        },
        "zeroRecords": "Nessun elemento corrispondente trovato",
        "datetime": {
          "amPm": [
            "am",
            "pm"
          ],
          "hours": "ore",
          "minutes": "minuti",
          "next": "successivo",
          "previous": "precedente",
          "seconds": "secondi",
          "unknown": "sconosciuto"
        },
        "editor": {
          "close": "Chiudi",
          "create": {
            "button": "Nuovo",
            "submit": "Aggiungi",
            "title": "Aggiungi nuovo elemento"
          },
          "edit": {
            "button": "Modifica",
            "submit": "Modifica",
            "title": "Modifica elemento"
          },
          "error": {
            "system": "Errore del sistema."
          },
          "multi": {
            "info": "Gli elementi selezionati contengono valori diversi. Per modificare e impostare tutti gli elementi per questa selezione allo stesso valore, premi o clicca qui, altrimenti ogni cella manterrà il suo valore attuale.",
            "noMulti": "Questa selezione può essere modificata individualmente, ma non se fa parte di un gruppo.",
            "restore": "Annulla le modifiche",
            "title": "Valori multipli"
          },
          "remove": {
            "button": "Rimuovi",
            "confirm": {
              "_": "Sei sicuro di voler cancellare %d righe?",
              "1": "Sei sicuro di voler cancellare 1 riga?"
            },
            "submit": "Rimuovi",
            "title": "Rimuovi"
          }
        },
        "searchPlaceholder": "Inserisci un valore",
        "thousands": "."

      },
      "scrollX": true,
      lengthChange: false,
      ajax: {url:"../../../Editor-PHP/controllers/pagamenti_fascicolo.php",
        data:{id_fascicolo:{!! $id_fascicolo !!},
      }},
      columns: [

        {
          data:"id_pagamento",
          render: function ( data, type, row ) {
            return '<a href="/single_pagamento?id='+data+'">'+data+'</a>';

          }},
        {
          data: "creazione"

          },
        {
          data: "totale_euro"
        },
        {
          data: "totale_vero_euro"
        },
        {
          data: "totale_dollari"
        },
        {
          data: "totale_vero_dollari"
        },
        {
          data: "log_utente"
        },
        {
          data: "log_azione"
        },
        {
          data: "date_time_record_insert"
        },
        {
          data: "date_time_record_update"
        },
        {
          data: "note"
        },
        /*{
          data: "obbligo_gdpr",
          "render": function (val, type, row) {
            return val == 0 ? "NO" : "SI";
        }}*/


      ],
      select: true
    } );

    // Display the buttons
    new $.fn.dataTable.Buttons( table_4, [
      { extend: "create", editor: editor_4 },
      { extend: "edit", editor: editor_4 }
    ] );

    table_4.buttons().container()
      .appendTo( $('.col-md-6:eq(0)', table_4.table().container() ) );
  } );



</script>


<div class="container-fluid">
  <section>

    <div class="demo-html">
      <table id="pagamenti_fascicolo" class="table table-striped table-bordered" style="width:100%">
        <thead>
        <tr>
          <th>ID pagamento</th>
          <th>Creazione</th>
          <th>Totale in euro</th>
          <th>Totale vero in euro</th>
          <th>Totale in dollari</th>
          <th>Totale vero in dollari</th>
          <th>Log utente</th>
          <th>Log azione</th>
          <th>Data inserimento</th>
          <th>Data modifica</th>
          <th>Note</th>
        </tr>
        </thead>

        <tfoot>
        <tr>
          <th>ID pagamento</th>
          <th>Creazione</th>
          <th>Totale in euro</th>
          <th>Totale vero in euro</th>
          <th>Totale in dollari</th>
          <th>Totale vero in dollari</th>
          <th>Log utente</th>
          <th>Log azione</th>
          <th>Data inserimento</th>
          <th>Data modifica</th>
          <th>Note</th>
        </tr>
        </tfoot>
      </table>
    </div>

  </section>

</div>





