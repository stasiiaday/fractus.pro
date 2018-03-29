<!DOCTYPE html>
<html <?php language_attributes(); ?>>
	<head>
		<meta charset="<?php bloginfo( 'charset' ); ?>" />
		<!-- <link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_uri(); ?>" /> -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/favicon.ico" type="image/x-icon">
		<?php wp_head(); ?>
	</head>
	<body <?php body_class(); ?> <?php if(!is_front_page()) echo "data-header-type=\"white\"" ?>>

	
			
<div id="header"<?php if(!is_front_page()) : ?> class="white"<?php endif; ?>>
			<header class="container">
				<div class="row">
					<div class="col-4 col-md-2">
						<a href="<?php echo get_site_url(); ?>" id="logotype">
							<picture>
								<source srcset="<?php echo get_template_directory_uri(); ?>/images/logo-white.svg" type="image/svg+xml">
								<img src="<?php echo get_template_directory_uri(); ?>/images/logo-white.png" class="img-fluid" alt="...">
							</picture>
						</a>
					</div>
					<div class="col-8 col-md-10 navi">

						<?php 
							wp_nav_menu( array(
							'container'       => 'nav', 
							'container_class' => 'top-menu',
							'menu_class'=>'main-menu',
							'menu_id'=> 'menu',
							'theme_location'=>'top',
							'after'=>''
							) );
						?>
                       
						<div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									рус
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item eng" href="#">eng</a>
									<a class="dropdown-item ukr" href="#">укр</a>
								</div>
						</div>
						<div class="enter">
						<a href="">Войти</a>
						</div>
						<a id="trig-menu" href="#menu-location-top"></a>
						
				    </div>
				</div>
			</header>
		</div>		