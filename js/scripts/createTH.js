var $ = jQuery;
$(window).on("load", function () {
    //un po' di delay, perchè per non si sa quale arcano motivo, lo fa partire per primo seppur ci sia document on load .-.
    setTimeout(Create_Table_Index, 10);
});
function Create_Table_Index() {
    console.log("inizio creazione th");
    let page = $('#title').val();
    switch (page) {
        //wp_cliente
        case "cliente":
            createThElements(tHead.cliente);
            break;
        //wp_cliente_specialista
        case "cliente-specialista":
            createThElements(tHead.cliente_specialista);
            break;

        //wp_documenti_caso
        case "documenti-caso":
            createThElements(tHead.documenti_caso);
            break;

        //wp_metodo_pagamento
        case "metodo-pagamento":
            createThElements(tHead.metodo_pagamento);
            break;

        //wp_pagamento
        case "pagamento":
            createThElements(tHead.pagamento);
            break;

        //wp_rata
        case "rata":
            createThElements(tHead.rata);
            break;

        //wp_specialista
        case "specialista":
            createThElements(tHead.specialista);
            break;

        //wp_tipo_caso
        case "tipo-caso":
            createThElements(tHead.tipo_caso);
            break;
    }
};
const tHead = {
    "cliente": [
        "ID",
        "Nome",
        "Cognome",
        "Data di nascita",
        "Indirizzo",
        "Telefono",
        "Email",
        "Ufficio",
        "Caso",
        "Applicant",
        "Opzioni"
    ],
    "cliente_specialista": [
        "ID",
        "Specialista",
        "Numero specialista",
        "Opzioni"
    ],
    "documenti_caso": [
        "ID",
        "Documento",
        "Opzioni"
    ],
    "metodo_pagamento": [
        "ID",
        "Nome",
        "Opzioni"
    ],
    "pagamento": [
        "ID",
        "Cliente",
        "Totale",
        "Totale vero",
        "Opzioni"
    ],
    "rata": [
        "ID",
        "Pagamento",
        "Somma",
        "Data",
        "Tipo",
        "Opzioni"
    ],
    "specialista": [
        "ID",
        "Nome",
        "Cognome",
        "Data di nascita",
        "Email",
        "Telefono",
        "Opzioni"
    ],
    "tipo_caso": [
        "ID",
        "Nome",
        "Opzioni"
    ],
}
function createThElements(tHead) {
    let tableTh = document.getElementsByClassName("sorting");
    console.log("Number of th: " + tableTh.length)
    for (let i = 0; i < tableTh.length; i++) {
        const text = document.createTextNode(tHead[i]);
        tableTh[i].appendChild(text);
    }
    let lastTh = document.getElementsByClassName("sorting_disabled");
    const text = document.createTextNode(tHead[tHead.length - 1]);
    lastTh[0].appendChild(text);
    console.log("fine creazione th");
}