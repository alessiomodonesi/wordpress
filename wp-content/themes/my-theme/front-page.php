<?php include('php/connection.php'); get_header(); get_footer(); ?>

<div class="container-fluid front-page-content">
    <div class="row" id="intestazione">
        <div class="col-12">
            <h1 class="title text-center">Home Page</h1>
            <input type="hidden" id="title" value="<?php echo get_the_title(); ?>">
            <hr />
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <?php the_content() ?>
        </div>
    </div>
</div>