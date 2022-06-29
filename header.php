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
                    <a class="navbar-brand" href="http://localhost/wordpress2/home-page" id="home">Home</a>
                    <div class="row">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="nav-title">

                            <li class="nav-item dropdown" id="menu-1">
                                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Gestiti&Specialisti</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/gestito">Gestiti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/referente">Referenti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/specialista">Specialisti</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown" id="menu-2">
                                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Fascicoli</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/fascicolo">Fascicoli</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/fascicolo-specialista">Fascicoli specialisti</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown" id="menu-3">
                                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Pagamenti</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/pagamento">Pagamenti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/metodo-pagamento">Metodi di pagamento</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/acconto">Acconti</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/rata">Rate</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/spese">Spese</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown" id="menu-4">
                                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Altro</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/caso">Casi</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/stato">Stati</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress2/ufficio">Uffici</a></li>
                                </ul>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>