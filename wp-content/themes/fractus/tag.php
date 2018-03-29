<?php get_header(); ?>
<section role="main">
	<header>
		<h1><?php _e( 'Архив по тегам: ', 'wlbltheme' ); ?><?php single_tag_title(); ?></h1>
	</header>
	<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
		<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
			<header>
				<?php if ( is_singular() ) { 
					echo '<h1>'; 
				} else {
					echo '<h2 class="entry-title">'; 
				} ?>
				<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" rel="bookmark"><?php the_title(); ?></a>
				<?php if ( is_singular() ) { 
					echo '</h1>'; 
				} else {
				 	echo '</h2>'; 
				} ?> 
				<?php edit_post_link(); ?>
				<section>
					<span><?php the_author_posts_link(); ?></span>
					<span> | </span>
					<span><?php the_time( get_option( 'date_format' ) ); ?></span>
				</section>
			</header>
			<section>
				<?php the_excerpt(); ?>
				<?php if( is_search() ) { ?><div><?php wp_link_pages(); ?></div><?php } ?>
			</section>
			<footer>
				<span><?php _e( 'Категории: ', 'wlbltheme' ); ?><?php the_category( ', ' ); ?></span>
				<span><?php the_tags(); ?></span>
				<?php if ( comments_open() ) { 
					echo '<span>|</span> <span><a href="' . get_comments_link() . '">' . sprintf( __( 'Комментарии', 'wlbltheme' ) ) . '</a></span>';
				} ?>
			</footer> 
		</article>
	<?php endwhile; endif; ?>
	<?php global $wp_query; if ( $wp_query->max_num_pages > 1 ) { ?>
		<nav role="navigation">
			<div><?php next_posts_link(sprintf( __( '%s предыдущие', 'wlbltheme' ), '<span>&larr;</span>' ) ) ?></div>
			<div><?php previous_posts_link(sprintf( __( 'следующие %s', 'wlbltheme' ), '<span>&rarr;</span>' ) ) ?></div>
		</nav>
	<?php } ?>
</section>
<?php get_sidebar(); ?>
<?php get_footer(); ?>