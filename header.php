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
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                            <li class="nav-item dropdown" id="clienti-specialisti">
                                <a class="nav-link dropdown-toggle" href="#" id="nav-title" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">Clienti & Specialisti</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/cliente">Cliente</a></li>
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/specialista">Specialista</a></li>
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/cliente-specialista">Cliente/Specialista</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown" id="pagamenti">
                                <a class="nav-link dropdown-toggle" href="#" id="nav-title" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">Pagamenti</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/pagamento">Pagamento</a>
                                    </li>
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/metodo-pagamento">Metodo di pagamento</a>
                                    </li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/rata">Rata</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown" id="casi">
                                <a class="nav-link dropdown-toggle" href="#" id="nav-title" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">Casi</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item"
                                            href="http://localhost/wordpress/documenti-caso">Documenti</a>
                                    </li>
                                    <li><a class="dropdown-item" href="http://localhost/wordpress/tipo-caso">Tipo di caso</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>