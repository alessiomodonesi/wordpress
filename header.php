<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Data Tables</title>
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?> id="pagina_chrome">
    <header class="sticky-top" id="header_chrome">
        <nav class="navbar navbar-expand-lg bg-dark">
            <div class="container-fluid">
                <div class="collapse navbar-collapse d-flex justify-content-center">
                    <a class="navbar-brand home" href="http://localhost/wordpress/home-page">Home</a>
                    <div class="row">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="nav-title">

                            <li class="nav-item dropdown menu">
                                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Gestiti & Specialisti</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/gestito">Gestiti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/referente">Referenti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/specialista">Specialisti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/sponsor">Sponsor</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Fascicoli</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/fascicolo">Fascicoli</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/fascicolo-specialista">Fascicoli specialisti</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Pagamenti</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/pagamento">Pagamenti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/metodo-pagamento">Metodi di pagamento</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/acconto">Acconti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/rata">Rate</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/spese">Spese</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Appuntamenti</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/appuntamenti">Appuntamenti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/chiamata">Chiamata</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/prospective">Prospective</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Altro</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/caso">Casi</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/stato">Stati</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/ufficio">Uffici</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/allegati">Allegati</a></li>
                                </ul>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>