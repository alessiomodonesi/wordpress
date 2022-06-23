<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?php wp_head(); ?>
    </head>

    <body <?php body_class(); ?>>
        <header class="sticky-top text-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <?php wp_nav_menu(
                            array (
                                'theme_location' => 'top_menu',
                                'menu_class' => 'navigation',
                            )
                        ); ?>
                    </div>

                </div>
            </div>
        </header>