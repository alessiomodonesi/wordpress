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

$db->sql( 'set names utf8' );
Editor::inst( $db, 'FASCICOLO','id' )
      ->fields(
		  Field::inst('FASCICOLO.id','id'),
	      Field::inst( 'FASCICOLO.nickname','nickname' ),
	      Field::inst( 'FASCICOLO.data_apertura','data_apertura' ),
	      Field::inst( 'FASCICOLO.data_chiusura','data_chiusura' ),
	      Field::inst( 'FASCICOLO.stato','stato' ),
	      Field::inst( 'FASCICOLO.id_ufficio','id_ufficio' ),
	      Field::inst( 'FASCICOLO.persone_gestite','persone_gestite' ),
	      Field::inst( 'FASCICOLO.referente','referente' ),
	      Field::inst( 'FASCICOLO.caso','caso' ),
	      Field::inst( 'FASCICOLO.link','link' ),
	      Field::inst( 'FASCICOLO.log_utente','log_utente' ),
	      Field::inst( 'FASCICOLO.log_azione','log_azione' ),
	      Field::inst( 'FASCICOLO.date_time_record_insert','date_time_record_insert' ),
	      Field::inst( 'FASCICOLO.date_time_record_update','date_time_record_update' ),
	      Field::inst( 'FASCICOLO.note','note' ),
	      Field::inst('STATO.nome','stato_nome'),
	      Field::inst('UFFICIO.nome','ufficio_nome'),
	      Field::inst('REFERENTE.nome','referente_nome'),
	      Field::inst('REFERENTE.middle_name','referente_middle_name'),
	      Field::inst('REFERENTE.cognome','referente_cognome'),
	      Field::inst('CASO.nome','caso_nome'),
      )->leftJoin('STATO','STATO.id','=','stato')
       ->leftJoin('UFFICIO','UFFICIO.id','=','id_ufficio')
       ->leftJoin('REFERENTE','REFERENTE.id','=','referente')
       ->leftJoin('CASO','CASO.id','=','caso')
	->debug(true)
      ->process( $_POST )
      ->json();

