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
use DeliciousBrains\WPMDB\Container\Dotenv\Validator;
use Illuminate\Support\Str;

// Build our Editor instance and process the data coming from _POST
//lettura

//modifica
if ($_POST!=null AND $_POST['action']=="create") {
	$id_fascicolo= $_POST['id_fascicolo'];
	$_POST['data'][0]['id_fascicolo'] = $id_fascicolo;

}


$db->sql( 'set names utf8' );
Editor::inst( $db, 'SPESE','id' )
      ->fields(
		  Field::inst('SPESE.id','id'),
	      Field::inst( 'SPESE.id_fascicolo','id_fascicolo' ),
	      Field::inst( 'SPESE.somma_euro','somma_euro' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'SPESE.somma_dollari','somma_dollari' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'SPESE.rimborso','rimborso' ),
	      Field::inst( 'SPESE.log_utente','log_utente' ),
	      Field::inst( 'SPESE.log_azione','log_azione' ),
	      Field::inst( 'SPESE.date_time_record_insert','date_time_record_insert' ),
	      Field::inst( 'SPESE.date_time_record_update','date_time_record_update' ),
	      Field::inst( 'SPESE.note','note' )
      )


	->debug(true)
      ->process( $_POST )
      ->json();

