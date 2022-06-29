<?php
include('get_browser.php');
if ($browser == "Google Chrome") {
    //carica i file .css 
    function load_stylesheets()
    {
        wp_enqueue_style('customstyle', get_template_directory_uri() . "/style.css", array(), '1.0', 'all');
        wp_enqueue_style('bootstrap', get_template_directory_uri() . "/css/bootstrap/bootstrap.min.css'", array(), '5.1.3', 'all');
        wp_enqueue_style('data_tables', get_template_directory_uri() . "/datatables/Data-1.12.1/css/jquery.dataTables.min.css", array(), '1.12.1', 'all');
    }
    add_action('wp_enqueue_scripts', 'load_stylesheets');
    
    //carica correttamente i file .js
    function load_js()
    {
        wp_enqueue_script('jquery', get_template_directory_uri() . '/js/jquery-3.6.0.slim.min.js', array(), '3.6.0', true);
        wp_enqueue_script('bootstrap', get_template_directory_uri() . '/js/bootstrap/bootstrap.bundle.min.js', array(), '5.1.3', true);
        wp_enqueue_script('data_tables', get_template_directory_uri() . '/datatables/Data-1.12.1/js/jquery.dataTables.min.js', array(), '1.12.1', true);
        //Custom JS
        wp_enqueue_script('createInputDiv', get_template_directory_uri() . '/js/styles/createInputModals.js', array(), '1.0', true);
        wp_enqueue_script('createTh', get_template_directory_uri() . '/js/styles/createTh.js', array(), '1.0', true);
        wp_enqueue_script('getTitle', get_template_directory_uri() . '/js/styles/getTitle.js', array(), '1.0', true);
        wp_enqueue_script('shiftBtn', get_template_directory_uri() . '/js/styles/shiftButton.js', array(), '1.0', true);

        wp_enqueue_script('createTable', get_template_directory_uri() . '/js/controllers/createTable.js', array(), '1.0', true);
        wp_enqueue_script('addUser', get_template_directory_uri() . '/js/controllers/addUser.js', array(), '1.0', true);
        wp_enqueue_script('deleteUser', get_template_directory_uri() . '/js/controllers/deleteUser.js', array(), '1.0', true);
        wp_enqueue_script('editUser', get_template_directory_uri() . '/js/controllers/editUser.js', array(), '1.0', true);
        wp_enqueue_script('updateUser', get_template_directory_uri() . '/js/controllers/updateUser.js', array(), '1.0', true);
    }
    add_action('wp_enqueue_scripts', 'load_js');
    add_theme_support('menus');
}
?>