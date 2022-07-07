<?php

/*
 * Example PHP implementation used for the index.html example
 */

// DataTables PHP library
include( "../lib/DataTables.php" );

// Alias Editor classes so they are easy to use
use
	DataTables\Editor,
	DataTables\Editor\Field,
	DataTables\Editor\Format,
	DataTables\Editor\Mjoin,
	DataTables\Editor\Options,
	DataTables\Editor\Upload,
	DataTables\Editor\Validate,
	DataTables\Editor\ValidateOptions;

// Build our Editor instance and process the data coming from _POST
$db->sql( 'set names utf8' );
Editor::inst( $db, 'db_fabbricati', 'id' )
    ->fields(
        Field::inst( 'id' ),
        Field::inst( 'codice_parrocchia' ),
        Field::inst( 'titolarita' ),
        Field::inst( 'comune' ),
        Field::inst( 'localita' ),
        Field::inst( 'frazione' ),
        Field::inst( 'via' ),
        Field::inst( 'numero' ),
        Field::inst( 'piano' ),
        Field::inst( 'ubicazione' ),
        Field::inst( 'foglio' ),
        Field::inst( 'sezione' ),
        Field::inst( 'particella' ),
        Field::inst( 'sub' ),
        Field::inst( 'classamento' ),
        Field::inst( 'classe' ),
        Field::inst( 'consistenza_fabbricati' ),
        Field::inst( 'consistenza_fabbricati_vani' ),
        Field::inst( 'consistenza_fabbricati_mq' ),
        Field::inst( 'consistenza_fabbricati_mc' ),
        Field::inst( 'nome_fabbricato' ),
        Field::inst( 'annuario_nome' ),
        Field::inst( 'annuario_descrizione' ),
        Field::inst( 'rendita' ),
        Field::inst( 'stato' ),
        Field::inst( 'latitudine' ),
        Field::inst( 'longitudine' )
    )
    ->debug(true)
    ->process( $_POST )
    ->json();
