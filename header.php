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
                    <a class="navbar-brand" href="http://localhost/wordpress/home-page" id="home">Home</a>
                    <div class="row">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="nav-title">

                            <li class="nav-item dropdown" id="menu-1">
                                <a class="nav-link dropdown-toggle" href="#" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Clienti&Specialisti</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/cliente">Cliente</a></li>
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/specialista">Specialista</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown" id="menu-2">
                                <a class="nav-link dropdown-toggle" href="#" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Fascicoli</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/fascicolo">Fascicolo</a>
                                    </li>
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/fascicolo-cliente">Fascicolo cliente</a>
                                    </li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/fascicolo-specialista">Fascicolo specialista</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown" id="menu-3">
                                <a class="nav-link dropdown-toggle" href="#" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Pagamenti</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/pagamento">Pagamento</a>
                                    </li>
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/metodo-pagamento">Metodo di pagamento</a>
                                    </li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/rata">Rata</a></li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/spese">Spese</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown" id="menu-4">
                                <a class="nav-link dropdown-toggle" href="#" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false" id="nav-title">Altro</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/caso">Caso</a>
                                    </li>
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/stato">Stato</a>
                                    </li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/ufficio">Ufficio</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>