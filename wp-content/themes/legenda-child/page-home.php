<?php
/*
Template Name: Home Page
*/


	get_header();
?>

<?php 
	extract(etheme_get_page_sidebar());
?>
<?php /*
<?php if ($page_heading != 'disable' && ($page_slider == 'no_slider' || $page_slider == '')): ?>
	<div class="page-heading bc-type-<?php etheme_option('breadcrumb_type'); ?>">
		<div class="container">
			<div class="row-fluid">
				<div class="span12 a-center">
					<!--<h1 class="title"><span><?php the_title(); ?></span></h1>-->
					<?php etheme_breadcrumbs(); ?>
				</div>
			</div>
		</div>
	</div>
<?php endif ?>
*/?>

<?php if($page_slider != 'no_slider' && $page_slider != ''): ?>
	
	<?php echo do_shortcode('[rev_slider_vc alias="'.$page_slider.'"]'); ?>

<?php endif; ?>

<?php if ($_SERVER['REMOTE_ADDR'] != '151.231.134.17') echo do_shortcode( '[rev_slider homepage]' ); 
//echo 'please enable the master slider';?>

<div id="home_block01" class="">
	<div class="container">
		<?php
			if ($_SERVER['REMOTE_ADDR'] == '::1') {
				echo do_shortcode('[content_block id=6 ]');
			}
			else 
				echo do_shortcode('[content_block id=25 ]'); 
		?>
	</div>
</div>

<div id="home_block02" class="">
	<div class="container">
		<?php
			if ($_SERVER['REMOTE_ADDR'] == '::1') 
				echo do_shortcode('[content_block id=8 ]');
			else 
				echo do_shortcode('[content_block id=27 ]'); 
		?>
	</div>
</div>

<div id="home_block03" class="">
	<div class="container">
		<?php
			if ($_SERVER['REMOTE_ADDR'] == '::1') 
				echo do_shortcode('[content_block id=10 ]');
			else 
				echo do_shortcode('[content_block id=29 ]'); 
		?>
	</div>
</div>

<div id="home_block04" class="">
	<div class="container">
		<?php
			if ($_SERVER['REMOTE_ADDR'] == '::1') 
				echo do_shortcode('[content_block id=15 ]');
			else 
				echo do_shortcode('[content_block id=31 ]'); 
		?>
	</div>
</div>

<div id="home_block05" class="">
	<div class="container">
		<?php
			if ($_SERVER['REMOTE_ADDR'] == '::1') {
				echo 'please enable the slider here';
				//echo do_shortcode('[content_block id=17 ]');
			}
			else 
				echo do_shortcode('[content_block id=33 ]'); 
		?>
	</div>
</div>

<div id="home_block06" class="">
	<div class="container">
		<?php
			if ($_SERVER['REMOTE_ADDR'] == '::1') {
				echo do_shortcode('[content_block id=19 ]');
			}
			else 
				echo do_shortcode('[content_block id=35 ]'); 
		?>
	</div>
</div>

<div id="home_block07" class="">
	<div class="container">
		<?php
			if ($_SERVER['REMOTE_ADDR'] == '::1') {
				echo do_shortcode('[content_block id=21 ]');
			}
			else 
				echo do_shortcode('[content_block id=37 ]'); 
		?>
	</div>
</div>

<?php echo do_shortcode( '[put_wpgm id=1]' ); ?>

<script type="text/javascript">
	jQuery(document).ready(function($){
		$(function() {
		    $('#change_home_location').toggle(
		    	function() {
		    		$('#home_location').slideDown();
		    		$(this).css('background-image', 'url(<?php echo get_stylesheet_directory_uri() . "/images/arrow_up.png"; ?>)');
		    	},
		    	function() {
		    		$('#home_location').slideUp();
		    		$(this).css('background-image', 'url(<?php echo get_stylesheet_directory_uri() . "/images/arrow_down.png"; ?>)');
		    	}
		    );

		    $('#change_home_contactus').toggle(
		    	function() {
		    		$('#home_contactus').slideDown();
		    		$(this).css('background-image', 'url(<?php echo get_stylesheet_directory_uri() . "/images/arrow_up.png"; ?>)');
		    	},
		    	function() {
		    		$('#home_contactus').slideUp();
		    		$(this).css('background-image', 'url(<?php echo get_stylesheet_directory_uri() . "/images/arrow_down.png"; ?>)');
		    	}
		    );

		    $('.home_tariffs').toggle(
		    	function() {

		    		$('#home_tariffs').slideDown();
		    		$('#home_tariffs').show();
		    		$('#change_home_tariffs').css('background-image', 'url(<?php echo get_stylesheet_directory_uri() . "/images/arrow_up_black.png"; ?>)');
		    	},
		    	function() {
		    		$('#home_tariffs').slideUp();
		    		$('#home_tariffs').hide();
		    		$('#change_home_tariffs').css('background-image', 'url(<?php echo get_stylesheet_directory_uri() . "/images/arrow_down_black.png"; ?>)');
		    	}
		    );
		    
		});

		$(".rslides").responsiveSlides({
			auto: false,
			nav: true
		});

		//$('.rslides1_nav.prev').css('background-image', 'url(<?php echo get_stylesheet_directory_uri() . "/images/arrow_left.jpg"; ?>)');
		//$('.rslides1_nav.next').css('background-image', 'url(<?php echo get_stylesheet_directory_uri() . "/images/arrow_right.jpg"; ?>)');
	});

Ps.initialize(document.getElementById('our_apts'));


</script>
<?php
	get_footer();
?>