<?php
    get_header();
    //server
    $servername = "localhost";
    $username = "evolve";
    $password = "e_volvetest!8!";
    $db = "wp_evolve";
    $port = "3306";
    //local
    $usernamel = "root";
    $passwordl = "";
    $dbl = "wordpress";
    //tabelle
    $tabella = "evo_cliente";
    $tabellal = "wp_cliente";
    //connect
    $connect = mysqli_connect($servername, $usernamel, $passwordl, $dbl, $port);
    $query = "SELECT * FROM $tabellal";
    //result
    $result = mysqli_query($connect, $query) or die( mysqli_error($connect));

?>

<div class="container">
    <div class="row">
        <div class="col-12">
            <h2 class="title"><?php the_title(); ?></h2>
            <table id="table" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Cognome</th>
                        <th>Data di nascita</th>
                        <th>Indirizzo</th>
                        <th>Telefono</th>
                        <th>Email</th>
                        <th>Ufficio</th>
                        <th>Caso</th>
                        <th>Applicant</th>
                    </tr>
                </thead>
                <?php
                    while ($row = mysqli_fetch_array($result))
                    {
                        echo '
                        <tr>
                            <td>'.$row["id"].'</td>
                            <td>'.$row["nome"].'</td>
                            <td>'.$row["cognome"].'</td>
                            <td>'.$row["data_nascita"].'</td>
                            <td>'.$row["indirizzo"].'</td>
                            <td>'.$row["numero_telefono"].'</td>
                            <td>'.$row["mail"].'</td>
                            <td>'.$row["ufficio_usa"].'</td>
                            <td>'.$row["caso"].'</td>
                            <td>'.$row["id_applicant"].'</td>
                        </tr>
                        ';
                    }
                ?>
            </table>
            <?php if (have_posts()) : while(have_posts()) : the_post(); ?>
                <?php the_content(); ?>
            <?php endwhile; endif; ?>
        </div>

    </div> 
</div>

<?php get_footer(); ?>
