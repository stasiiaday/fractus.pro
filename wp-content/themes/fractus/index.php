
<?php get_header(); ?> 
<div id="blog">
	<div class="line">
			<div class="container">
				<div class="row">
					<div class="col-6">
				<h2>Блог</h2>
				</div>
				<div class="col-6">
				<button type="button" class="btn btn-danger btn-lg">Регистрируемся</button>
				</div>
				</div>
			</div>
	</div>
	<div class="container">
		<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<header>
					<?php if ( is_singular() ) { 
						echo '<h1>'; 
					} else {
						echo '<h2>'; 
					} ?>
						<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" rel="bookmark"><?php the_title(); ?></a>
					<?php if ( is_singular() ) { 
						echo '</h1>'; 
					} else { 
						echo '</h2>'; 
					} ?> 
					<section class="date">
						<span><?php the_time( get_option( 'date_format' ) ); ?></span>
					</section>
				</header>
				<div class="row">
					<div class="col-4">
					<a href="<?php the_permalink() ?>"><?php the_post_thumbnail() ?></a>
					</div>
					<div class="col-lg-6 text">
						<?php the_excerpt(); ?>
						<?php if( is_search() ) { ?><div><?php wp_link_pages(); ?></div><?php } ?>
						<a href="<?php the_permalink(); ?>" class="btn btn-outline-danger">подробнее</a>
					</div>
				</div>
			</article>
		<?php endwhile; endif; ?>

		<?php //if ($wp_query->max_num_pages > 1 ) : ?>
			<?php //wp_corenavi (); ?>
		<?php //endif ?>
			
		<?php if(have_posts()): while(have_posts()): the_post(); ?>

        <?php get_template_part('loops/index-post', get_post_format()); ?>

        <?php endwhile; ?>

       <?php if ( function_exists('b4st_pagination') ) { b4st_pagination(); } else if ( is_paged() ) { ?>
		<ul class="pagination">
		<li class="page-item older">
			<?php next_posts_link('<i class="fas fa-arrow-left"></i> ' . __('Previous', 'b4st')) ?></li>
		<li class="page-item newer">
			<?php previous_posts_link(__('Next', 'b4st') . ' <i class="fas fa-arrow-right"></i>') ?></li>
		</ul>
		<?php } ?>

		<?php
		else:
			wp_redirect(get_bloginfo('url').'/404', 404);
			exit;
		endif;
		?>
	</div>
</div>


<?php get_footer(); ?>