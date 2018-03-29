<?php
/*
Template Name: Main
*/
?>

<?php get_header(); ?>


<div id="block1">
	<div class="vide" data-vide-bg="mp4: <?php echo get_template_directory_uri(); ?>/video/video, webm: <?php echo get_template_directory_uri(); ?>/video/video2, ogv: <?php echo get_template_directory_uri(); ?>/video/video1">
	</div>
	<div class="overlay"></div>
	<div class="triangle"></div>

	<div class="container">
		<section>
			<h1>Инструмент поиска лучших товарных предложений, анализ рыночных цен</h1>
			<p>Ресурс, который поможет быстро и без проблем найти оптимальные ценовые решения у оптовиков и найти партнеров для своего
						бизнеса </p>
			<button type="button" class="btn btn-danger btn-lg">Присоединяйся</button>
			
			<div id="video">
					<a class="popup-youtube" rel="nofollow" href="https://www.youtube.com/watch?v=pfDU-2s9D5o">Как работает Fractus</a>
			</div>
		</section>		
   </div>	
</div>

<!-- STRUCTURE SECTION -->
<div id="structure">
	<div class="container">
		<h2>Структура сообщества</h2>
	
		<div class="tabs">
			<div class="buttons">
				<ul class="tabs__caption">
						<li class="active">Поставщик</li>
						<li>Посредник</li>
						<li>Дропшипер</li>
				</ul>
			</div> 
			<div class="tabs__content active">
					<ul class="images">
						<li>
							<img src="<?php echo get_template_directory_uri(); ?>/images/structure1.png" alt="">
							<p>Регистрируйся</p>
						</li>
						<li>
							<img src="<?php echo get_template_directory_uri(); ?>/images/structure3.png" alt="">
							<p>Добавляй ассортимент</p>
						</li>
						<li>
							<img src="<?php echo get_template_directory_uri(); ?>/images/structure6.png" alt="">
							<p>Получи клиента</p>
						</li>
						<li>
							<img src="<?php echo get_template_directory_uri(); ?>/images/structure7.png" alt="">
							<p>Увеличь прибыль</p>
						</li>
					</ul>
			</div>    
			<div class="tabs__content">
					<ul class="images">
							<li>
								<img src="<?php echo get_template_directory_uri(); ?>/images/structure1.png" alt="">
								<p>Присоединяйся</p>
							</li>
							<li>
								<img src="<?php echo get_template_directory_uri(); ?>/images/structure2.png" alt="">
								<p>Находи товары</p>
							</li>
							<li>
								<img src="<?php echo get_template_directory_uri(); ?>/images/structure3.png" alt="">
								<p>Выбери лучшее предложение</p>
							</li>
							<li>
								<img src="<?php echo get_template_directory_uri(); ?>/images/structure4.png" alt="">
								<p>Получи доход</p>
							</li>
						</ul>
			</div>
			<div class="tabs__content">
					<ul class="images">
							<li>
								<img src="<?php echo get_template_directory_uri(); ?>/images/structure1.png" alt="">
								<p>Присоединяйся</p>
							</li>
							<li>
								<img src="<?php echo get_template_directory_uri(); ?>/images/structure3.png" alt="">
								<p>Подбирай товар</p>
							</li>
							<li>
								<img src="<?php echo get_template_directory_uri(); ?>/images/structure5.png" alt="">
								<p>Находи покупателя</p>
							</li>
							<li>
								<img src="<?php echo get_template_directory_uri(); ?>/images/structure4.png" alt="">
								<p>Зарабатывай</p>
							</li>
						</ul>
			</div>
		</div>

	</div>
</div>


<!-- FACILITIES SECTION -->

