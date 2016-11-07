<?php if (count($languages) > 1) { ?>
<div class="pull-left">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
	<div class="btn-group">
		<label><?php echo $text_language; ?></label>
		<div class="box-language">
			<button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
			<?php foreach ($languages as $language) { ?>
			<?php if ($language['code'] == $code) { ?>
			<img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
			 <span><?php echo $language['name']; ?></span> <i class="fa fa-caret-down"></i></button>
			<?php } ?>
			<?php } ?>
			<div class="dropdown-language">
				<ul class="lang-content">
					<?php foreach ($languages as $language) { ?>
					<li><a href="<?php echo $language['code']; ?>"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
	</div>
	<input type="hidden" name="code" value="" />
	<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
