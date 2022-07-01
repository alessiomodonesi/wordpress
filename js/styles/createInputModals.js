var $ = jQuery;
$(document).ready(function () {
    console.log("inizio creazione input div");
    let page = $('#title').val();
    switch (page) {
        case "acconto":
            createModal(fields.acconto, "updateUser");
            createModal(fields.acconto, "addUser");
            break;
        case "caso":
            createModal(fields.caso, "updateUser");
            createModal(fields.caso, "addUser");
            break;
        case "fascicolo":
            createModal(fields.fascicolo, "updateUser");
            createModal(fields.fascicolo, "addUser");
            break;
        case "fascicolo-specialista":
            createModal(fields.fascicolo_s, "updateUser");
            createModal(fields.fascicolo_s, "addUser");
            break;
        case "gestito":
            createModal(fields.gestito, "updateUser");
            createModal(fields.gestito, "addUser");
            break;
        case "metodo-pagamento":
            createModal(fields.metodo_p, "updateUser");
            createModal(fields.metodo_p, "addUser");
            break;
        case "pagamento":
            createModal(fields.pagamento, "updateUser");
            createModal(fields.pagamento, "addUser");
            break;
        case "rata":
            createModal(fields.rata, "updateUser");
            createModal(fields.rata, "addUser");
            break;
        case "referente":
            createModal(fields.referente, "updateUser");
            createModal(fields.referente, "addUser");
            break;
        case "specialista":
            createModal(fields.specialista, "updateUser");
            createModal(fields.specialista, "addUser");
            break;
        case "spese":
            createModal(fields.spese, "updateUser");
            createModal(fields.spese, "addUser");
            break;
        case "stato":
            createModal(fields.stato, "updateUser");
            createModal(fields.stato, "addUser");
            break;
        case "ufficio":
            createModal(fields.ufficio, "updateUser");
            createModal(fields.ufficio, "addUser");
            break;
    }
});
//si occupa di creare gli input da inserire nei moduli che l'utente compilerà
function createModal(_form, _formId) {
    console.log("creazione degli input di " + _formId);
    for (let i = 0; i < _form.length; i++) {
        let id;
        if (_formId == "updateUser")
            id = _form[i].idUpdate;
        else if (_formId == "addUser")
            id = _form[i].idAdd;
        addInputDiv(_form[i].label, _form[i].type, _form[i].varName, id, _formId, _form[i].classes);
    }
    addSubmitButton(submitButtonInfo.type, submitButtonInfo.divClass, submitButtonInfo.buttonClass, submitButtonInfo.buttonText, _formId);
}

function addInputDiv(_label, _type, _var, _id, _formId, _classes) {
    // create a new div element
    const div1 = document.createElement("div");
    div1.classList.add("mb-3");
    div1.classList.add("row");

    // create a new label element
    const label = document.createElement("label");
    label.classList.add("col-md-3");
    label.classList.add("form-label");
    label.setAttribute("for", _id);

    // and give it some content
    const labelText = document.createTextNode(_label);

    // add the text node to the newly created label
    label.appendChild(labelText);

    // create a new div
    const div2 = document.createElement("div");
    div2.classList.add("col-md-9");

    // create a new input element and add it to the div
    var input = "";

    if (_var != "note") {
        input = document.createElement("input");
        input.classList.add("form-control");
        if (_classes != undefined)
            input.classList.add(_classes);
        input.setAttribute("type", _type);
        input.setAttribute("name", _var);
        input.setAttribute("id", _id);
    }
    else {
        input = document.createElement("textarea");
        input.classList.add("form-control");
        if (_classes != undefined)
            input.classList.add(_classes);
        input.setAttribute("type", _type);
        input.setAttribute("name", _var);
        input.setAttribute("id", _id);

        input.setAttribute("rows", textAreaInfo.rows);
    }

    //get updateUser form
    const form = document.getElementById(_formId);

    div1.appendChild(label);
    div2.appendChild(input);
    div1.appendChild(div2);

    // add the newly created elements and its content into the form
    form.appendChild(div1);

    console.log("created correctly input div: " + _label);
}
//aggiunge il pulsante "submit" alla fine del form
function addSubmitButton(_type, _divClass, _buttonClass, _buttonText, _formId) {
    // create a new div element
    const div1 = document.createElement("div");
    div1.classList.add(_divClass);

    // create a new button element
    const button = document.createElement("button");
    for (let i = 0; i < _buttonClass.length; i++) {
        button.classList.add(_buttonClass[i]);
    }
    button.setAttribute("type", _type);

    // and give it some content
    const buttonText = document.createTextNode(_buttonText);

    // add the text node to the newly created button
    button.appendChild(buttonText);
    div1.appendChild(button);

    // add the newly created button and its content into the form
    document.getElementById(_formId).appendChild(div1);

    console.log("created correctly button: " + _buttonText);
}
//contiene le informazioni per la textarea presente nel campo "note"
const textAreaInfo = {
    "rows": 5,
}

