<?php get_header(); ?>
<section role="main">
	<header>
		<h1><?php 
		if ( is_day() ) { 
			printf( __( 'Архив за день: %s', 'wlbltheme' ), get_the_time( get_option( 'date_format' ) ) ); 
		} elseif ( is_month() ) { 
			printf( __( 'Архив за месяц: %s', 'wlbltheme' ), get_the_time( 'F Y' ) ); 
		} elseif ( is_year() ) { 
			printf( __( 'Архив за год: %s', 'wlbltheme' ), get_the_time( 'Y' ) ); 
		} else {
			_e( 'Архив', 'wlbltheme' ); 
		}
		?></h1>
	</header>
	<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
	<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
		<header>
			<?php if ( is_singular() ) { 
				echo '<h1>'; 
			} else { 
				echo '<h2>'; 
			} ?>
			<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" rel="bookmark">
				<?php the_title(); ?>
			</a>
			<?php if ( is_singular() ) { 
				echo '</h1>'; 
			} else { 
				echo '</h2>'; 
			} ?> 
			<?php edit_post_link(); ?>
		</header>
		<section>
			<?php the_excerpt(); ?>
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
	<?php global $wp_query; 
	if ( $wp_query->max_num_pages > 1 ) { ?>
		<nav role="navigation">
			<div><?php next_posts_link(sprintf( __( '%s предыдущие', 'wlbltheme' ), '<span>&larr;</span>' ) ) ?></div>
			<div><?php previous_posts_link(sprintf( __( 'следующие %s', 'wlbltheme' ), '<span>&rarr;</span>' ) ) ?></div>
		</nav>
	<?php } ?>
</section>
<?php get_sidebar(); ?>
<?php get_footer(); ?>