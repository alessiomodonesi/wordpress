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
	$id_rata=$_GET['id_rata'];
}
if ($_POST!=null){
	$id_rata=$_POST['id_rata'];
}

$db->sql( 'set names utf8' );
Editor::inst( $db, 'ACCONTO','id_acconto' )
      ->fields(
		  Field::inst('ACCONTO.id_acconto','id_acconto'),
	      Field::inst( 'ACCONTO.id_rata','id_rata' ),
	      Field::inst( 'ACCONTO.somma_euro','somma_euro' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'ACCONTO.somma_dollari','somma_dollari' )->setFormatter( Format::ifEmpty(null) ),
	      Field::inst( 'ACCONTO.data_pagamento','data_pagamento' ),
	      Field::inst( 'ACCONTO.metodo_pagamento','metodo_pagamento' ),
	      Field::inst( 'ACCONTO.log_utente','log_utente' ),
	      Field::inst( 'ACCONTO.log_azione','log_azione' ),
	      Field::inst( 'ACCONTO.date_time_record_insert','date_time_record_insert' ),
	      Field::inst( 'ACCONTO.date_time_record_update','date_time_record_update' ),
	      Field::inst( 'ACCONTO.note','note' ),
	      Field::inst( 'RATA.id_pagamento','id_pagamento' ),
	      Field::inst( 'METODO_PAGAMENTO.nome','nome_pagamento' )

      )->leftJoin('METODO_PAGAMENTO','METODO_PAGAMENTO.id','=','ACCONTO.metodo_pagamento')
	-> leftJoin("RATA","RATA.id_rata","=","ACCONTO.id_rata")

		->where('ACCONTO.id_rata',$id_rata)

	->debug(true)
      ->process( $_POST )
      ->json();

