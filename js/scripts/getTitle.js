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
function Get_Title_Btn(page){
    let title, btn;
    switch (page) {
        case "cliente":
            title = "Clienti";
            btn = "Aggiungi cliente";
            break;
        case "cliente-specialista":
            title = "Clienti/Specialisti";
            btn = "Aggiungi cliente/specialista";
            break;
        case "documenti-caso":
            title = "Documenti";
            btn = "Aggiungi documento";
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
        case "specialista":
            title = "Specialisti";
            btn = "Aggiungi specialista";
            break;
        case "tipo-caso":
            title = "Tipi di caso";
            btn = "Aggiungi tipo di caso";
            break;
    } return { title: title, btn: btn };
}