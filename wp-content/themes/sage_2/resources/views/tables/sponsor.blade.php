<link rel="stylesheet" type="text/css"
      href="https://cdn.datatables.net/v/bs4/jq-3.3.1/jszip-2.5.0/dt-1.10.23/af-2.3.5/b-1.6.5/b-colvis-1.6.5/b-html5-1.6.5/b-print-1.6.5/cr-1.5.3/fc-3.3.2/fh-3.1.7/kt-2.5.3/r-2.2.7/rg-1.1.2/rr-1.2.7/sc-2.0.3/datatables.min.css"/>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jq-3.3.1/jszip-2.5.0/dt-1.10.23/af-2.3.5/b-1.6.5/b-colvis-1.6.5/b-html5-1.6.5/b-print-1.6.5/cr-1.5.3/fc-3.3.2/fh-3.1.7/kt-2.5.3/r-2.2.7/rg-1.1.2/rr-1.2.7/sc-2.0.3/datatables.min.js"></script>

<div class="container-fluid pb-3">
  <div class="row mt-4">
    <div class="col-12 pt-3 pb-3">
      <table id="sponsor" class="table table-striped table-bordered" style="width:100%">
        <thead>
        <tr>
          <th>Id</th>
          <th>Nome</th>



        </tr>
        </thead>
        <tbody>
        @php
          global $wpdb;
          $result = $wpdb->get_results('SELECT `id`,`nome` FROM SPONSOR');

        @endphp
        @foreach($result as $row)
          <tr>
            <td>{!! $row->id !!}</td>
            <td>{!! $row->nome !!}</td>
          </tr>
        @endforeach
        <tfoot>
        <tr>
          <th>Id</th>
          <th>Nome</th>
        </tr>
        </tfoot>
      </table>

    </div>
  </div>
</div>


<script>
  jQuery(document).ready(function ($) {


    $('#sponsor').DataTable({
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

      keys: true,
      fixedHeader: true,
      fixedColumns: true,
      colReorder: true,
      dom: 'Bfrtip',
      buttons: [
        'copyHtml5',
        'excelHtml5',
        'csvHtml5',
        'pdfHtml5'
      ]
    });
  });

</script>
