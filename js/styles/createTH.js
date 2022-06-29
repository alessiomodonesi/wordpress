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
        case "acconto":
            createThElements(tHead.acconto);
            break;
        case "caso":
            createThElements(tHead.caso);
            break;
        case "fascicolo":
            createThElements(tHead.fascicolo);
            break;
        case "fascicolo-specialista":
            createThElements(tHead.fascicolo_specialista);
            break;
        case "gestito":
            createThElements(tHead.gestito);
            break;
        case "metodo-pagamento":
            createThElements(tHead.metodo_pagamento);
            break;
        case "pagamento":
            createThElements(tHead.pagamento);
            break;
        case "rata":
            createThElements(tHead.rata);
            break;
        case "referente":
            createThElements(tHead.referente);
            break;
        case "specialista":
            createThElements(tHead.specialista);
            break;
        case "spese":
            createThElements(tHead.spese);
            break;
        case "stato":
            createThElements(tHead.stato);
            break;
        case "ufficio":
            createThElements(tHead.ufficio);
            break;
    };
}

//Questo array contiene tutti i campi di ogni tabella 
const tHead = {
    "acconto": [
        "ID acconto",
        "ID rata",
        "Somma",
        "Data pagamento",
        "Metodo pagamento",
        "Opzioni"
    ],

    "caso": [
        "ID",
        "Nome",
        "Opzioni"
    ],

    "fascicolo": [
        "ID",
        "Data apertura",
        "Data chiusura",
        "Stato",
        "ID ufficio",
        "Persone gestite",
        "Referente",
        "Caso",
        "Note",
        "Link",
        "Opzioni"
    ],

    "fascicolo_specialista": [
        "ID fascicolo",
        "ID specialista",
        "Data assegnazione",
        "Data conclusione",
        "Numero specialista",
        "Accettato y/n",
        "Opzioni"
    ],

    "gestito": [
        "ID",
        "Nome",
        "Cognome",
        "Data di nascita",
        "Indirizzo",
        "Telefono",
        "Email",
        "ID fascicolo",
        "Opzioni"
    ], 

    "metodo_pagamento": [
        "ID",
        "Nome",
        "Opzioni"
    ],

    "pagamento": [
        "ID pagamento",
        "ID fascicolo",
        "Creazione",
        "Totale",
        "Totale vero",
        "Accettato y/n",
        "Opzioni"
    ],

    "rata": [
        "ID rata",
        "ID pagamento",
        "Somma",
        "Pagata y/n",
        "Opzioni"
    ],

    "referente": [
        "ID",
        "Nome",
        "Cognome",
        "Data di nascita",
        "Indirizzo",
        "Telefono",
        "Email",
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
        "ID fascicolo",
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