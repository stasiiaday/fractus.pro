<?php get_header(); ?>
<section role="main">
	<header>
		<?php the_post(); ?>
		<h1><?php _e( 'Архив пользователя', 'wlbltheme' ); ?>: <?php the_author_link(); ?></h1>
		<?php if ( '' != get_the_author_meta( 'user_description' ) ) echo apply_filters( 'archive_meta', '<div >' . get_the_author_meta( 'user_description' ) . '</div>' ); ?>
		<?php rewind_posts(); ?>
	</header>
	<?php while ( have_posts() ) : the_post(); ?>
		<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
			<header>
			<?php if ( is_singular() ) { echo '<h1>'; } else { echo '<h2>'; } ?><a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" rel="bookmark"><?php the_title(); ?></a><?php if ( is_singular() ) { echo '</h1>'; } else { echo '</h2>'; } ?> <?php edit_post_link(); ?>
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
	<?php endwhile; ?>
	<?php global $wp_query; if ( $wp_query->max_num_pages > 1 ) { ?>
		<nav role="navigation">
			<div><?php next_posts_link(sprintf( __( '%s older', 'wlbltheme' ), '<span>&larr;</span>' ) ) ?></div>
			<div><?php previous_posts_link(sprintf( __( 'newer %s', 'wlbltheme' ), '<span>&rarr;</span>' ) ) ?></div>
		</nav>
	<?php } ?>
</section>
<?php get_sidebar(); ?>
<?php get_footer(); ?>