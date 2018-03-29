<?php get_header(); ?>

<?php
// $category_id = get_cat_ID( 'Новости' );
//$category_link = get_category_link( $category_id );

$category = get_the_category();
$category_link = get_category_link($category[0]->cat_ID);

// $category_id = get_cat_ID($category[0]->cat_ID);
// echo $category_id;
// $category_link = get_category_link($category_id);

// $category = get_the_category();
// echo $category[0]->cat_ID;

?>

<div id="singlepost">
	<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
	<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
		<header>
			<div class="bg">
				<div class="container">
					<section>
						<span class="date"><?php the_time( get_option( 'date_format' ) ); ?></span>
					</section>
					<?php if ( is_singular() ) { 
						echo '<h1>'; 
					} else { 
						echo '<h2>'; 
					} ?>
					<?php the_title(); ?>
					<?php if ( is_singular() ) {
						echo '</h1>'; 
					} else {
						echo '</h2>'; 
					} ?> 
					<a href="<?php echo esc_url( $category_link ); ?> " class="btn btn-outline-danger">вернуться в список статей &#8594;</a>
				</div>
			</div>
		</header>
		<div class="container">
			<section class="row content">
			
				<div class="col-sm-12 col-md-2 share">
					<span>поделиться</span>
					<a href="#" class="facebook"></a>
					<a href="#" class="twitter"></a>
					<a href="#" class="pocket"></a>
					<a href="#" class="rss"></a>
				</div>
				<div class="col-sm-12 col-md-10 col-lg-8 ">
					<?php the_content(); ?>
					<div><?php wp_link_pages(); ?></div>
					<nav role="navigation">
						<div class="previos-post"><?php previous_post_link( '%link', '<span class="meta-nav">&larr;</span> %title' ); ?></div>
						<div class="next-post"><?php next_post_link( '%link', '%title <span class="meta-nav">&rarr;</span>' ); ?></div>
					</nav>
				</div>
			</section>
		</div>
	</article>
	<?php endwhile; endif; ?>
			
</div>

<?php get_footer(); ?>