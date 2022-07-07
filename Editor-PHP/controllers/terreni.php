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
Editor::inst( $db, 'db_terreni', 'id' )
    ->fields(
        Field::inst( 'id' ),
        Field::inst( 'codice_parrocchia' ),
        Field::inst( 'titolarita' ),
        Field::inst( 'zona_agricola' ),
        Field::inst( 'comune' ),
        Field::inst( 'localita' ),
        Field::inst( 'frazione' ),
        Field::inst( 'ubicazione' ),
        Field::inst( 'foglio' ),
        Field::inst( 'sezione' ),
        Field::inst( 'particella' ),
        Field::inst( 'classamento' ),
        Field::inst( 'classe' ),
        Field::inst( 'sup_terreni_ha' ),
        Field::inst( 'sup_ha' ),
        Field::inst( 'valore_medio' ),
        Field::inst( 'rendita' ),
        Field::inst( 'rd' ),
        Field::inst( 'ra' ),
        Field::inst( 'nome_terreno' ),
        Field::inst( 'stato' ),
        Field::inst( 'annuario_nome' ),
        Field::inst( 'annuario_descrizione' ),

        Field::inst( 'latitudine' ),
        Field::inst( 'longitudine' )
    )
    ->debug(true)
    ->process( $_POST )
    ->json();
