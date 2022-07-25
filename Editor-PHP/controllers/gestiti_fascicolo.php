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
if ($_GET!=null) {
	$id_fascicolo = $_GET['id_fascicolo'];
}
if ($_POST!=null){
	$id_fascicolo = $_POST['id_fascicolo'];
}
//modifica

$db->sql( 'set names utf8' );
Editor::inst( $db, 'GESTITO','id' )
      ->fields(
		  Field::inst('GESTITO.id','id'),
	      Field::inst( 'GESTITO.nome','nome' ),
	      Field::inst( 'GESTITO.middle_name','middle_name' ),
	      Field::inst( 'GESTITO.cognome','cognome' ),
	      Field::inst( 'GESTITO.data_nascita','data_nascita' ),
	      Field::inst( 'GESTITO.indirizzo','indirizzo' ),
	      Field::inst( 'GESTITO.numero_telefono','numero_telefono' ),
	      Field::inst( 'GESTITO.mail','mail' ),
	      Field::inst( 'GESTITO.id_fascicolo','id_fascicolo' ),
	      Field::inst( 'GESTITO.log_utente','log_utente' ),
	      Field::inst( 'GESTITO.log_azione','log_azione' ),
	      Field::inst( 'GESTITO.date_time_record_insert','date_time_record_insert' ),
	      Field::inst( 'GESTITO.date_time_record_update','date_time_record_update' ),
	      Field::inst( 'GESTITO.note','note' )
      )
		->where('GESTITO.id_fascicolo',$id_fascicolo)

	->debug(true)
      ->process( $_POST )
      ->json();

