<div id="all_footer">
	<div id="footer_top">
		<div class="container d_footer">
			<div class="row-fluid">
				<div class="span6">
					<?php dynamic_sidebar('footer-left');?>
				</div>

				<div class="span6">
					<?php dynamic_sidebar('footer-right');?>
				</div>
			</div>
		</div>
	</div>

</div>
	<?php do_action('after_page_wrapper'); ?>

	<?php
		/* Always have wp_footer() just before the closing </body>
		 * tag of your theme, or you will break many plugins, which
		 * generally use this hook to reference JavaScript files.
		 */

		wp_footer();
	?>

<script type="text/javascript">
	jQuery(document).ready(function($){
		var visible_id = "";
		$('.visible_bl').mouseenter(function(){
			var id = $(this).attr('id');
			id = id.split("_");
			id = id[1];
			console.log('#bl_'+id+'_hover');
			$('#bl_'+id+'_hover').removeClass('invisible_bl');
		});

		$('.on-top').mouseleave(function(){
			var id = $(this).attr('id');
			id = id.split("_");
			id = id[1];
			$('#bl_'+id+'_hover').addClass('invisible_bl');
		});

		$('.toggle_row').toggle(
			function() {
				var expand_id = $(this).closest('tr').attr('id');
				$('#' + expand_id + '_inner').slideDown('slow');
				$(this).addClass('toggled');
			},
			function() {
				var expand_id = $(this).closest('tr').attr('id');
				$('#' + expand_id + '_inner').hide();
				$(this).removeClass('toggled');
			}
		);
	});
</script>
</body>


</html>