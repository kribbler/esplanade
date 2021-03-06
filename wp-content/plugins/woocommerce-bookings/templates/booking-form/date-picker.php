<?php
wp_enqueue_script( 'wc-bookings-date-picker' );
extract( $field );
?>
<fieldset class="wc-bookings-date-picker <?php echo implode( ' ', $class ); ?>">
	<legend>
		<span class="label"><?php echo $label; ?></span>: <small class="wc-bookings-date-picker-choose-date"><?php _e( 'Choose...', 'woocommerce-bookings' ); ?></small>
	</legend>

	<div class="picker" data-display="<?php echo $display; ?>" data-availability="<?php echo esc_attr( json_encode( $availability_rules ) ); ?>" data-default-availability="<?php echo $default_availability ? 'true' : 'false'; ?>" data-fully-booked-days="<?php echo esc_attr( json_encode( $fully_booked_days ) ); ?>" data-min_date="<?php echo ! empty( $min_date_js ) ? $min_date_js : 0; ?>" data-max_date="<?php echo $max_date_js; ?>" data-is_range_picker_enabled="<?php echo $is_range_picker_enabled ? 1 : 0; ?>"></div>

	<div class="wc-bookings-date-picker-date-fields">
		<?php if ( 'customer' == $duration_type && $is_range_picker_enabled ) : ?>
			<span><?php _e( 'Start', 'woocommerce-bookings' ); ?>:</span><br />
		<?php endif; ?>
		<label>
			<input type="text" value="<?php echo date( 'Y' ); ?>" name="<?php echo $name; ?>_year" placeholder="<?php _e( 'YYYY', 'woocommerce-bookings' ); ?>" size="4" class="booking_date_year" />
			<span><?php _e( 'Year', 'woocommerce-bookings' ); ?></span>
		</label> / <label>
			<input type="text" name="<?php echo $name; ?>_month" placeholder="<?php _e( 'mm', 'woocommerce-bookings' ); ?>" size="2" class="booking_date_month" />
			<span><?php _e( 'Month', 'woocommerce-bookings' ); ?></span>
		</label> / <label>
			<input type="text" name="<?php echo $name; ?>_day" placeholder="<?php _e( 'dd', 'woocommerce-bookings' ); ?>" size="2" class="booking_date_day" />
			<span><?php _e( 'Day', 'woocommerce-bookings' ); ?></span>
		</label>
	</div>

	<?php if ( 'customer' == $duration_type && $is_range_picker_enabled ) : ?>
		<div class="wc-bookings-date-picker-date-fields">
			<span><?php _e( 'End', 'woocommerce-bookings' ); ?>:</span><br />
			<label>
				<input type="text" value="<?php echo date( 'Y' ); ?>" name="<?php echo $name; ?>_to_year" placeholder="<?php _e( 'YYYY', 'woocommerce-bookings' ); ?>" size="4" class="booking_to_date_year" />
				<span><?php _e( 'Year', 'woocommerce-bookings' ); ?></span>
			</label> / <label>
				<input type="text" name="<?php echo $name; ?>_to_month" placeholder="<?php _e( 'mm', 'woocommerce-bookings' ); ?>" size="2" class="booking_to_date_month" />
				<span><?php _e( 'Month', 'woocommerce-bookings' ); ?></span>
			</label> / <label>
				<input type="text" name="<?php echo $name; ?>_to_day" placeholder="<?php _e( 'dd', 'woocommerce-bookings' ); ?>" size="2" class="booking_to_date_day" />
				<span><?php _e( 'Day', 'woocommerce-bookings' ); ?></span>
			</label>
		</div>
	<?php endif; ?>
</fieldset>