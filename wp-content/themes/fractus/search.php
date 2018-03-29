<?php get_header(); ?>
<section role="main">
	<?php if ( have_posts() ) : ?>
		<header>
			<h1><?php printf( __( 'Результат поиска по запросу: %s', 'wlbltheme' ), get_search_query() ); ?></h1>
		</header>
	<?php while ( have_posts() ) : the_post(); ?>
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
				<?php edit_post_link(); ?>
			</header>
			<section>
				<?php if ( has_post_thumbnail() ) { the_post_thumbnail(); } ?>
				<?php the_content(); ?>
				<div><?php wp_link_pages(); ?></div>
			</section>
		</article>
	<?php endwhile; ?>
	<?php global $wp_query; if ( $wp_query->max_num_pages > 1 ) { ?>
		<nav role="navigation">
			<div><?php next_posts_link(sprintf( __( '%s предыдущие', 'wlbltheme' ), '<span>&larr;</span>' ) ) ?></div>
			<div><?php previous_posts_link(sprintf( __( 'следующие %s', 'wlbltheme' ), '<span>&rarr;</span>' ) ) ?></div>
		</nav>
	<?php } ?>
	<?php else : ?>
		<article id="post-0">
			<header>
				<h2><?php _e( 'Ничего не найдено', 'wlbltheme' ); ?></h2>
			</header>
			<section>
				<p><?php _e( 'Извините, по вашему запросу ничего не найдено. Пожалуйста попробуйте другой запрос.', 'wlbltheme' ); ?></p>
				<?php get_search_form(); ?>
			</section>
		</article>
	<?php endif; ?>
</section>
<?php get_sidebar(); ?>
<?php get_footer(); ?>