var $ = jQuery;
console.log("Startup")
$(document).ready(function () {
    var table = $('#table').DataTable({
        //dovrebbe visualizzare i bottoni per permettere di scaricare la tabella in vari formati, ma non lo fa .-.
        /*dom: 'lBfrtip',
        buttons: [
            'copy', 'excel', 'pdf'
        ],*/
        data: Tabledata,
        //queste 3 sotto permettono lo scroll della tabella
        scrollY: 300,
        deferRender: true,
        scroller: true
    });
});
//dati
Tabledata = [
    [
        "Tiger Nixon",
        "System Architect",
        "$3,120",
        "Edinburgh"
    ],
    [
        "Garrett Winters",
        "Director",
        "$5,300",
        "Edinburgh"
    ],
    [
        "Ti New",
        "System Architect",
        "$32,120",
        "Edinburgh"
    ],
    [
        "Marco Pon",
        "System Architect",
        "$300,899",
        "Edinburgh"
    ],
    [
        "Von Xiud",
        "System Architect",
        "$84,120",
        "Edinburgh"
    ],
    [
        "Henrich Architect",
        "System Architect",
        "$21,120",
        "Edinburgh"
    ],
    [
        "Mario Rossi",
        "System Architect",
        "$71,200",
        "Edinburgh"
    ],
    [
        "Tiixon Paul",
        "System Architect",
        "$3,180",
        "Edinburgh"
    ],
    [
        "Tiger Non",
        "System Architect",
        "$3,120",
        "Edinburgh"
    ],
    [
        "Ter Nixon",
        "System Architect",
        "$9,120",
        "Edinburgh"
    ],
    [
        "Freddy Merc",
        "System Architect",
        "$1,120",
        "Edinburgh"
    ],
    [
        "Bartern Moel",
        "System Architect",
        "$19,120",
        "Edinburgh"
    ]
]