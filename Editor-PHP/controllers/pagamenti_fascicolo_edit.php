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

if ($_POST!=null and $_POST["action"]=="create"){
	$id_fascicolo=$_POST['id_fascicolo'];
	$_POST['data'][0]['id_fascicolo']=$id_fascicolo;
	$_POST['data'][0]['creazione']=date('Y-m-d');
}
$db->sql( 'set names utf8' );
Editor::inst( $db, 'PAGAMENTO','id_pagamento' )
      ->fields(
		  Field::inst('PAGAMENTO.id_pagamento','id_pagamento'),
	      Field::inst( 'PAGAMENTO.id_fascicolo','id_fascicolo' ),
	      Field::inst( 'PAGAMENTO.creazione','creazione' ),
	      Field::inst( 'PAGAMENTO.totale_euro','totale_euro' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'PAGAMENTO.totale_vero_euro','totale_vero_euro' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'PAGAMENTO.totale_dollari','totale_dollari' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'PAGAMENTO.totale_vero_dollari','totale_vero_dollari' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'PAGAMENTO.accettato','accettato' ),
	      Field::inst( 'PAGAMENTO.log_utente','log_utente' ),
	      Field::inst( 'PAGAMENTO.log_azione','log_azione' ),
	      Field::inst( 'PAGAMENTO.date_time_record_insert','date_time_record_insert' ),
	      Field::inst( 'PAGAMENTO.date_time_record_update','date_time_record_update' ),
	      Field::inst( 'PAGAMENTO.note','note' )
      )

	->debug(true)
      ->process( $_POST )
      ->json();

