var $ = jQuery;
$(window).on("load", function () {
    //un po' di delay, perchè per non si sa quale arcano motivo, lo fa partire per primo seppur ci sia document on load .-.
    setTimeout(Create_Table_Index, 10);
});
/*questa funzione crea la tabella aggiungendo il giusto numero di colonne per ognuna di esse
 e dando alle colonne il giusto nome*/
function Create_Table_Index() {
    console.log("inizio creazione th");
    let page = $('#title').val();
    switch (page) {
        //caso
        case "caso":
            createThElements(tHead.caso);
            break;
        //cliente
        case "cliente":
            createThElements(tHead.cliente);
            break;
        //fascicolo
        case "fascicolo":
            createThElements(tHead.fascicolo);
            break;
        //fascicolo-cliente
        case "fascicolo-cliente":
            createThElements(tHead.fascicolo_cliente);
            break; //fascicolo-specialista
        case "fascicolo-specialista":
            createThElements(tHead.fascicolo_specialista);
            break;
        //metodo_pagamento
        case "metodo-pagamento":
            createThElements(tHead.metodo_pagamento);
            break;
        //pagamento
        case "pagamento":
            createThElements(tHead.pagamento);
            break;
        //rata
        case "rata":
            createThElements(tHead.rata);
            break;
        //specialista
        case "specialista":
            createThElements(tHead.specialista);
            break;
        //spese
        case "spese":
            createThElements(tHead.spese);
            break;
        //stato
        case "stato":
            createThElements(tHead.stato);
            break;
        //ufficio
        case "ufficio":
            createThElements(tHead.ufficio);
            break;
    };
}
//Questo array contiene tutti i campi di ogni tabella 
const tHead = {
    "caso": [
        "ID",
        "Nome",
        "Opzioni"
    ],
    "cliente": [
        "ID",
        "Nome",
        "Cognome",
        "Data di nascita",
        "Indirizzo",
        "Telefono",
        "Email",
        "Opzioni"
    ],
    "fascicolo": [
        "ID",
        "Data apertura",
        "Data chiusura",
        "Stato",
        "Ufficio",
        "Referente",
        "Caso",
        "Note",
        "Link",
        "Opzioni"
    ],
    "fascicolo_cliente": [
        "ID",
        "Cliente",
        "Opzioni"
    ],
    "fascicolo_specialista": [
        "ID",
        "Specialista",
        "Numero specialista",
        "Accettato",
        "Opzioni"
    ],
    "metodo_pagamento": [
        "ID",
        "Nome",
        "Opzioni"
    ],
    "pagamento": [
        "ID",
        "Fascicolo",
        "Creazione",
        "Totale",
        "Totale vero",
        "Accettato",
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
        "Telefono",
        "Email",
        "Opzioni"
    ],
    "spese": [
        "ID",
        "Somma",
        "Rimborso",
        "Note",
        "Opzioni"
    ],
    "stato": [
        "ID",
        "Nome",
        "Opzioni"
    ],
    "ufficio": [
        "ID",
        "Nome",
        "Opzioni"
    ],
}
//questa funzione serve a creare tutte le colonne della tabella secondo i suoi campi 
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