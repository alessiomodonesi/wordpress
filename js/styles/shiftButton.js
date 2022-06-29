var $ = jQuery;
$(document).ready(function () {
    //un po' di delay, per dare dle tempo alla pagina di caricarsi correttamente
    setTimeout(SpostaButton, 10);
});
//questa funzione serve per prendere e spostare il pulsante "Aggiungi" all'interno della tabella
function SpostaButton() {
    let btn = document.getElementById("addBtn");
    btn.remove();
    //console.log(btn);
    let table = document.getElementById("table_wrapper");
    table.prepend(btn);
}