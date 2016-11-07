<?php $tab_effect = 'wiggle'; ?>
<script type="text/javascript">
$(document).ready(function() {
	$(".<?php echo $cateogry_alias;?> .tab_content_category").hide();
	$(".<?php echo $cateogry_alias;?> .tab_content_category:first").show(); 
    $(".<?php echo $cateogry_alias;?> ul.tabs-category li:first").addClass("active");
	$(".<?php echo $cateogry_alias;?> ul.tabs-category li").click(function() {
		$(".<?php echo $cateogry_alias;?> ul.tabs-category li").removeClass("active");
		$(this).addClass("active");
		$(".<?php echo $cateogry_alias;?> .tab_content_category").hide();
		$(".<?php echo $cateogry_alias;?> .tab_content_category").removeClass("animate1 <?php echo $tab_effect;?>");
		var activeTab = $(this).attr("rel"); 
		$("#"+activeTab) .addClass("animate1 <?php echo $tab_effect;?>");
		$("#"+activeTab).fadeIn(); 
	});
});
</script>
<?php
	$row = $config_slide['f_rows'];
	if(!$row) {$row=1;}
?>
<?php if($array_cates): ?>
<div class="tabscategory-slider special-button-owl <?php echo $cateogry_alias;?>">
	<div class="tabscategory-title">
		<div class="tabscategory-subtitle">
			<div class="tab-title module-title"><h2><?php echo $title; ?></h2></div>
			<ul class="tabs-category"> 
			<?php $count=0; ?>
			<?php foreach($category_products as $cate_id => $products ){ ?>
				<?php if(isset($array_cates[$cate_id])): ?>
				<li rel="tab_cate<?php echo $cate_id; ?>"  >
					<?php echo $array_cates[$cate_id]['name']; ?>
					<?php if($array_cates[$cate_id]['thumbnail_image']): ?>
						<img class="thumb-img" src="<?php echo $array_cates[$cate_id]['thumbnail_image']; ?>" alt="<?php echo $array_cates[$cate_id]['name']; ?>" />
					<?php endif; ?>
				</li>
					<?php $count= $count+1; ?>
				<?php endif; ?>
			<?php } ?>	
			</ul>
		</div>
	</div>
	<div class="row">
		<div class="tab_container_category"> 
		<?php foreach($category_products as $cate_id => $products ){ ?>
			<div id="tab_cate<?php echo $cate_id; ?>" class="tab_content_category">
				<div class="productTabContent owl-demo-tabcate">
				<?php if($products): ?>
				<?php $count = 0; ?>
				<?php foreach ($products as $product){ ?>
					<?php if($count++ % $row ==0){  echo  "<div class='row_item'><div class='product-thumb'>"; } ?>
					<div class="item">
						<div class="item-inner">
							<?php if($config_slide['tab_cate_show_label']): ?>
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
								<?php if ($product['rating']) { ?>
								<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
								<?php } ?>
								<?php if($config_slide['tab_cate_show_price']) { ?>
								<?php if ($product['price']) { ?>
								<div class="price">
								  <?php if (!$product['special']) { ?>
								  <?php echo $product['price']; ?>
								  <?php } else { ?>
								  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								  <?php } ?>
								</div>
								<?php } ?>
								<?php } ?>
								<?php if($config_slide['tab_cate_show_des']) { ?>
									<div class="des"><?php echo $product['description']; ?></div>
								<?php } ?>
								<div class="actions">
									<div class="button-group">
										<div class="add-to-links">
												<div class="wishlist"><button type="button" title="<?php echo $button_wishlist; ?>"  onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></button></div>
												<?php if($config_slide['tab_cate_show_addtocart']) { ?>
													<div class="cart">
													<button type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
													</div>
												<?php } ?>
												<div class="compare"><button type="button" title="<?php echo $button_compare; ?>"  onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></button></div>
										</div>
									</div>
								</div>
							</div>
						</div> <!-- item-inner -->
					</div> <!-- item -->
					<?php if($count % $row == 0 ): ?>
					</div></div><!-- row_items-->
				 <?php else: ?>
					<?php if($count == count($products)): ?>
						</div></div><!-- row_items-->
					<?php endif; ?>
				 <?php endif; ?>
				<?php } ?>
				<?php else: ?>
					<p><?php echo $text_empty; ?></p>
				<?php endif; ?>
				</div><!-- productTabContent -->
			</div>
		</div>
	<?php } ?>
	 </div> <!-- .tab_container_category -->
</div><!-- <?php echo $cateogry_alias;?> -->
<?php else: ?>
<p class="empty-products"><?php echo $text_empty_cate; ?></p>
<?php endif; ?>
<script type="text/javascript">
$(document).ready(function() { 
  $(".<?php echo $cateogry_alias;?> .owl-demo-tabcate").owlCarousel({
	autoPlay: <?php if($config_slide['tab_cate_autoplay']) { echo 'true' ;} else { echo 'false';} ?>,
	items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3;} ?>,
	slideSpeed : <?php if($config_slide['tab_cate_speed_slide']) { echo $config_slide['tab_cate_speed_slide'] ;} else { echo 200;} ?>,
	navigation : <?php if($config_slide['tab_cate_show_nextback']) { echo 'true' ;} else { echo 'false';} ?>,
	paginationNumbers : true,
	pagination : <?php if($config_slide['tab_cate_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
	stopOnHover : false,
	itemsDesktop : [1199,2], 
	itemsDesktopSmall : [992,1], 
	itemsTablet: [767,2], 
	itemsMobile : [600,1]
  });
});
</script>