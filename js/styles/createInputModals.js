var $ = jQuery;
$(document).ready(function () {
    console.log("inizio creazione input div");
    let page = $('#title').val();
    switch (page) {
        //caso
        case "caso":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //cliente
        case "cliente":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //fascicolo
        case "fascicolo":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //fascicolo-cliente
        case "fascicolo-cliente":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break; 
        //fascicolo-specialista
        case "fascicolo-specialista":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //metodo_pagamento
        case "metodo-pagamento":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //pagamento
        case "pagamento":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //rata
        case "rata":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //specialista
        case "specialista":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //spese
        case "spese":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //stato
        case "stato":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
        //ufficio
        case "ufficio":
            createModal(fields.cliente, "updateUser");
            createModal(fields.cliente, "addUser");
            break;
    }
});

function createModal(_form, _formId) {
    console.log("creazione degli input di " + _formId);
    for (let i = 0; i < _form.length; i++) {
        let id;
        if (_formId == "updateUser")
            id = _form[i].idEdit;
        else if (_formId == "addUser")
            id = _form[i].idUpdate;
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
            "idEdit": "NomeField",
            "idUpdate": "addNomeField",
            "label": "Nome"
        },
        {
            "type": "text",
            "varName": "cognome",
            "idEdit": "CognomeField",
            "idUpdate": "addCognomeField",
            "label": "Cognome"
        },
        {
            "type": "date",
            "varName": "data_nascita",
            "idEdit": "DataField",
            "idUpdate": "addDataField",
            "label": "Data"
        },
        {
            "type": "text",
            "varName": "indirizzo",
            "idEdit": "IndirizzoField",
            "idUpdate": "addIndirizzoField",
            "label": "Indirizzo"
        },
        {
            "type": "text",
            "varName": "numero_telefono",
            "idEdit": "TelefonoField",
            "idUpdate": "addTelefonoField",
            "label": "Telefono"
        },
        {
            "type": "email",
            "varName": "mail",
            "idEdit": "MailField",
            "idUpdate": "addMailField",
            "label": "Email"
        }
    ],
    "pagamento": [
        {
            "type": "number",
            "varName": "id_fascicolo",
            "idEdit": "FascicoloField",
            "idUpdate": "addFascicoloField",
            "label": "ID Fascicolo"
        },
        {
            "type": "date",
            "varName": "creazione",
            "idEdit": "CreazioneField",
            "idUpdate": "addCreazioneField",
            "label": "Data Creazione"
        },
        {
            "type": "number",
            "varName": "totale",
            "idEdit": "TotaleField",
            "idUpdate": "addTotaleField",
            "label": "Totale"
        },
        {
            "type": "number",
            "varName": "totale_vero",
            "idEdit": "TotaleVeroField",
            "idUpdate": "addTotaleVeroField",
            "label": "Totale Vero"
        },
        {
            "type": "number",
            "varName": "accettato",
            "idEdit": "AccettatoField",
            "idUpdate": "addAccettatoField",
            "label": "Accettato"
        },
    ],
    "rata": [
        {
            "type": "number",
            "varName": "id_pagamento",
            "idEdit": "PagamentoField",
            "idUpdate": "addPagamentoField",
            "label": "ID Pagamento"
        },
        {
            "type": "number",
            "varName": "somma",
            "idEdit": "SommaField",
            "idUpdate": "addSommaField",
            "label": "Somma"
        },
        {
            "type": "date",
            "varName": "data_pagamento",
            "idEdit": "DataPagamentoField",
            "idUpdate": "addDataPagamentoField",
            "label": "Data Pagamento"
        },
        {
            "type": "number",
            "varName": "tipo_pagamento",
            "idEdit": "TipoPagamentoField",
            "idUpdate": "addTipoPagamentoField",
            "label": "Tipo Pagamento"
        },
    ],
    "specialista": [
        {
            "type": "text",
            "varName": "nome",
            "idEdit": "NomeField",
            "idUpdate": "addNomeField",
            "label": "Nome"
        },
        {
            "type": "text",
            "varName": "cognome",
            "idEdit": "CognomeField",
            "idUpdate": "addCognomeField",
            "label": "Cognome"
        },
        {
            "type": "date",
            "varName": "data_nascita",
            "idEdit": "DataNascitaField",
            "idUpdate": "addDataNascitaField",
            "label": "Data Nascita"
        },
        {
            "type": "text",
            "varName": "numero_telefono",
            "idEdit": "TelefonoField",
            "idUpdate": "addTelefonoField",
            "label": "Telefono"
        },
        {
            "type": "email",
            "varName": "mail",
            "idEdit": "MailField",
            "idUpdate": "addMailField",
            "label": "Email"
        },
    ],
    "metodo_p": [
        {
            "type": "text",
            "varName": "nome",
            "idEdit": "NomeField",
            "idUpdate": "addNomeField",
            "label": "Nome"
        },
    ],
    "caso": [
        {
            "type": "text",
            "varName": "nome",
            "idEdit": "NomeField",
            "idUpdate": "addNomeField",
            "label": "Nome"
        },
    ],
    "stato": [
        {
            "type": "text",
            "varName": "nome",
            "idEdit": "NomeField",
            "idUpdate": "addNomeField",
            "label": "Nome"
        },
    ],
    "ufficio": [
        {
            "type": "text",
            "varName": "nome",
            "idEdit": "NomeField",
            "idUpdate": "addNomeField",
            "label": "Nome"
        },
    ],
    "fascicolo_c": [
        {
            "type": "number",
            "varName": "id_fascicolo",
            "idEdit": "FascicoloField",
            "idUpdate": "addFascicoloField",
            "label": "ID Fascicolo"
        },
        {
            "type": "number",
            "varName": "id_cliente",
            "idEdit": "ClienteField",
            "idUpdate": "addClienteField",
            "label": "ID Cliente"
        },
    ],
    "spese": [
        {
            "type": "number",
            "varName": "id_fascicolo",
            "idEdit": "FascicoloField",
            "idUpdate": "addFascicoloField",
            "label": "ID Fascicolo"
        },
        {
            "type": "number",
            "varName": "somma",
            "idEdit": "SommaField",
            "idUpdate": "addSommaField",
            "label": "Somma"
        },
        {
            "type": "number",
            "varName": "rimborso",
            "idEdit": "RimborsoField",
            "idUpdate": "addRimborsoField",
            "label": "Rimborso"
        },
        {
            "type": "text",
            "varName": "note",
            "idEdit": "NoteField",
            "idUpdate": "addNoteField",
            "label": "Note"
        },
    ],
    "fascicolo_s": [
        {
            "type": "number",
            "varName": "id_fascicolo",
            "idEdit": "FascicoloField",
            "idUpdate": "addFascicoloField",
            "label": "ID Fascicolo"
        },
        {
            "type": "number",
            "varName": "id_specialista",
            "idEdit": "SpecialistaField",
            "idUpdate": "addSpecialistaField",
            "label": "ID Specialista"
        },
        {
            "type": "number",
            "varName": "numero_specialista",
            "idEdit": "NumeroSpecialistaField",
            "idUpdate": "addNumeroSpecialistaField",
            "label": "Numero Specialista"
        },
        {
            "type": "number",
            "varName": "accettato",
            "idEdit": "AccettatoField",
            "idUpdate": "addAccettatoField",
            "label": "Accettato"
        },
    ],
};

const submitButtonInfo = {
    "type": "submit",
    "divClass": "text-center",
    "buttonClass": ["btn", "btn-outline-primary"],
    "buttonText": "Invia"
};
