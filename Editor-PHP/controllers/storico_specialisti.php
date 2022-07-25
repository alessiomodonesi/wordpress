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
if ($_GET!=null){
	$id_fascicolo=$_GET['id_fascicolo'];
}
//modifica
if ($_POST!=null){
	$id_fascicolo=$_POST['id_fascicolo'];
	$_POST['data'][0]['id_fascicolo']=$id_fascicolo;
	$_POST['data'][0]['data_assegnazione']=date('Y-m-d');




}
$db->sql( 'set names utf8' );
Editor::inst( $db, 'FASCICOLO_SPECIALISTA','id' )
      ->fields(
		  Field::inst('FASCICOLO_SPECIALISTA.id_fascicolo','id_fascicolo'),
	      Field::inst( 'FASCICOLO_SPECIALISTA.id_specialista','id_specialista' ),
	      Field::inst( 'FASCICOLO_SPECIALISTA.data_assegnazione','data_assegnazione' ),
	      Field::inst( 'FASCICOLO_SPECIALISTA.data_conclusione','data_conclusione' ),
	      Field::inst( 'FASCICOLO_SPECIALISTA.numero_specialista','numero_specialista' ),
	      Field::inst( 'FASCICOLO_SPECIALISTA.accettato','accettato' ),
	      Field::inst( 'FASCICOLO_SPECIALISTA.log_utente','log_utente' ),
	      Field::inst( 'FASCICOLO_SPECIALISTA.log_azione','log_azione' ),
	      Field::inst( 'FASCICOLO_SPECIALISTA.date_time_record_insert','date_time_record_insert' ),
	      Field::inst( 'FASCICOLO_SPECIALISTA.date_time_record_update','date_time_record_update' ),
	      Field::inst( 'FASCICOLO_SPECIALISTA.note','note' ),
	      Field::inst('SPECIALISTA.nome','specialista_nome'),
	      Field::inst('SPECIALISTA.middle_name','specialista_middle_name'),
	      Field::inst('SPECIALISTA.codice_fiscale','specialista_codice_fiscale'),
	      Field::inst('SPECIALISTA.cognome','specialista_cognome'),
      )
       ->leftJoin('SPECIALISTA','SPECIALISTA.id','=','FASCICOLO_SPECIALISTA.id_specialista')
		->where('FASCICOLO_SPECIALISTA.id_fascicolo',$id_fascicolo)

	->debug(true)
      ->process( $_POST )
      ->json();

