<?php
//PAGINATION
if ( ! function_exists( 'b4st_pagination' ) ) {
	function b4st_pagination() {
		global $wp_query;
		$big = 999999999; // This needs to be an unlikely integer
		// For more options and info view the docs for paginate_links()
		// http://codex.wordpress.org/Function_Reference/paginate_links
		$paginate_links = paginate_links( array(
			'base' => str_replace( $big, '%#%', get_pagenum_link($big) ),
			'current' => max( 1, get_query_var('paged') ),
			'total' => $wp_query->max_num_pages,
			'mid_size' => 5,
			'prev_next' => True,
			'prev_text' => __('<i class="fas fa-angle-left"></i> Newer', 'b4st'),
			'next_text' => __('Older <i class="fas fa-angle-right"></i>', 'b4st'),
			'type' => 'list'
		) );
		$paginate_links = str_replace( "<ul class='page-numbers'>", "<ul class='pagination'>", $paginate_links );
    $paginate_links = str_replace( "<li>", "<li class='page-item'>", $paginate_links );
    $paginate_links = str_replace( "<li class='page-item'><span aria-current='page' class='page-numbers current'>", "<li class='page-item active'><a class='page-link' href='#'>", $paginate_links );
		$paginate_links = str_replace( "<a", "<a class='page-link' ", $paginate_links );
		$paginate_links = str_replace( "</span>", "</a>", $paginate_links );
		$paginate_links = preg_replace( "/\s*page-numbers/", "", $paginate_links );
		// Display the pagination if more than one page is found
		if ( $paginate_links ) {
			echo $paginate_links;
		}
	}
}
// PAGINATION
// function wp_corenavi() {
// 	global $wp_query, $wp_rewrite;
// 	$pages = '';
// 	$max = $wp_query->max_num_pages;
// 	if (!$current = get_query_var('paged')) $current = 1;
// 	$a['base'] = str_replace(999999999, '%#%', get_pagenum_link(999999999));
// 	$a['total'] = $max;
// 	$a['current'] = $current;
	 
// 	$total = 0; //1 - выводить текст "Страница N из N", 0 - не выводить
// 	$a['mid_size'] = 1; //сколько ссылок показывать слева и справа от текущей
// 	$a['end_size'] = 1; //сколько ссылок показывать в начале и в конце
// 	$a['prev_text'] = ''; //текст ссылки "Предыдущая страница"
// 	$a['next_text'] = ''; //текст ссылки "Следующая страница"
	 
// 	if ($max > 1) echo '<nav class="navigation">';
// 	if ($total == 1 && $max > 1) $pages = '<span class="pages">Страница ' . $current . ' из ' . $max . '</span>'."\r\n";
// 	echo $pages . paginate_links($a);
// 	if ($max > 1) echo '</nav>';
// 	}

// $category_id = get_cat_ID( 'Новости' );

// $category_link = get_category_link( $category_id );




add_action( 'after_setup_theme', 'wlbltheme_setup' );
function wlbltheme_setup(){
	load_theme_textdomain( 'wlbltheme', get_template_directory() . '/languages' );
	add_theme_support( 'title-tag' );
	add_theme_support( 'automatic-feed-links' );
	add_theme_support( 'post-thumbnails' );
	global $content_width;
	if ( ! isset( $content_width ) ) $content_width = 640;
		register_nav_menus(
		array( 'main-menu' => __( 'Главное меню', 'wlbltheme' ) )
	);
}

add_action( 'comment_form_before', 'wlbltheme_enqueue_comment_reply_script' );
function wlbltheme_enqueue_comment_reply_script(){
	if ( get_option( 'thread_comments' ) ) { wp_enqueue_script( 'comment-reply' ); }
}
add_filter( 'the_title', 'wlbltheme_title' );
function wlbltheme_title( $title ) {
	if ( $title == '' ) {
		return '&rarr;';
	} else {
		return $title;
	}
}
add_filter( 'wp_title', 'wlbltheme_filter_wp_title' );
function wlbltheme_filter_wp_title( $title ) {
	return $title . esc_attr( get_bloginfo( 'name' ) );
}
add_action( 'widgets_init', 'wlbltheme_widgets_init' );
function wlbltheme_widgets_init(){
	register_sidebar( 
		array (
			'name' => __( 'Боковая панель', 'wlbltheme' ),
			'id' => 'primary-widget-area',
			'before_widget' => '<li id="%1$s" class="widget-container %2$s">',
			'after_widget' => "</li>",
			'before_title' => '<h3 class="widget-title">',
			'after_title' => '</h3>',
		) 
	);
}
function wlbltheme_custom_pings( $comment ){
	$GLOBALS['comment'] = $comment;?>
	<li <?php comment_class(); ?> id="li-comment-<?php comment_ID(); ?>"><?php echo comment_author_link(); ?></li>
	
<?php }
add_filter( 'get_comments_number', 'wlbltheme_comments_number' );
function wlbltheme_comments_number( $count ){
	if ( !is_admin() ) {
		global $id;
		$comments_by_type = &separate_comments( get_comments( 'status=approve&post_id=' . $id ) );
		return count( $comments_by_type['comment'] );
	} else {
		return $count;
	}
}

