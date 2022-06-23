<?php

//carica correttamente i file css in wordpress
function load_stylesheets() 
{
    wp_enqueue_style('customstyle', get_template_directory_uri() . "/style.css", array(), '1.0', 'all');
    wp_enqueue_style('bootstrap_css', get_template_directory_uri() . "/assets/bootstrap/css/bootstrap.min.css", array(), '5.1.3', 'all');
    wp_enqueue_style('data_tables_css', get_template_directory_uri() . '/assets/data_tables/DataTables-1.12.1/css/jquery.dataTables.css', array(), '1.12.1', 'all');
}
add_action('wp_enqueue_scripts', 'load_stylesheets');

//carica correttamente i file js in wordpress
function load_js()
{
    wp_enqueue_script('bootstrap_js', get_template_directory_uri() . '/assets/bootstrap/js/bootstrap.bundle.min.js', array(), '5.1.3', true);
    wp_enqueue_script('jquery', get_template_directory_uri() . '/assets/jquery-3.6.0.slim.min.js', array(), '3.6.0', true);
    wp_enqueue_script('data_tables_js', get_template_directory_uri() . '/assets/data_tables/DataTables-1.12.1/js/jquery.dataTables.js', array(), '1.12.1', true);
    wp_enqueue_script('customjs', get_template_directory_uri() . '/assets/js/scripts.js', array(), '1.0', true);
    //wp_enqueue_script('customjs', get_template_directory_uri() . '/assets/js/scriptsProva.js', array(), '1.0', true);
    wp_enqueue_script('editor_js', get_template_directory_uri() . '/assets/data_tables/Editor-PHP-2.0.8/js/dataTables.editor.min.js', array(), '1.0', true);
    wp_enqueue_script('editor_js', get_template_directory_uri() . '/assets/data_tables/Buttons-2.2.3/js/dataTables.buttons.min.js', array(), '1.0', true);
    wp_enqueue_script('editor_js', get_template_directory_uri() . '/assets/data_tables/Select-1.4.0/js/dataTables.select.min.js', array(), '1.0', true);
    wp_enqueue_script('editor_js', get_template_directory_uri() . '/assets/data_tables/Responsive-2.3.0/js/dataTables.responsive.min.js', array(), '1.0', true);
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

?>