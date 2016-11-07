<?php echo $header; ?>
<div class="container">
<div class="main">
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>">
			<div class="breadcrumb">
			  <ul>
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
					<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><span></span></li>
				<?php } ?>
			  </ul>
			</div>
			<?php echo $content_top; ?>
            <div class="page-title"><h2><?php echo $heading_title; ?></h2></div>
            <?php if ($products) { ?>
            <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
            <!-- product fillter -->
			<div class="product-filter">
				<div class="btn-group">
					<label>View as:</label>
					<button type="button" id="grid-view"  class="btn btn-default grid-view"  title="<?php echo $button_grid; ?>">grid</button>
					<button type="button"  id="list-view" class="btn btn-default list-view"  title="<?php echo $button_list; ?>">list</button>
				</div>
				<div class="sort">
					<label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
					<select id="input-sort" class="" onchange="location = this.value;">
						<?php foreach ($sorts as $sorts2) { ?>
							<?php if ($sorts2['value'] == $sort . '-' . $order) { ?>
								<option value="<?php echo $sorts2['href']; ?>" selected="selected"><?php echo $sorts2['text']; ?></option>
							<?php } else { ?>
								<option value="<?php echo $sorts2['href']; ?>"><?php echo $sorts2['text']; ?></option>
							<?php } ?>
						<?php } ?>
					</select>
				</div>  
				<div class="limit">
				  <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
				  <select id="input-limit" class="" onchange="location = this.value;">
					<?php foreach ($limits as $limits2) { ?>
					<?php if ($limits2['value'] == $limit) { ?>
					<option value="<?php echo $limits2['href']; ?>" selected="selected"><?php echo $limits2['text']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $limits2['href']; ?>"><?php echo $limits2['text']; ?></option>
					<?php } ?>
					<?php } ?>
				  </select>
					<?php echo $pagination; ?>
				</div>
			</div>
      <!-- product fillter -->
    <div class="row products-category">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
        <div class="product-container">
			<div class="item-inner">
				<div class="left-block">
					<div class="images-container">
						<div class="image"><a href="<?php echo $product['href']; ?>"><img class="image1" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /><img class="image2" src="<?php echo $product['rotator_image'] ?>" alt="" /></a></div>
					</div>
				</div>
				  <div class="right-block">
					<div class="item-content">
						<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
						<div class="box-review">
							<?php if (isset($product['rating'])) { ?>
								<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt=""  /></div>
							<?php } ?>
						</div>
						<div class="price-box">
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
								</p>
								<?php } ?>
						</div>
						<p class="description"><?php echo $product['description']; ?></p>
						<div class="actions">
							<div class="button-group">
									<div class="add-to-links">
										<div class="wishlist"><button type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></button></div>
										<div class="cart"><button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button></div>
										<div class="compare"><button type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></button></div>
									</div>
							</div>
						</div>
					</div>
					</div>
			</div>
        </div> <!-- product-thumb -->
        </div><!-- product-layout -->
        <?php } ?>
    </div> <!-- products-category -->
            <div class="row">
                <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
            </div>
            <?php } else { ?>
            <p><?php echo $text_empty; ?></p>
            <div class="buttons">
                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div>
            <?php } ?>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div></div>
<?php echo $footer; ?>
