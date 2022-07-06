<?php
/**
 * Il file base di configurazione di WordPress.
 *
 * Questo file viene utilizzato, durante l’installazione, dallo script
 * di creazione di wp-config.php. Non è necessario utilizzarlo solo via web
 * puoi copiare questo file in «wp-config.php» e riempire i valori corretti.
 *
 * Questo file definisce le seguenti configurazioni:
 *
 * * Impostazioni database
 * * Chiavi Segrete
 * * Prefisso Tabella
 * * ABSPATH
 *
 * * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Impostazioni database - È possibile ottenere queste informazioni dal proprio fornitore di hosting ** //
/** Il nome del database di WordPress */
define( 'DB_NAME', 'wordpress' );

/** Nome utente del database */
define( 'DB_USER', 'root' );

/** Password del database */
define( 'DB_PASSWORD', '' );

/** Hostname del database */
define( 'DB_HOST', 'localhost' );

/** Charset del Database da utilizzare nella creazione delle tabelle. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Il tipo di Collazione del Database. Da non modificare se non si ha idea di cosa sia. */
define('DB_COLLATE', '');

/**#@+
 * Chiavi Univoche di Autenticazione e di Salatura.
 *
 * Modificarle con frasi univoche differenti!
 * È possibile generare tali chiavi utilizzando {@link https://api.wordpress.org/secret-key/1.1/salt/ servizio di chiavi-segrete di WordPress.org}
 * È possibile cambiare queste chiavi in qualsiasi momento, per invalidare tuttii cookie esistenti. Ciò forzerà tutti gli utenti ad effettuare nuovamente il login.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'k]8m#tjMQbLgv=jtJs;)>6Y&m4+x]vipR@R,nbupRn,wVWj^5(89C1s9b lLcRT9' );
define( 'SECURE_AUTH_KEY',  'R9Iv@$N%|SVLp|+2DbQfZs`mq59mGsOy0R@W~dUI&;&usR>4H5Rbj0TjUAnq/jX~' );
define( 'LOGGED_IN_KEY',    'q,?J{05%1SupOiQ::e{RP#f(`Y6I/jK-m}:M!E(6DJ y%>AWu.1iMC$3bNp7C?yJ' );
define( 'NONCE_KEY',        'kYV5/d4.rgUJ!+|N*mU~3|y($VCx;>{!rR}1Pd3?Yi?w4C7S4h4wk}iAx`s!&;xq' );
define( 'AUTH_SALT',        '2!-gl.H!J@ =N9c5rhmuDnWt=F{v4[Lyb1l~D$&D/+|O]ZS,(iIO1j0m$NrJO4#J' );
define( 'SECURE_AUTH_SALT', ';:OO(c._.BO$N~I1H:e|9Bti<7SF}%u3??:VzRA2LqB]c7hDYUV(U=l`FN[{>Je~' );
define( 'LOGGED_IN_SALT',   '.8a3DYUPWJ9SA;S4WIQh@qdyo$pOHYF]i,y_YN:V@>F^^{0E[MC85plZY,4jm7kE' );
define( 'NONCE_SALT',       'W7qK_j^#s<3.-e2w,S.;!UJ^j?E?k-&S)-]bRY#ku,qxod*bf_ve-Ko!-:SdI=|c' );

/**#@-*/

/**
 * Prefisso Tabella del Database WordPress.
 *
 * È possibile avere installazioni multiple su di un unico database
 * fornendo a ciascuna installazione un prefisso univoco.
 * Solo numeri, lettere e sottolineatura!
 */
$table_prefix = 'wp_';

/**
 * Per gli sviluppatori: modalità di debug di WordPress.
 *
 * Modificare questa voce a TRUE per abilitare la visualizzazione degli avvisi durante lo sviluppo
 * È fortemente raccomandato agli svilupaptori di temi e plugin di utilizare
 * WP_DEBUG all’interno dei loro ambienti di sviluppo.
 *
 * Per informazioni sulle altre costanti che possono essere utilizzate per il debug,
 * leggi la documentazione
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define('WP_DEBUG', false);

/* Finito, interrompere le modifiche! Buon blogging. */

/** Path assoluto alla directory di WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Imposta le variabili di WordPress ed include i file. */
require_once(ABSPATH . 'wp-settings.php');
