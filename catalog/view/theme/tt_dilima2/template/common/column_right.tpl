<?php if ($modules) { ?>
<div id="column-right" class="col-sm-3 hidden-xs">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
		<div class="view-tag">
	<?php if (isset($tags)) { ?>
		<div class="title-tag module-title"><h2><?php echo $text_tags; ?></h2></div>
		<div class="content-tag">
		<?php for ($i = 0; $i < count($tags); $i++) { ?>
		<?php if ($i < (count($tags) - 1)) { ?>
		<a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
		<?php } else { ?>
		<a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
		<?php } ?>
		<?php } ?>
		</div>
	  </div>
	<?php } ?>
</div>
<?php } ?>