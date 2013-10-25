<?php if ($position == 'content_top' || $position == 'content_bottom'): ?>
<div class="container">
	<div class="row">
		<div class="col-md-12">
<?php endif; ?>

	<h4 class="sidebar-heading">
		<?php echo $heading_title; ?>
	</h4>

	<ul class="nav nav-stacked nav-sidebar sidebar-block">
		<?php if (!$logged) { ?>
			<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
			<li><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></li>
		<?php } ?>

		<?php if ($logged) { ?>
			<li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
			<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
		<?php } ?>

		<li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
		<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
		<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
		<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
		<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
		<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
		<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		<li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>

		<?php if ($logged) { ?>
			<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
		<?php } ?>
	</ul>

<?php if ($position == 'content_top' || $position == 'content_bottom'): ?>
		</div>
	</div>
</div>
<?php endif; ?>