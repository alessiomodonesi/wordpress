<?php
include('get_browser.php');
if ($browser == "Google Chrome") {
    //carica i file .css 
    function load_stylesheets()
    {
        wp_enqueue_style('customstyle', get_template_directory_uri() . "/style.css", array(), '1.0', 'all');
        wp_enqueue_style('bootstrap', get_template_directory_uri() . "/css/bootstrap/bootstrap.min.css'", array(), '5.1.3', 'all');
        wp_enqueue_style('data_tables', get_template_directory_uri() . "/datatables/Data-1.12.1/css/jquery.dataTables.min.css", array(), '1.12.1', 'all');
        wp_enqueue_style('responsive_css', get_template_directory_uri() . "/responsive/css/responsive.jqueryui.min.css", array(), '2.3.0', 'all');
        
        //wp_enqueue_style('exstension_css', "https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.12.1/b-2.2.3/b-colvis-2.2.3/b-html5-2.2.3/b-print-2.2.3/datatables.min.css", array(), '1.12.1', 'all');
    }
    add_action('wp_enqueue_scripts', 'load_stylesheets');
    
    //carica correttamente i file .js
    function load_js()
    {
        wp_enqueue_script('jquery', get_template_directory_uri() . '/js/jquery-3.6.0.slim.min.js', array(), '3.6.0', true);
        wp_enqueue_script('bootstrap', get_template_directory_uri() . '/js/bootstrap/bootstrap.bundle.min.js', array(), '5.1.3', true);
        wp_enqueue_script('data_tables', get_template_directory_uri() . '/datatables/Data-1.12.1/js/jquery.dataTables.min.js', array(), '1.12.1', true);
        wp_enqueue_style('responsive_js', get_template_directory_uri() . "/responsive/js/responsive.jqueryui.min.js", array(), '2.3.0', 'all');

        /*wp_enqueue_script('pdfmake', get_template_directory_uri() . '/pdfmake/pdfmake.min.js', array(), '0.1.36', true);
        wp_enqueue_script('fontspdfmake', get_template_directory_uri() . '/pdfmake/vfs_fonts.js', array(), '0.1.36', true);*/
        
        //wp_enqueue_script('exstension_js', "https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.12.1/b-2.2.3/b-colvis-2.2.3/b-html5-2.2.3/b-print-2.2.3/datatables.min.js", array(), '0.1.36', true);
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

//carica i file di ogni estensione/cartella
/*
Esempio
//enqueue_my_file('buttons', 'css', '2.2.3', true);
*/
function enqueue_my_file($folder, $type, $ver, $inFooter){
    foreach( glob( get_template_directory(). '/' .$folder. '/'. $type. '/'. '*.'. $type ) as $file ) {
        $filename = substr($file, strrpos($file, '/') + 1);
        if($type == 'js')
            wp_enqueue_script( $filename, get_template_directory_uri(). '/' .$folder. '/'. $type. '/'. $filename, array(), $ver, $inFooter);
        else
            wp_enqueue_style( $filename, get_template_directory_uri() . '/' .$folder. '/'. $type. '/'. $filename, array(), $ver, 'all');
    }
}
?>