var $ = jQuery;
$(document).ready(function () {
  let page = $("#title").val();
  console.log("Questa è la pagina: " + page);
  let page_data = Get_Table(page); //prende i dati principali della tabella in base alla pagina
  let url = Get_URL(page, "wp-content/themes/my-theme/php/fetch_data.php");
  let dataNames = Setup_Array(page, false); //va a prendere i nomi dei campi della tabella

  var table = $("#table").DataTable({
    //'dom': 'lBfrtip',
    fnCreatedRow: function (nRow, aData, iDataIndex) {
      $(nRow).attr("id", aData[0]);
      console.log("Numero di colonne secondo il db: " + aData.length);
    },
    scrollX: page_data.sX,
    serverSide: "true",
    responsive: "true",
    processing: "true",

    scrollY: "400px",
    scrollCollapse: "true",
    paging: false,

    order: [],
    ajax: {
      url: url,
      type: "post",
      data: {
        tabella: page_data.tab,
        id_tabella: page_data.tab_id,
        arr_name: dataNames,
      },
    },
    aoColumnDefs: [
      {
        bSortable: false,
        aTargets: [page_data.nCol],
      },
    ],
    /*'buttons': [
            'print', 'pdf', 'excel'
        ]*/
  });
});

//Funzione che restituisce i dati principali di una tabella in base alla pagina in cui ci si trova
function Get_Table(page) {
  let table, id, number, scrollX;
  switch (page) {
    //acconto
    case "acconto":
      table = "acconto";
      id = "id_acconto";
      number = 10;
      scrollX = false;
      break;
    //allegati
    case "allegati":
      table = "allegati";
      id = "id";
      number = 13;
      scrollX = false;
      break;
    //appuntamenti
    case "appuntamenti":
      table = "appuntamenti";
      id = "id";
      number = 6;
      scrollX = false;
      break;
    //caso
    case "caso":
      table = "caso";
      id = "id";
      number = 7;
      scrollX = false;
      break;
    //chiamata
    case "chiamata":
      table = "chiamata";
      id = "id";
      number = 2;
      scrollX = false;
      break;
    //fascicolo
    case "fascicolo":
      table = "fascicolo";
      id = "id";
      number = 15;
      break;
    //fascicolo-specialista
    case "fascicolo_s":
      table = "fascicolo_specialista";
      id = "id_fascicolo";
      number = 11;
      break;
    case "gestito":
      table = "gestito";
      id = "id";
      number = 15;
      break;
    //metodo_pagamento
    case "metodo_p":
      table = "metodo_pagamento";
      id = "id";
      number = 7;
      scrollX = false;
      break;
    //pagamento
    case "pagamento":
      table = "pagamento";
      id = "id_pagamento";
      number = 11;
      scrollX = false;
      break;
    //prospective
    case "prospective":
      table = "prospective";
      id = "id";
      number = 11;
      scrollX = false;
      break;
    //rata
    case "rata":
      table = "rata";
      id = "id_rata";
      number = 9;
      scrollX = false;
      break;
    case "referente":
      table = "referente";
      id = "id";
      number = 16;
      break;
    //specialista
    case "specialista":
      table = "specialista";
      id = "id";
      number = 14;
      break;
    //spese
    case "spese":
      table = "spese";
      id = "id_fascicolo";
      number = 8;
      scrollX = false;
      break;
    //sponsor
    case "sponsor":
      table = "sponsor";
      id = "id";
      number = 2;
      scrollX = false;
      break;
    //stato
    case "stato":
      table = "stato";
      id = "id";
      number = 7;
      scrollX = false;
      break;
    //ufficio
    case "ufficio":
      table = "ufficio";
      id = "id";
      number = 7;
      scrollX = false;
      break;
  }
  if (scrollX == undefined) scrollX = true;
  return { tab: table.toUpperCase(), tab_id: id, nCol: number, sX: scrollX };
}

function Get_URL(page, url) {
  if (page != "home-page") {
    let prefx = "../";
    return prefx + url;
  } else return url;
}
