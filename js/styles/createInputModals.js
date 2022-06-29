var $ = jQuery;
$(document).ready(function () {
    console.log("inizio creazione input div");
    let page = $('#title').val();
    switch (page) {
        //caso
        case "caso":
            createModal(fields.caso, "updateUser");
            createModal(fields.caso, "addUser");
            break;
        //cliente
        case "cliente":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //fascicolo
        case "fascicolo":
            createModal(fields.fascicolo, "updateUser");
            createModal(fields.fascicolo, "addUser");
            break;
        //fascicolo-cliente
        case "fascicolo-cliente":
            createModal(fields.fascicolo_c, "updateUser");
            createModal(fields.fascicolo_c, "addUser");
            break; 
        //fascicolo-specialista
        case "fascicolo-specialista":
            createModal(fields.fascicolo_s, "updateUser");
            createModal(fields.fascicolo_s, "addUser");
            break;
        //metodo_pagamento
        case "metodo-pagamento":
            createModal(fields.metodo_p, "updateUser");
            createModal(fields.metodo_p, "addUser");
            break;
        //pagamento
        case "pagamento":
            createModal(fields.pagamento, "updateUser");
            createModal(fields.pagamento, "addUser");
            break;
        //rata
        case "rata":
            createModal(fields.rata, "updateUser");
            createModal(fields.rata, "addUser");
            break;
        //specialista
        case "specialista":
            createModal(fields.specialista, "updateUser");
            createModal(fields.specialista, "addUser");
            break;
        //spese
        case "spese":
            createModal(fields.spese, "updateUser");
            createModal(fields.spese, "addUser");
            break;
        //stato
        case "stato":
            createModal(fields.stato, "updateUser");
            createModal(fields.stato, "addUser");
            break;
        //ufficio
        case "ufficio":
            createModal(fields.ufficio, "updateUser");
            createModal(fields.ufficio, "addUser");
            break;
    }
});

function createModal(_form, _formId) {
    console.log("creazione degli input di " + _formId);
    for (let i = 0; i < _form.length; i++) {
        let id;
        if (_formId == "updateUser")
            id = _form[i].idUpdate;
        else if (_formId == "addUser")
            id = _form[i].idAdd;
        addInputDiv(_form[i].label, _form[i].type, _form[i].varName, id, _formId);
    }
    addSubmitButton(submitButtonInfo.type, submitButtonInfo.divClass, submitButtonInfo.buttonClass, submitButtonInfo.buttonText, _formId);
}

function addInputDiv(_label, _type, _var, _id, _formId) {
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
    const input = document.createElement("input");
    input.classList.add("form-control");
    input.setAttribute("type", _type);
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

const fields = {
    "cliente": [
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
        }
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
            "type": "number",
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
            "type": "date",
            "varName": "data_pagamento",
            "idUpdate": "DataPagamentoField",
            "idAdd": "addDataPagamentoField",
            "label": "Data Pagamento"
        },
        {
            "type": "number",
            "varName": "tipo_pagamento",
            "idUpdate": "TipoPagamentoField",
            "idAdd": "addTipoPagamentoField",
            "label": "Tipo Pagamento"
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
    "metodo_p": [
        {
            "type": "text",
            "varName": "nome",
            "idUpdate": "NomeField",
            "idAdd": "addNomeField",
            "label": "Nome"
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
    "fascicolo_c": [
        {
            "type": "number",
            "varName": "id_fascicolo",
            "idUpdate": "FascicoloField",
            "idAdd": "addFascicoloField",
            "label": "ID Fascicolo"
        },
        {
            "type": "number",
            "varName": "id_cliente",
            "idUpdate": "ClienteField",
            "idAdd": "addClienteField",
            "label": "ID Cliente"
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
            "type": "number",
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
            "type": "number",
            "varName": "numero_specialista",
            "idUpdate": "NumeroSpecialistaField",
            "idAdd": "addNumeroSpecialistaField",
            "label": "Numero Specialista"
        },
        {
            "type": "number",
            "varName": "accettato",
            "idUpdate": "AccettatoField",
            "idAdd": "addAccettatoField",
            "label": "Accettato"
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
};

const submitButtonInfo = {
    "type": "submit",
    "divClass": "text-center",
    "buttonClass": ["btn", "btn-outline-primary"],
    "buttonText": "Invia"
};
