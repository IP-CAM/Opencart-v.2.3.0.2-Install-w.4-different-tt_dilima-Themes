<div class="col-md-8 col-sm-8 col-sms-12">
<div id="blog_home" class="menu-recent">
		<div class="container-inner">
		  <div class="blog-title module-title">
			   <h2><?php echo $title; ?></h2>
		  </div>
	 <?php if ($articles) { ?>
		<div class="row">
      <div class="articles-container">
        <?php foreach ($articles as $article) { ?>
         <div class="articles-inner item-inner">
			<div class="articles-image"><img src="<?php echo $article['image']; ?>" alt="" /></div>
			<div class="blog-content">
				<div class="articles-date">
					<span>
						<?php echo $article['date_added']; ?>
					</span>
					<?php echo $article['date_added2']; ?>
					<?php if($article['author'] != null && $article['author'] != ""): ?>
					<?php echo " | ".$article['author']; ?>
					<?php endif; ?>
				</div>
				<a class="articles-name" href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a>
				<div class="articles-intro"><?php echo $article['intro_text']; ?></div>
				<div class="readmore"><a href="<?php echo $article['href']; ?>"><?php echo $button_read_more; ?></a></div>
			</div>
        </div>
        <?php } ?>
      </div>
	  </div>
      <!--<div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>-->
      <?php } ?>
	  
      <?php if (!$articles) { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
	  </div>
	 <script>
	 $(document).ready(function() { 
		  $(".articles-container").owlCarousel({
				autoPlay : false,
				items :2,
				itemsDesktop : [1199,2],
				itemsDesktopSmall : [991,2],
				itemsTablet: [700,1],
				itemsMobile : [400,1],
				slideSpeed : 1000,
				paginationSpeed : 1000,
				rewindSpeed : 1000,
				navigation : true,
				stopOnHover : true,
				pagination : false,
				scrollPerPage:true,
		  });
	 });
	 </script>
</div>
</div>