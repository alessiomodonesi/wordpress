var $ = jQuery;
$(document).ready(function () {
    console.log("inizio creazione input div");
    let page = $('#title').val();
    createModal(fields[page], "updateUser");
    createModal(fields[page], "addUser");
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
    }
    else {
        input = document.createElement("textarea");
        input.setAttribute("rows", textAreaInfo.rows);
    }

    input.classList.add("form-control");
    if (_classes != undefined)
        input.classList.add(_classes);
    input.setAttribute("type", _type);

    if (_type == "number")//impedisce che un utente SBADATO inserisca un valore negativo
        input.setAttribute("min", 0);

    input.setAttribute("name", _var);
    input.setAttribute("id", _id);

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
            "type": "text",
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
        {
            "type": "text",
            "varName": "note",
            "idUpdate": "NoteField",
            "idAdd": "addNoteField",
            "classes": "text-area-modal",
            "label": "Note"
        },
    ],

    "allegati": [
        {
            "type": "text",
            "varName": "nome_file",
            "idUpdate": "NomeFileField",
            "idAdd": "addNomeFileField",
            "label": "Nome File"
        },
        {
            "type": "text",
            "varName": "percorso",
            "idUpdate": "PercorsoField",
            "idAdd": "addPercorsoField",
            "label": "Percorso"
        },
        {
            "type": "text",
            "varName": "estensione_file",
            "idUpdate": "EstensioneFileField",
            "idAdd": "addEstensioneFileField",
            "label": "Estensione File"
        },
        {
            "type": "number",
            "varName": "codice_tipo_file",
            "idUpdate": "CodiceTipoFileField",
            "idAdd": "addCodiceTipoFileField",
            "label": "Codice Tipo File"
        },
        {
            "type": "number",
            "varName": "eliminato",
            "idUpdate": "EliminatoField",
            "idAdd": "addEliminatoField",
            "label": "Eliminato"
        },
        {
            "type": "date",
            "varName": "data_caricamento",
            "idUpdate": "DataCaricamentoField",
            "idAdd": "addDataCaricamentoField",
            "label": "Data Caricamento"
        },
        {
            "type": "number",
            "varName": "acconto",
            "idUpdate": "AccontoField",
            "idAdd": "addAccontoField",
            "label": "Acconto"
        },
        {
            "type": "number",
            "varName": "rata",
            "idUpdate": "RataField",
            "idAdd": "addRataField",
            "label": "Rata"
        },
        {
            "type": "number",
            "varName": "pagamento",
            "idUpdate": "PagamentoField",
            "idAdd": "addPagamentoField",
            "label": "Pagamento"
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
            "varName": "fascicolo",
            "idUpdate": "FascicoloField",
            "idAdd": "addFascicoloField",
            "label": "Fascicolo"
        },
        {
            "type": "number",
            "varName": "gestito",
            "idUpdate": "GestitoField",
            "idAdd": "addGestitoField",
            "label": "Gestito"
        },
    ],

    "appuntamenti": [
        {
            "type": "number",
            "varName": "id_prospective",
            "idUpdate": "IdProspectiveField",
            "idAdd": "addIdProspectiveField",
            "label": "ID Prospective"
        },
        {
            "type": "number",
            "varName": "numero_telefono",
            "idUpdate": "NumeroTelefonoField",
            "idAdd": "addNumeroTelefonoField",
            "label": "Numero Telefono"
        },
        {
            "type": "date",
            "varName": "data_chiamata",
            "idUpdate": "DataChiamataField",
            "idAdd": "addDataChiamataField",
            "label": "Data Chiamata"
        },
        {
            "type": "number",
            "varName": "stato",
            "idUpdate": "StatoField",
            "idAdd": "addStatoField",
            "label": "Stato"
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

    "caso": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
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

    "chiamata": [
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
            "type": "text",
            "varName": "nickname",
            "idUpdate": "NicknameField",
            "idAdd": "addNicknameField",
            "label": "Nickname"
        },
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
            "varName": "link",
            "idUpdate": "LinkField",
            "idAdd": "addLinkField",
            "label": "Link"
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
        {
            "type": "text",
            "varName": "note",
            "idUpdate": "NoteField",
            "idAdd": "addNoteField",
            "classes": "text-area-modal",
            "label": "Note"
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
            "type": "text",
            "varName": "middle_name",
            "idUpdate": "MiddleNameField",
            "idAdd": "addMiddleNameField",
            "label": "Middle Name"
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

    "metodo_p": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
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
        {
            "type": "text",
            "varName": "note",
            "idUpdate": "NoteField",
            "idAdd": "addNoteField",
            "classes": "text-area-modal",
            "label": "Note"
        },
    ],

    "prospective": [
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
            "type": "text",
            "varName": "middle_name",
            "idUpdate": "MiddleNameField",
            "idAdd": "addMiddleNameField",
            "label": "Middle Name"
        },
        {
            "type": "number",
            "varName": "numero_telefono",
            "idUpdate": "NumeroTelefonoField",
            "idAdd": "addNumeroTelefonoField",
            "label": "Numero Telefono"
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

    "rata": [
        {
            "type": "number",
            "varName": "id_pagamento",
            "idUpdate": "PagamentoField",
            "idAdd": "addPagamentoField",
            "label": "ID Pagamento"
        },
        {
            "type": "text",
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
        {
            "type": "text",
            "varName": "note",
            "idUpdate": "NoteField",
            "idAdd": "addNoteField",
            "classes": "text-area-modal",
            "label": "Note"
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
            "type": "text",
            "varName": "middle_name",
            "idUpdate": "MiddleNameField",
            "idAdd": "addMiddleNameField",
            "label": "Middle Name"
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
            "varName": "sponsor",
            "idUpdate": "SponsorField",
            "idAdd": "addSponsorField",
            "label": "Sponsor"
        },
        {
            "type": "number",
            "varName": "perc_sponsor",
            "idUpdate": "PercSponsorField",
            "idAdd": "addPercSponsorField",
            "label": "Perc Sponsor"
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
            "type": "text",
            "varName": "middle_name",
            "idUpdate": "MiddleNameField",
            "idAdd": "addMiddleNameField",
            "label": "Middle Name"
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
            "varName": "codice_fiscale",
            "idUpdate": "CodiceFiscaleField",
            "idAdd": "addCodiceFiscaleField",
            "label": "Codice Fiscale"
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
            "type": "text",
            "varName": "note",
            "idUpdate": "NoteField",
            "idAdd": "addNoteField",
            "classes": "text-area-modal",
            "label": "Note"
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
            "type": "text",
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

    "sponsor": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
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
        {
            "type": "text",
            "varName": "note",
            "idUpdate": "NoteField",
            "idAdd": "addNoteField",
            "classes": "text-area-modal",
            "label": "Note"
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
        {
            "type": "text",
            "varName": "note",
            "idUpdate": "NoteField",
            "idAdd": "addNoteField",
            "classes": "text-area-modal",
            "label": "Note"
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
