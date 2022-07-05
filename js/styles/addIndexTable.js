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
    createThElements(tHead[page]);
}

//Questo array contiene tutti i campi di ogni tabella 
const tHead = {
    "acconto": [
        "ID acconto",
        "ID rata",
        "Somma",
        "Data pagamento",
        "Metodo pagamento",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Note",
        "Opzioni"
    ],

    "allegati": [
        "ID",
        "Nome File",
        "Percorso",
        "Estensione File",
        "Codice Tipo File",
        "Eliminato",
        "Data Caricamento",
        "Acconto",
        "Rata",
        "Pagamento",
        "Referente",
        "Fascicolo",
        "Gestito",
        "Opzioni"
    ],

    "appuntamenti": [
        "ID",
        "ID Prospective",
        "Numero Telefono",
        "Data Chiamata",
        "Stato",
        "Note",
        "Opzioni"
    ],

    "caso": [
        "ID",
        "Nome",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Note",
        "Opzioni"
    ],

    "chiamata": [
        "ID",
        "Nome",
        "Opzioni"
    ],

    "fascicolo": [
        "ID",
        "Nickname",
        "Data apertura",
        "Data chiusura",
        "Stato",
        "ID ufficio",
        "Persone gestite",
        "Referente",
        "Caso",
        "Link",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Note",
        "Opzioni"
    ],

    "fascicolo_s": [
        "ID fascicolo",
        "ID specialista",
        "Data assegnazione",
        "Data conclusione",
        "Numero specialista",
        "Accettato y/n",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Note",
        "Opzioni"
    ],

    "gestito": [
        "ID",
        "Nome",
        "Cognome",
        "Middle Name",
        "Data di nascita",
        "Indirizzo",
        "Telefono",
        "Email",
        "ID fascicolo",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Obbligo GDPR",
        "Note",
        "Opzioni"
    ],

    "metodo_p": [
        "ID",
        "Nome",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Note",
        "Opzioni"
    ],

    "pagamento": [
        "ID pagamento",
        "ID fascicolo",
        "Creazione",
        "Totale",
        "Totale vero",
        "Accettato y/n",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Note",
        "Opzioni"
    ],

    "prospective": [
        "ID",
        "Nome",
        "Cognome",
        "Middle Name",
        "Telefono",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Obbligo GDPR",
        "Note",
        "Opzioni"
    ],

    "rata": [
        "ID rata",
        "ID pagamento",
        "Somma",
        "Pagata y/n",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Note",
        "Opzioni"
    ],

    "referente": [
        "ID",
        "Nome",
        "Cognome",
        "Middle Name",
        "Data di nascita",
        "Indirizzo",
        "Telefono",
        "Email",
        "Sponsor",
        "Perc Sponsor",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Obbligo GDPR",
        "Note",
        "Opzioni"
    ],

    "specialista": [
        "ID",
        "Nome",
        "Cognome",
        "Middle Name",
        "Data di nascita",
        "Codice fiscale",
        "Telefono",
        "Email",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Obbligo GDPR",
        "Note",
        "Opzioni"
    ],

    "spese": [
        "ID fascicolo",
        "Somma",
        "Rimborso",
        "Note",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Opzioni"
    ],

    "sponsor": [
        "ID",
        "Nome",
        "Opzioni"
    ],

    "stato": [
        "ID",
        "Nome",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Note",
        "Opzioni"
    ],

    "ufficio": [
        "ID",
        "Nome",
        "Log Utente",
        "Log Azione",
        "Data Inserimento Record",
        "Data Modifica Record",
        "Note",
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