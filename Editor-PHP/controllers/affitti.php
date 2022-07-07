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
Editor::inst( $db, 'db_affitti', 'id' )
    ->fields(
        Field::inst( 'id' ),
        Field::inst( 'codice' ),
        Field::inst( 'ubicazione' ),
        Field::inst( 'tipo_contratto' ),
        Field::inst( 'conduttore' ),
        Field::inst( 'inizio' ),
        Field::inst( 'fine' ),
        Field::inst( 'mese' ),
        Field::inst( 'canone_annuo' ),
        Field::inst('cauzione' )->setFormatter(Format::ifEmpty(null)),
        Field::inst( 'istat' )->setFormatter(Format::ifEmpty('no')),
        Field::inst( 'ufficio' ),
        Field::inst( 'n_reg' )->setFormatter(Format::ifEmpty(null)),
        Field::inst( 'serie' ),
        Field::inst( 'data' )->setFormatter(Format::ifEmpty(null)),
        Field::inst( 'id_contratto' ),
        Field::inst( 'stato' ),
        Field::inst( 'immobile' )->setFormatter(Format::ifEmpty(null))
    )
    ->debug(true)
    ->process( $_POST )
    ->json();
