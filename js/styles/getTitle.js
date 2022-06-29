var $ = jQuery;
$(document).ready(function () {
    let page = $('#title').val();
    let btn = document.getElementById("addBtn");
    let titolo = document.getElementById("titolo");
    let btnTitleData = Get_Title_Btn(page);
    const btnText = document.createTextNode(btnTitleData.btn);
    const titleText = document.createTextNode(btnTitleData.title);
    btn.appendChild(btnText);
    titolo.appendChild(titleText);
});
function Get_Title_Btn(page) {
    let title, btn;
    switch (page) {
        case "acconto":
            title = "Acconti";
            btn = "Aggiungi acconto";
            break;
        case "caso":
            title = "Casi";
            btn = "Aggiungi caso";
            break;
        case "fascicolo":
            title = "Fascicoli";
            btn = "Aggiungi fascicolo";
            break;
        case "fascicolo-specialista":
            title = "Fascicoli specialisti";
            btn = "Aggiungi fascicolo";
            break;
        case "gestito":
            title = "Gestiti";
            btn = "Aggiungi gestito";
            break;
        case "metodo-pagamento":
            title = "Metodi di pagamento";
            btn = "Aggiungi metodo di pagamento";
            break;
        case "pagamento":
            title = "Pagamenti";
            btn = "Aggiungi pagamento";
            break;
        case "rata":
            title = "Rate";
            btn = "Aggiungi rata";
            break;
        case "referente":
            title = "Referenti";
            btn = "Aggiungi referente";
            break;
        case "specialista":
            title = "Specialisti";
            btn = "Aggiungi specialista";
            break;
        case "spese":
            title = "Spese";
            btn = "Aggiungi spesa";
            break;
        case "stato":
            title = "Stato";
            btn = "Aggiungi stato";
            break;
        case "ufficio":
            title = "Uffici";
            btn = "Aggiungi ufficio";
            break;
    } return { title: title, btn: btn };
}