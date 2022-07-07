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
Editor::inst( $db, 'db_parrocchie', 'codice' )
    ->fields(
        Field::inst( 'codice' ),
        Field::inst( 'tipo_ente' ),
        Field::inst( 'denominazione' ),
        Field::inst( 'via' ),
        Field::inst( 'cap' ),
        Field::inst( 'comune' ),
        Field::inst( 'localita' ),
        Field::inst( 'provincia' ),
        Field::inst( 'vicariato' ),
        Field::inst( 'cf' ),
        Field::inst( 'referente' ),
        Field::inst( 'email' ),
        Field::inst( 'telefono' ),
        Field::inst( 'iban1' ),
        Field::inst( 'banca1' ),
        Field::inst( 'iban2' ),
        Field::inst( 'banca2' ),
        Field::inst( 'iban3' ),
        Field::inst( 'banca3' ),
        Field::inst( 'latitudine' ),
        Field::inst( 'longitudine' ),
        Field::inst( 'abitanti' )
    )
    ->debug(true)
    ->process( $_POST )
    ->json();