//SPIEGAZIONE
/*
"fields" è un oggetto che contiene tutti i campi che compongono una tabella
ogni oggetto al suo interno contiente un array degli elementi essenziali e necessari al funzionamento del modulo
e all'invio dei dati al server

type: tipo di input
label: label del campo
varName: nome della variabile in cui verrà salvato il valore del campo, e coincide con il nome della colonna della tabella nel database
idUpdate: id del campo che viene usato per la modifica dei dati
idAdd: id del campo che viene usato per l'inserimento dei dati, aggiunta di un nuovo record
*/
const fields = {
    "acconto": [
        {
            "type": "number",
            "varName": "id_rata",
            "idUpdate": "RataField",
            "idAdd": "addRataField",
            "label": "ID Rata"
        },
        {
            "type": "number",
            "varName": "somma",
            "idUpdate": "SommaField",
            "idAdd": "addSommaField",
            "label": "Somma"
        },
        {
            "type": "date",
            "varName": "data_pagamento",
            "idUpdate": "DataPagamentoField",
            "idAdd": "addDataPagamentoField",
            "label": "Data Pagamento"
        },
        {
            "type": "number",
            "varName": "metodo_pagamento",
            "idUpdate": "MetodoPagamentoField",
            "idAdd": "addMetodoPagamentoField",
            "label": "Metodo Pagamento"
        },
    ],

    "caso": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
        },
    ],

    "fascicolo": [
        {
            "type": "date",
            "varName": "data_apertura",
            "idUpdate": "DataAperturaField",
            "idAdd": "addDataAperturaField",
            "label": "Data Apertura"
        },
        {
            "type": "date",
            "varName": "data_chiusura",
            "idUpdate": "DataChiusuraField",
            "idAdd": "addDataChiusuraField",
            "label": "Data Chiusura"
        },
        {
            "type": "number",
            "varName": "stato",
            "idUpdate": "StatoField",
            "idAdd": "addStatoField",
            "label": "Stato"
        },
        {
            "type": "number",
            "varName": "id_ufficio",
            "idUpdate": "UfficioField",
            "idAdd": "addUfficioField",
            "label": "ID Ufficio"
        },
        {
            "type": "number",
            "varName": "persone_gestite",
            "idUpdate": "PersoneGestiteField",
            "idAdd": "addPersoneGestiteField",
            "label": "Persone Gestite"
        },
        {
            "type": "number",
            "varName": "referente",
            "idUpdate": "ReferenteField",
            "idAdd": "addReferenteField",
            "label": "Referente"
        },
        {
            "type": "number",
            "varName": "caso",
            "idUpdate": "CasoField",
            "idAdd": "addCasoField",
            "label": "Caso"
        },
        {
            "type": "text",
            "varName": "note",
            "idUpdate": "NoteField",
            "idAdd": "addNoteField",
            "classes": "text-area-modal",
            "label": "Note"
        },
        {
            "type": "text",
            "varName": "link",
            "idUpdate": "LinkField",
            "idAdd": "addLinkField",
            "label": "Link"
        },
    ],

    "fascicolo_s": [
        {
            "type": "number",
            "varName": "id_fascicolo",
            "idUpdate": "FascicoloField",
            "idAdd": "addFascicoloField",
            "label": "ID Fascicolo"
        },
        {
            "type": "number",
            "varName": "id_specialista",
            "idUpdate": "SpecialistaField",
            "idAdd": "addSpecialistaField",
            "label": "ID Specialista"
        },
        {
            "type": "date",
            "varName": "data_assegnazione",
            "idUpdate": "DataAssegnazioneField",
            "idAdd": "addDataAssegnazioneField",
            "label": "Data Assegnazione"
        },
        {
            "type": "date",
            "varName": "data_conclusione",
            "idUpdate": "DataConclusioneField",
            "idAdd": "addDataConclusioneField",
            "label": "Data Conclusione"
        },
        {
            "type": "number",
            "varName": "numero_specialista",
            "idUpdate": "NumeroSpecialistaField",
            "idAdd": "addNumeroSpecialistaField",
            "label": "Numero Specialista"
        },
        {
            "type": "checkbox",
            "classes": "form-check-input",
            "varName": "accettato",
            "idUpdate": "AccettatoField",
            "idAdd": "addAccettatoField",
            "label": "Accettato"
        },
    ],

    "gestito": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
        },
        {
            "type": "text",
            "varName": "cognome",
            "idUpdate": "CognomeField",
            "idAdd": "addCognomeField",
            "label": "Cognome"
        },
        {
            "type": "date",
            "varName": "data_nascita",
            "idUpdate": "DataField",
            "idAdd": "addDataField",
            "label": "Data"
        },
        {
            "type": "text",
            "varName": "indirizzo",
            "idUpdate": "IndirizzoField",
            "idAdd": "addIndirizzoField",
            "label": "Indirizzo"
        },
        {
            "type": "text",
            "varName": "numero_telefono",
            "idUpdate": "TelefonoField",
            "idAdd": "addTelefonoField",
            "label": "Telefono"
        },
        {
            "type": "email",
            "varName": "mail",
            "idUpdate": "MailField",
            "idAdd": "addMailField",
            "label": "Email"
        },
        {
            "type": "number",
            "varName": "id_fascicolo",
            "idUpdate": "FascicoloField",
            "idAdd": "addFascicoloField",
            "label": "ID Fascicolo"
        }
    ],

    "metodo_p": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
        },
    ],

    "pagamento": [
        {
            "type": "number",
            "varName": "id_fascicolo",
            "idUpdate": "FascicoloField",
            "idAdd": "addFascicoloField",
            "label": "ID Fascicolo"
        },
        {
            "type": "date",
            "varName": "creazione",
            "idUpdate": "CreazioneField",
            "idAdd": "addCreazioneField",
            "label": "Data Creazione"
        },
        {
            "type": "number",
            "varName": "totale",
            "idUpdate": "TotaleField",
            "idAdd": "addTotaleField",
            "label": "Totale"
        },
        {
            "type": "number",
            "varName": "totale_vero",
            "idUpdate": "TotaleVeroField",
            "idAdd": "addTotaleVeroField",
            "label": "Totale Vero"
        },
        {
            "type": "checkbox",
            "classes": "form-check-input",
            "varName": "accettato",
            "idUpdate": "AccettatoField",
            "idAdd": "addAccettatoField",
            "label": "Accettato"
        },
    ],

    "rata": [
        {
            "type": "number",
            "varName": "id_pagamento",
            "idUpdate": "PagamentoField",
            "idAdd": "addPagamentoField",
            "label": "ID Pagamento"
        },
        {
            "type": "number",
            "varName": "somma",
            "idUpdate": "SommaField",
            "idAdd": "addSommaField",
            "label": "Somma"
        },
        {
            "type": "checkbox",
            "classes": "form-check-input",
            "varName": "pagata",
            "idUpdate": "PagataField",
            "idAdd": "addPagataField",
            "label": "Pagata"
        },
    ],

    "referente": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
        },
        {
            "type": "text",
            "varName": "cognome",
            "idUpdate": "CognomeField",
            "idAdd": "addCognomeField",
            "label": "Cognome"
        },
        {
            "type": "date",
            "varName": "data_nascita",
            "idUpdate": "DataField",
            "idAdd": "addDataField",
            "label": "Data"
        },
        {
            "type": "text",
            "varName": "indirizzo",
            "idUpdate": "IndirizzoField",
            "idAdd": "addIndirizzoField",
            "label": "Indirizzo"
        },
        {
            "type": "text",
            "varName": "numero_telefono",
            "idUpdate": "TelefonoField",
            "idAdd": "addTelefonoField",
            "label": "Telefono"
        },
        {
            "type": "email",
            "varName": "mail",
            "idUpdate": "MailField",
            "idAdd": "addMailField",
            "label": "Email"
        },
    ],

    "specialista": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
        },
        {
            "type": "text",
            "varName": "cognome",
            "idUpdate": "CognomeField",
            "idAdd": "addCognomeField",
            "label": "Cognome"
        },
        {
            "type": "date",
            "varName": "data_nascita",
            "idUpdate": "DataNascitaField",
            "idAdd": "addDataNascitaField",
            "label": "Data Nascita"
        },
        {
            "type": "text",
            "varName": "numero_telefono",
            "idUpdate": "TelefonoField",
            "idAdd": "addTelefonoField",
            "label": "Telefono"
        },
        {
            "type": "email",
            "varName": "mail",
            "idUpdate": "MailField",
            "idAdd": "addMailField",
            "label": "Email"
        },
    ],

    "spese": [
        {
            "type": "number",
            "varName": "id_fascicolo",
            "idUpdate": "FascicoloField",
            "idAdd": "addFascicoloField",
            "label": "ID Fascicolo"
        },
        {
            "type": "number",
            "varName": "somma",
            "idUpdate": "SommaField",
            "idAdd": "addSommaField",
            "label": "Somma"
        },
        {
            "type": "checkbox",
            "classes": "form-check-input",
            "varName": "rimborso",
            "idUpdate": "RimborsoField",
            "idAdd": "addRimborsoField",
            "label": "Rimborso"
        },
        {
            "type": "text",
            "varName": "note",
            "idUpdate": "NoteField",
            "idAdd": "addNoteField",
            "classes": "text-area-modal",
            "label": "Note"
        },
    ],

    "stato": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
        },
    ],

    "ufficio": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
        },
    ],
};


//oggetto che contiente le informazioni del pulsante del form
const submitButtonInfo = {
    "type": "submit",
    "divClass": "text-center",
    "buttonClass": ["btn", "btn-outline-primary"],
    "buttonText": "Invia"
};
