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
Editor::inst( $db, 'wp_cliente' )
	->fields(
		Field::inst( 'id' ),
		Field::inst( 'nome' ),
		Field::inst( 'cognome' ),
		Field::inst( 'data_nascita' ),
		Field::inst( 'indirizzo' ),
		Field::inst( 'numero_telefono' ),
		Field::inst( 'mail' ),
		Field::inst( 'ufficio_usa' ),
		Field::inst( 'caso' ),
		Field::inst( 'id_applicant' ),
	)
	->debug(true)
	->process( $_POST )
	->json();