register_nav_menus(array(
	'top'    => 'Верхнее меню',    //Название месторасположения меню в шаблоне
	'bottom' => 'Нижнее меню'      //Название другого месторасположения меню в шаблоне
));


//Clean wp
	remove_action('wp_head','feed_links_extra', 3); // убирает ссылки на rss категорий
	remove_action('wp_head','feed_links', 2); // минус ссылки на основной rss и комментарии
	remove_action('wp_head','rsd_link');  // сервис Really Simple Discovery
	remove_action('wp_head','wlwmanifest_link'); // Windows Live Writer
	remove_action('wp_head','wp_generator');  // скрыть версию wordpress
	remove_action('wp_head','start_post_rel_link',10,0);
	remove_action('wp_head','index_rel_link');
	remove_action('wp_head','adjacent_posts_rel_link_wp_head', 10, 0 );
	remove_action('wp_head','wp_shortlink_wp_head', 10, 0 );
	remove_action('wp_head', 'rest_output_link_wp_head');
	remove_action('wp_head', 'wp_oembed_add_discovery_links');
	remove_action('template_redirect', 'rest_output_link_header', 11, 0 );
	remove_action('wp_head', 'dns-prefetch', 11, 0 );
	remove_action('wp_head', 'print_emoji_detection_script', 7);
	remove_action('wp_print_styles', 'print_emoji_styles');
	remove_action('wp_head', 'wp_resource_hints', 2 );
	remove_action('wp_head','wp_print_scripts');
	remove_action('wp_head','wp_print_head_scripts',9);
	remove_action('wp_head','wp_enqueue_scripts',9);
	add_action('wp_footer','wp_enqueue_scripts',9);


	function load_scripts() {
		//wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/css/bootstrap.css',false,'4.0.0-alpha.6','all');
		wp_enqueue_style( 'bootstrap', get_template_directory_uri().'/css/bootstrap.css', false,'1.0','all');
		wp_enqueue_style( 'fontawesome', get_template_directory_uri() . '/css/fontawesome.css',false,'5.0.4','all');
		wp_enqueue_style( 'magnific-popup', get_template_directory_uri().'/assets/magnific-popup/magnific-popup.css');
		wp_enqueue_style( 'fonts.googleapis', 'https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic');
		wp_enqueue_style( 'style', get_template_directory_uri().'/css/style.css', false,'1.0','all');


		wp_deregister_script( 'jquery' );
		wp_register_script( 'jquery', get_template_directory_uri() . '/js/jquery/jquery.min.js');
		wp_enqueue_script( 'jquery' );

		wp_enqueue_script( 'jquery-migrate', get_template_directory_uri() . '/js/jquery/jquery-migrate.min.js', array( 'jquery' ), '3.1.1', true );

		//wp_enqueue_script( 'tether', get_template_directory_uri() . '/js/bootstrap/tether.min.js', array( 'jquery' ), '', true );
		wp_enqueue_script( 'popper', get_template_directory_uri() . '/js/bootstrap/popper.min.js', array( 'jquery' ), '', true );
		wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/js/bootstrap/bootstrap.min.js', array( 'jquery' ), '', true );
		wp_enqueue_script( 'vide', get_template_directory_uri() . '/assets/vide/jquery.vide.js', array( 'jquery' ), '', true );
		wp_enqueue_script( 'bxslider', get_template_directory_uri() . '/assets/bxslider/js/jquery.bxslider.js', array( 'jquery' ), '', true );
		wp_enqueue_script( 'magnific', get_template_directory_uri() . '/assets/magnific-popup/magnific-popup.js', array( 'jquery' ), '', true );
		wp_enqueue_script( 'script', get_template_directory_uri() . '/js/script.js', array( 'jquery' ), '', true );

	}
	add_action( 'wp_enqueue_scripts', 'load_scripts');