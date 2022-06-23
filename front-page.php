<?php get_header(); ?>

<div class="container">
    <div class="row">
        <div class="col-12">
            <h2 class="title"><?php the_title(); ?></h2>

            <?php if (have_posts()) : while(have_posts()) : the_post(); ?>
                <?php the_content(); ?>
            <?php endwhile; endif; ?>
            
        </div> 

    </div> 
</div>

<?php get_footer(); ?>
