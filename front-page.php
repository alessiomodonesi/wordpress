<?php include('php/connection.php'); get_header(); get_footer(); ?>

<div class="container-fluid">
    <div class="row" id="intestazione">
        <div class="col-12">
            <h1 class="title text-center">Home Page</h1>
            <input type="hidden" id="title" value="<?php echo get_the_title(); ?>"><hr />
        </div>
    </div>

    <div class="row">
        <div class="col-3"></div>
            <div class="col-6">
                <p><?php the_content() ?></p>
            </div>
        <div class="col-3"></div>
    </div>
</div>