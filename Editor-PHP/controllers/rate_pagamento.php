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
	$id_pagamento=$_GET['id_pagamento'];
}
//modifica
if ($_POST!=null){
	$id_pagamento=$_POST['id_pagamento'];
}
$db->sql( 'set names utf8' );
Editor::inst( $db, 'RATA','id_rata' )
      ->fields(
		  Field::inst('RATA.id_rata','id_rata'),
	      Field::inst( 'RATA.id_pagamento','id_pagamento' ),
	      Field::inst( 'RATA.somma_euro','somma_euro' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'RATA.somma_dollari','somma_dollari' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'RATA.pagata','pagata' ),
	      Field::inst( 'PAGAMENTO.id_fascicolo','id_fascicolo' ),
	      Field::inst( 'RATA.log_utente','log_utente' ),
	      Field::inst( 'RATA.log_azione','log_azione' ),
	      Field::inst( 'RATA.date_time_record_insert','date_time_record_insert' ),
	      Field::inst( 'RATA.date_time_record_update','date_time_record_update' ),
	      Field::inst( 'RATA.note','note' )
      )->leftJoin('PAGAMENTO','PAGAMENTO.id_pagamento','=','RATA.id_pagamento')

		->where('RATA.id_pagamento',$id_pagamento)

	->debug(true)
      ->process( $_POST )
      ->json();

