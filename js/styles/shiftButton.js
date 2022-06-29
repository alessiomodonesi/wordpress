var $ = jQuery;
$(document).ready(function () {
    //un po' di delay, perchè per non si sa quale arcano motivo, lo fa partire per primo seppur ci sia document on load .-.
    console.log("PAPEREEEEEE");
    setTimeout(SpostaButton, 10);
});
//questa funzione serve a creare tutte le colonne della tabella secondo i suoi campi 
function SpostaButton() {
    let btn = document.getElementById("addBtn");
    btn.remove();
    //console.log(btn);
    let table = document.getElementById("table_wrapper");
    table.prepend(btn);
}