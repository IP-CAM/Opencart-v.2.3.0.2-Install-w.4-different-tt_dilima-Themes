<div id="banner<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#banner<?php echo $module; ?>').owlCarousel({
	items:1,
	itemsDesktop : [1000,1], 
	itemsDesktopSmall : [900,1], 
	itemsTablet: [680,1], 
	itemsMobile : [480,1],
	autoPlay: 3000,
	singleItem: true,
	navigation: false,
	pagination: true,
	transitionStyle: 'fade'
});
--></script>
