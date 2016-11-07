<div class="bestproduct-container">
	<div class="best-title module-title"><h2><?php echo $title; ?></h2></div>
	<div class="row">
		<div class="bestseller-products-slider">
			<?php
				$count = 0;
				$rows = $config_slide['f_rows'];
				if(!$rows) { $rows=1; }
			?>
			<?php if($products): ?>
				<?php foreach ($products as $product) { ?>
				<?php if($count++ % $rows == 0 ) { echo '<div ="row_items">'; } ?>
				<div class="item_product">
					<div class="product-thumb transition item-inner">
						<?php if($config_slide['f_show_label']): ?>
							<?php if ($product['is_new']):
								if($product['special']): ?>
									<div class="sale"><?php echo $text_sale; ?></div>
								<?php else: ?>
									<div class="new"><?php echo $text_new; ?></div>
								<?php endif; ?>
							<?php else: ?>
								<?php if($product['special']): ?>
									<div class="label-pro-sale"><?php echo $text_sale; ?></div>
								<?php endif; ?>
							<?php endif; ?>
						<?php endif; ?>
						<div class="images-container">
								<div class="image"><a href="<?php echo $product['href']; ?>"><img class="image1" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
								<?php if(isset($product['rotator_image']) && $product['rotator_image'] != ""): ?>
									<img class="image2" src="<?php echo $product['rotator_image'] ?>" alt="" />
								<?php endif; ?>
								</a></div>
						</div>
					  <div class="item-content">
						<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
						<div class="box-review">
							<?php if (isset($product['rating'])) { ?>
								<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt=""  /></div>
							<?php } ?>
						</div>
						<?php if($config_slide['f_show_des']){ ?>
						<p class="description"><?php echo $product['description']; ?></p>
						<?php } ?>
						<?php if($config_slide['f_show_price']){ ?>
						<?php if ($product['price']) { ?>
						<p class="price">
						  <?php if (!$product['special']) { ?>
						  <?php echo $product['price']; ?>
						  <?php } else { ?>
						  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
						  <?php } ?>
						  <?php if ($product['tax']) { ?>
						  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
						  <?php } ?>
						</p> <?php } ?>
						<?php } ?>
						<div class="actions">
								<div class="button-group">
									<div class="add-to-links">
										<div class="wishlist">
											<button type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></button>
										</div>
										<div class="cart">
											<?php if($config_slide['f_show_addtocart']) { ?>
											<button type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
											<?php } ?>
										</div>
										<div class="compare">
											<button type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></button>
										</div>
									</div>
								</div>
						</div>
					  </div>
					</div>
				</div>
				<?php if($count % $rows == 0 || $count == count($products)) { echo '</div>'; } ?>
				<?php } ?>
			<?php else: ?>
				<p><?php echo $text_empty; ?></p>
			<?php endif; ?>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $(".bestseller-products-slider").owlCarousel({
        autoPlay: <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false'; } ?>,
        items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3; } ?>,
        slideSpeed : <?php if($config_slide['f_speed']) { echo $config_slide['f_speed']; } else { echo 200;} ?>,
        navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false'; } ?>,
        paginationNumbers : true,
        pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
        stopOnHover : false,
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [991,3],
		itemsTablet: [767,2],
		itemsMobile : [600,1]
    });

});
</script>