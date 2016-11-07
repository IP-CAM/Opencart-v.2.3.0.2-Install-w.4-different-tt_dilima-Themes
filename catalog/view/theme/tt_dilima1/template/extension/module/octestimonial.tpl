<?php
	$count = 0;
	$rows = $slide['rows'];
	if(!$rows) { $rows = 1; }
?>
<div class="col-md-4 col-sm-4 col-sms-12">
	<div class="testimonial-container">
		<div class="testimonial-title module-title"><h2><?php echo $title; ?></h2></div>
		<div class="row">
			<div class="block-content">
				<div id="slides">
						<?php foreach($testimonials as $testimonial) { ?>
							<?php  if($count % $rows == 0 ) { echo '<div class="row_items">'; } $count++; ?>
						<div class="item-testimonials">
							<div class="testimonial-images">
								<img src="<?php echo $testimonial['image'];?>" alt="<?php echo $testimonial['customer_name'];?>">
							</div>
							<div class="box-testimonial">
								<div class="testimonial-name"><h2><?php echo $testimonial['customer_name']; ?></h2></div>
								<div class="testimonial-std"><a href="<?php echo $more; ?>"><?php echo substr($testimonial['content'],0,100)."..."; ?></a></div>
							</div>
						</div>
						<?php if($count % $rows == 0 || $count == count($testimonials)): ?>
						</div>
						<?php endif; ?>
					<?php  } ?>
				</div>
			</div><!--block-content-->
		</div>
	</div><!--testimonial-container-->
</div>
<script type="text/javascript">
    $("#slides").owlCarousel({
		autoPlay : <?php if($slide['auto']) { echo 'true' ;} else { echo 'false'; } ?>,
		items : <?php echo $slide['items'] ?>,
		itemsDesktop : [1000,1], //5 items between 1000px and 901px
		itemsDesktopSmall : [900,1], // betweem 900px and 601px
		itemsTablet: [600,1], //2 items between 600 and 0
		itemsMobile : [480,1], // itemsMobile disabled - inherit from itemsTablet option
		slideSpeed : <?php echo $slide['speed']; ?>,
		paginationSpeed : <?php echo $slide['speed']; ?>,
		rewindSpeed : <?php echo $slide['speed']; ?>,
		navigation : <?php if($slide['navigation']) { echo 'true' ;} else { echo 'false'; } ?>,
		pagination : <?php if($slide['pagination']) { echo 'true' ;} else { echo 'false'; } ?>
    });
</script>