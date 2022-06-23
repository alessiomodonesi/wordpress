<?php

//include get_theme_file_path( '/assets/data_tables/Editor-PHP-2.0.8/controllers/staff.php' );

//carica correttamente i file css in wordpress
function load_stylesheets() 
{
    wp_enqueue_style('customstyle', get_template_directory_uri() . "/style.css", array(), '1.0', 'all');
    enqueue_my_file('bootstrap', 'css', '', '5.1.3', true);
    enqueue_my_file('data_tables', 'css', 'DataTables-1.12.1', '1.12.1', true);

    //EXSTENSION
    enqueue_my_file('data_tables', 'css', 'Editor-PHP-2.0.8', '2.0.8', true);
    enqueue_my_file('data_tables', 'css', 'Buttons-2.2.3', '2.2.3', true);
    enqueue_my_file('data_tables', 'css', 'Select-1.4.0', '1.4.0', true);
    enqueue_my_file('data_tables', 'css', 'Responsive-2.3.0', '2.3.0', true);
}
add_action('wp_enqueue_scripts', 'load_stylesheets');

//carica correttamente i file js in wordpress
function load_js()
{
    //wp_enqueue_script('customjs', get_template_directory_uri() . '/assets/js/scriptsProva.js', array(), '1.0', true);
    wp_enqueue_script('customjs', get_template_directory_uri() . '/assets/js/scripts.js', array(), '1.0', true);
    wp_enqueue_script('jquery', get_template_directory_uri() . '/assets/jquery-3.6.0.slim.min.js', array(), '3.6.0', true);
    enqueue_my_file('bootstrap', 'js', '', '5.1.3', true);
    enqueue_my_file('data_tables', 'js', 'DataTables-1.12.1', '1.12.1', true);
    
    //EXSTENSION
    enqueue_my_file('data_tables', 'js', 'Editor-PHP-2.0.8', '2.0.8', true);
    enqueue_my_file('data_tables', 'js', 'Buttons-2.2.3', '2.2.3', true);
    enqueue_my_file('data_tables', 'js', 'Select-1.4.0', '1.4.0', true);
    enqueue_my_file('data_tables', 'js', 'Responsive-2.3.0', '2.3.0', true);
}
add_action('wp_enqueue_scripts', 'load_js');
//carica la sezione "menu" all'interno di "aspetto" in wp-admin
add_theme_support('menus');

//carica il menu
register_nav_menus (
    array (
        'top-menu' => __('Top Menù', 'theme'),
        'footer-menu' => __('Footer Menù', 'theme'),
    )
);

//carica i file di ogni estensione/cartella
function enqueue_my_file($folder, $type, $extensions, $ver, $inFooter){
    //echo get_template_directory(). '/assets/' .$folder. '/'. $extensions. '/'. $type. '/'. '*.'. $type;
    foreach( glob( get_template_directory(). '/assets/' .$folder. '/'. $extensions. '/'. $type. '/'. '*.'. $type ) as $file ) {
        $filename = substr($file, strrpos($file, '/') + 1);
        if($type == 'js')
            wp_enqueue_script( $filename, get_template_directory_uri(). '/assets/' .$folder. '/'. $extensions. '/'. $type. '/'. $filename, array(), $ver, $inFooter);
        else
            wp_enqueue_style( $filename, get_template_directory_uri() . '/assets/' .$folder. '/'. $extensions. '/'. $type. '/'. $filename, array(), $ver, 'all');
    }
}

?>