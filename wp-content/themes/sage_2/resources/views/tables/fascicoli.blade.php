<link rel="stylesheet" type="text/css"
      href="https://cdn.datatables.net/v/bs4/jq-3.3.1/jszip-2.5.0/dt-1.10.23/af-2.3.5/b-1.6.5/b-colvis-1.6.5/b-html5-1.6.5/b-print-1.6.5/cr-1.5.3/fc-3.3.2/fh-3.1.7/kt-2.5.3/r-2.2.7/rg-1.1.2/rr-1.2.7/sc-2.0.3/datatables.min.css"/>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jq-3.3.1/jszip-2.5.0/dt-1.10.23/af-2.3.5/b-1.6.5/b-colvis-1.6.5/b-html5-1.6.5/b-print-1.6.5/cr-1.5.3/fc-3.3.2/fh-3.1.7/kt-2.5.3/r-2.2.7/rg-1.1.2/rr-1.2.7/sc-2.0.3/datatables.min.js"></script>


<!--<script type="text/javascript" language="javascript" class="init">



  var editor; // use a global for the submit and return data rendering in the examples
  jQuery(document).ready(function($){
    editor = new $.fn.dataTable.Editor( {
      ajax: "../../../Editor-PHP/controllers/fascicoli.php",
      table: "#fascicoli",
      fields: [

      ]
    } );
    function get_sponsor(){
      $.ajax ( {
        url         : '../../../Editor-PHP/controllers/sponsor.php',

        dataType    : 'json',
        type        : 'post',
        success     : function ( jsonData ) {


          var tmp
          var options = jsonData.data.map( item => {
            console.log(item);
            return { value: item.id,label: item.nome  };
          } );
          console.log(options);
          editor.field('REFERENTE.sponsor').update(options);




        }
      });
    } ;

    var table = $('#fascicoli').DataTable( {
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
      ajax: "../../../Editor-PHP/controllers/fascicoli.php",
      columns: [

        { data: "id",
          "render": function ( data, type, row, meta ) {
            return '<a href="/single_fascicolo?id='+data+'">'+data+'</a>';}
        },
        {
          data: "nickname"
        },
        {
          data: "data_apertura"
        },
        {
          data: "data_chiusura"
        },
        {
          data: "stato_nome"
        },
        {
          data: "ufficio_nome"
        },
        {
          data: "persone_gestite"
        },
        {
          data: "referente_nome",
          render: function ( data, type, row ) {
            return row.referente_nome + ' ' + row.referente_middle_name + ' ' + row.referente_cognome;


          }},
        {
          data: "caso_nome"
        },
        {
          data: "link"
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
    new $.fn.dataTable.Buttons( table, [
      { extend: "create", editor: editor },
      { extend: "edit",   editor: editor },
      { extend: "remove", editor: editor }
    ] );

    table.buttons().container()
      .appendTo( $('.col-md-6:eq(0)', table.table().container() ) );
  } );



</script>-->


<div class="container-fluid">
  <section>

    <div class="demo-html">
      <table id="fascicoli" class="table table-striped table-bordered" style="width:100%">
        <thead>
        <tr>
          <th>Id</th>
          <th>Nickname</th>
          <th>Data apertura</th>
          <th>Data chiusura</th>
          <th>Stato</th>
          <th>Ufficio</th>
          <th>Persone gestite</th>
          <th>Referente</th>
          <th>Caso</th>
          <th>Link</th>
          <th>Log utente</th>
          <th>Log azione</th>
          <th>Data inserimento</th>
          <th>Data modifica</th>
          <th>Note</th>
        </tr>
        </thead>
        <tbody>
        @php
          global $wpdb;
          $result = $wpdb->get_results('Select FASCICOLO.ID as id, FASCICOLO.nickname as nickname, FASCICOLO.data_apertura as data_apertura,
          FASCICOLO.data_chiusura as data_chiusura,STATO.nome as stato, UFFICIO.nome as ufficio,FASCICOLO.persone_gestite as persone_gestite,
          REFERENTE.nome as nome_ref, REFERENTE.cognome as cognome_ref, REFERENTE.middle_name as middle_name_ref, CASO.nome as caso,
          FASCICOLO.link as link, FASCICOLO.log_utente as log_utente,FASCICOLO.log_azione as log_azione,
          FASCICOLO.date_time_record_insert as date_time_record_insert,FASCICOLO.date_time_record_update as date_time_record_update,FASCICOLO.note as note FROM FASCICOLO
          LEFT JOIN UFFICIO ON UFFICIO.ID=FASCICOLO.id_ufficio
           LEFT JOIN STATO ON STATO.id=FASCICOLO.stato
           LEFT JOIN REFERENTE ON REFERENTE.id=FASCICOLO.referente
           LEFT JOIN CASO ON CASO.id=FASCICOLO.caso');

        @endphp
        @foreach($result as $row)
          <tr>

            <td><a href="/single_fascicolo?id={!! $row->id!!}">{!! $row->id!!}</a> </td>
            <td>
              {!! $row->nickname !!}
            </td>
            <td>{!! $row->data_apertura!!}</td>
            <td>{!! $row->data_chiusura!!}</td>
            <td>{!! $row->stato!!}</td>
            <td>{!! $row->ufficio!!}</td>
            <td>{!! $row->persone_gestite!!}</td>
            <td>{!! $row->nome_ref!!} {!! $row->middle_name_ref!!} {!! $row->cognome_ref!!}</td>
            <td>{!! $row->caso!!}</td>
            <td>{!!$row->link!!}</td>
            <td>{!!$row->log_utente!!}</td>
            <td>{!! $row->log_azione!!}</td>
            <td>{!! $row->date_time_record_insert!!}</td>
            <td>{!! $row->date_time_record_update!!}</td>
            <td>{!! $row->note!!}</td>
          </tr>

          @endforeach
          </tbody>
        <tfoot>
        <tr>
          <th>Id</th>
          <th>Nickname</th>
          <th>Data apertura</th>
          <th>Data chiusura</th>
          <th>Stato</th>
          <th>Ufficio</th>
          <th>Persone gestite</th>
          <th>Referente</th>
          <th>Caso</th>
          <th>Link</th>
          <th>Log utente</th>
          <th>Log azione</th>
          <th>Data inserimento</th>
          <th>Data modifica</th>
          <th>Note</th>
        </tr>
        </tfoot>
      </table>
    </div>
    <script>
      jQuery(document).ready(function ($) {


        $('#fascicoli').DataTable({
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
  </section>

</div>