<div id="facilities">
	<h2>Сообщество дает новые возможности</h2>
	<span>мы рады сообщить вам об этом</span>
	<div class="container-fluid">
		<div class="row">
			<div class="part col-md-6 col-sm-12">
				<h5 class="unruly">Доступность</h5>
				<p>Больше никаких прайс листов, сложных анализаторов, обработчиков! С помощью простого интерфейса вы легко подберететоварные
					предложения от ваших поставщиков, и новые предложения от «Fractus».</p>
			</div>
			<div class="part col-md-6 col-sm-12">
				<img src="<?php echo get_template_directory_uri(); ?>/images/availability.png" alt="">
			</div>
		</div>
		<div class="row reverce">
			<div class="part col-md-6 col-sm-12">
				<img src="<?php echo get_template_directory_uri(); ?>/images/speed.png" alt="">
			</div>
			<div class="part col-md-6 col-sm-12 head1">
				<h5>Скорость</h5>
				<p>Больше никаких прайс листов, сложных анализаторов, обработчиков! С помощью простого интерфейса вы легко подберететоварные
					предложения от ваших поставщиков, и новые предложения от «Fractus».</p>
			</div>
		</div>
		<div class="row">
			<div class="part col-md-6 col-sm-12">
				<h5>Актуальность</h5>
				<p>Больше никаких прайс листов, сложных анализаторов, обработчиков! С помощью простого интерфейса вы легко подберететоварные
					предложения от ваших поставщиков, и новые предложения от «Fractus».</p>
			</div>
			<div class="part relevance col-md-6 col-sm-12">
				<img class="hidden" src="<?php echo get_template_directory_uri(); ?>/images/relevance2.png" alt="">
			</div>
		</div>
		<div class="row reverce">
			<div class="part col-md-6 col-sm-12">
				<img src="<?php echo get_template_directory_uri(); ?>/images/development.png" alt="">
			</div>
			<div class="part col-md-6 col-sm-12 head2">
				<h5>Развитие</h5>
				<p>Больше никаких прайс листов, сложных анализаторов, обработчиков! С помощью простого интерфейса вы легко подберететоварные
					предложения от ваших поставщиков, и новые предложения от «Fractus».</p>
			</div>
		</div>
		<div class="row">
			<div class="part col-md-6 col-sm-12">
				<h5>Простота</h5>
				<p>Больше никаких прайс листов, сложных анализаторов, обработчиков! С помощью простого интерфейса вы легко подберете товарные предложения от ваших поставщиков, и новые предложения от «Fractus».</p>
			</div>
			<div class="part simplicity col-md-6 col-sm-12">
				<img class="hidden" src="<?php echo get_template_directory_uri(); ?>/images/simplicity2.png" alt="">
			</div>
		</div>
	</div>
</div>


<!-- FOLLOW SECTION -->
<div id="follow">
	<div class="container">
		<h2>Опережай время, будь в тренде</h2>
		<span>следуй за нами и получи преимущество</span>
		<button type="button" class="btn btn-danger btn-lg">Следовать</button>
	</div>
</div>


<!-- CLIENTS SECTION -->
<div id="clients" class="container">
		<h2>Наши клиенты</h2>
		<div class="slider">
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/allremote.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/vibe.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/edge.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/fli.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/incar.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/spargo.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/hptec.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/ledglow.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/kingone.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/pininfarina.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/orange.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/promate.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/rs.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/audio.jpg" alt=""></div>
				<div><img src="<?php echo get_template_directory_uri(); ?>/images/our-clients/swat.jpg" alt=""></div>
		</div>
</div>


<!-- PRICING SECTION -->
	
<div id="pricing" class="container">
		<h2>Наша ценовая политика</h2>
		<span>цены на любые запросы</span>
		<div class="row blocks">
			<div class="col">
				<div class="transform">
					<figure class="box">
						<div class="original">
						<h3>Базис</h3>
						<div class="price">10</div>
						<span>грн/мес</span>
						<ul>
							<li>Lorem ipsum dolor sit </li>
							<li>X</li>
							<li>X</li>
						</ul>
						<button type="button" class="btn btn-outline-primary">выбрать</button>
						</div>
					</figure>
				</div>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-4">
				<div class="transform">
					<figure class="box active">
					<div class="original">
						<h3>Оптима</h3>
						<div class="price">100</div>
						<span>грн/мес</span>
						<ul>
							<li>Lorem ipsum dolor sit </li>
							<li>Lorem ipsum dolor sit </li>
							<li>X</li>
						</ul>
						<button type="button" class="btn btn-danger btn-lg">выбрать</button>
					</div>
					</figure>
				</div>
			</div>
			<div class="col">
				<div class="transform">
					<figure class="box">
						<div class="original">
							<h3>Максимум</h3>
							<div class="price">300</div>
							<span>грн/мес</span>
							<ul>
								<li>Lorem ipsum dolor sit </li>
								<li>Lorem ipsum dolor sit </li>
								<li>Lorem ipsum dolor sit </li>
							</ul>
							<button type="button" class="btn btn-outline-primary">выбрать</button>
						</div>
					</figure>
				</div>
			</div>
		</div>
</div>


<!-- QUESTION ANSWER SECTION -->

<div id="questions" class="container">
	<h2>Вопрос - ответ</h2>
	<div class="row">
		<div class="col-4">
			<img src="<?php echo get_template_directory_uri(); ?>/images/question-answer.png" alt="">
		</div>
		<div class="col-12 col-sm-8">
			<h5>Is there really a 'money back guarantee?</h5>
			<p>No joke. If you’re not happy with your contest, we’ll give 100% of your money back. Feel free to check out the fine print.</p>
			<a href="">посмотреть все</a>
			<div class="contacts">
					<h3>А так же  свяжитесь с нами</h3>
						<span class="phone">+380633132334</span>
					<span class="email">fractus@gmail.com</span>
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>