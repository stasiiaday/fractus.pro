

// TABS

	(function($) {
		$(function() {
		
			$('ul.tabs__caption').on('click', 'li:not(.active)', function() {
				$(this).addClass('active').siblings().removeClass('active').closest('div.tabs').find('div.tabs__content').removeClass('active').eq($(this).index()).addClass('active');
			});
		
		});
		})(jQuery);
		
	 
	// BXSLIDER
	
		//var windowWidth = Math.max($(window).width(), window.innerWidth);
		// if(windowWidth <= 1199) {
		// 	var slideWidth = '400px';
		// 	var maxSlides = 3;	
		// }
		// if(windowWidth <= 991) {
		// 	var slideWidth = '500px';
		// 	var maxSlides = 2;	
		// }
		// if(windowWidth <= 576) {
		// 	var slideWidth = '400px';
		// 	var maxSlides = 1;	
		// }
		//
	$(window).on("load resize", function(e){
		sliderInit();
	});

	function sliderInit() {
		$('.slider').bxSlider({
			responsive: true,
			adaptiveHeight: true,
			shrinkItems: true,
			minSlides: 1,
			maxSlides: 6,
			slideWidth: '280px'
		});
	}

	// VIDE

	$('#myBlock').vide('loop: false, muted: true, autoplay: true, resizing: true, position: 0% 0%');


	//MAGNIFIC-POPUP

// 	$('.popup-youtube').magnificPopup({ 
//     type: 'iframe' 
//  });

$('.popup-youtube').magnificPopup({
	type: 'iframe',
	iframe: {
	patterns: {
		youtube: {
			index: 'youtube.com/', // String that detects type of video (in this case YouTube). Simply via url.indexOf(index).
			id: 'v=', // String that splits URL in a two parts, second part should be %id%
			// Or null - full URL will be returned
			// Or a function that should return %id%, for example:
			// id: function(url) { return 'parsed id'; }
			src: '//www.youtube.com/embed/%id%?autoplay=1&rel=0' // Урл, который берется из кода iframe
		}
	}
	}
	});

	
/* **** // Scroll Top // => Have jQuery Dependent *** */
$(document).ready(function () {
	/* ADD SCROLL TOP ICON */
	$("body").append("<a class='scrollup' href='javascript:void(0);'><span>вверх</span></a>");
    $(window).scroll(function(){
        if ($(this).scrollTop() > 100) {
			$(".scrollup").fadeIn();
			console.log('WTF');
        } else {
            $(".scrollup").fadeOut();
		}
	});
	$(".scrollup").click(function(){
		$("html, body").animate({ scrollTop: 0 }, 600);
		return false;
    });
});

/* **** // Add Class For #header on Frontpage // => Have jQuery Dependent *** */
$(document).ready(function () {
	var headerFrontEl = $("body.page-template-main #header");
	$(window).scroll(function(){
        if ($(this).scrollTop() > 100) {
			$(headerFrontEl).addClass("white");
        } else {
            $(headerFrontEl).removeClass("white");
		}
	});
});