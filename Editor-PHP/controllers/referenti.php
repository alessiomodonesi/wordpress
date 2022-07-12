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
Editor::inst( $db, 'REFERENTE','id' )
      ->fields(
		  Field::inst('REFERENTE.id'),
	      Field::inst( 'REFERENTE.nome' ),
	      Field::inst( 'REFERENTE.cognome' ),
	      Field::inst( 'REFERENTE.middle_name' ),
	      Field::inst( 'REFERENTE.data_nascita' ),
	      Field::inst( 'REFERENTE.indirizzo' ),
	      Field::inst( 'REFERENTE.numero_telefono' ),
	      Field::inst( 'REFERENTE.mail' ),
	      Field::inst( 'REFERENTE.sponsor' ),
	      Field::inst( 'REFERENTE.perc_sponsor' ),
	      Field::inst( 'REFERENTE.obbligo_gdpr' ),
	      Field::inst( 'REFERENTE.log_utente' ),
	      Field::inst( 'REFERENTE.log_azione' ),
	      Field::inst( 'REFERENTE.date_time_record_insert' ),
	      Field::inst( 'REFERENTE.date_time_record_update' ),
	      Field::inst( 'REFERENTE.note' ),
	      Field::inst('SPONSOR.nome','s_nome'),
	      Field::inst('SPONSOR.id','s_id')
      )->leftJoin('SPONSOR','SPONSOR.id','=','REFERENTE.sponsor')
	->debug(true)
      ->process( $_POST )
      ->json();

