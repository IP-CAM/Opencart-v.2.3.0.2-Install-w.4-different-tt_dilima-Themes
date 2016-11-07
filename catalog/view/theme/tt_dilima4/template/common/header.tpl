<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/default/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css" 
rel="stylesheet"> 
<script src="catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js" 
type="text/javascript"></script> 
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/owlcarousel/owl.carousel.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href='https://fonts.googleapis.com/css?family=Khula:400,600,700,800' rel='stylesheet' type='text/css' />
<link href="catalog/view/theme/tt_dilima4/stylesheet/stylesheet.css" rel="stylesheet" type="text/css">
<link href="catalog/view/theme/tt_dilima4/stylesheet/animate.css" rel="stylesheet" type="text/css">
<link href="catalog/view/theme/tt_dilima4/stylesheet/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet">
<script src="catalog/view/javascript/opentheme/hozmegamenu/custommenu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/hozmegamenu/mobile_menu.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_dilima4/stylesheet/opentheme/css/owl.carousel.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/ocslideshow/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tt_dilima4/stylesheet/opentheme/ocquickview/css/ocquickview.css">
<script src="catalog/view/javascript/opentheme/ocquickview/ocquickview.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div id="top">
  <div class="container">
    <div class="row">
		<div class="col-md-7 col-sm-12 col-sms-12">
			<div class="link-contact">
				<h2 class="address"><?php echo $address; ?></h2>
				<h2 class="email"><?php echo $email; ?></h2>
				<h2 class="phone"><?php echo $telephone; ?></h2>
			</div>
			<div class="text-welcome"><p><?php //echo $text_msg; ?></p></div>	
		</div>
		<div class="col-md-5 col-sm-12 col-sms-12">
			<div class="currency-language">
				<div class="header-laguage"><?php echo $language; ?></div>
				<div class="header-currency"><?php echo $currency; ?></div>
			</div>
			<div class="right-header">
				<div class="right-icon fb"><a href="#">fb</a></div>
				<div class="right-icon tw"><a href="#">tw</a></div>
				<div class="right-icon google"><a href="#">google</a></div>
				<div class="right-icon pn"><a href="#">pn</a></div>
				<div class="right-icon fl"><a href="#">fl</a></div>
				<div class="right-icon in"><a href="#">in</a></div>
			</div>
		</div>
    </div>
  </div>
</div>
<header>
<div class="header">
  <div class="container">
	<div class="header-inner">
    <div class="row">
      <div class="col-md-3 col-sm-12 col-sms-12">
		<div id="logo">
        <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
		</div>
      </div>
		<div class="col-md-9 col-sm-12 col-sms-12">
			<div class="header-row1">
				<div id="top-links" class="nav pull-right">
				<div class="box-link">
					<ul class="list-inline links">
						<li class="dropdown"><a class="account" href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
					  <li><a class="wishlist" href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"> <span><?php echo $text_wishlist; ?></span></a></li>
					<?php if ($logged) { ?>
						<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
						<?php } else { ?>
							<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
						<?php } ?>
					</ul>
				</div>
			</div>
				<div class="box-header">
					<div class="cart-search">
						<div class="top-cart"><?php echo $cart; ?></div>
						<div class="header-search"><?php //echo $search; ?></div>
					</div>
				</div>
				<?php echo $content_block; ?>
			</div>
		</div>
    </div>
	</div>
	</div>
</div>
</header>
<?php echo $content_block1; ?>
<?php if ($categories) { ?>
<?php } ?>
<script type="text/javascript">
	 $(window).scroll(function () {
	  if ($(this).scrollTop() > 120) {
	    $('.nav-container').addClass("fix-nav");
	  } else {
	   $('.nav-container').removeClass("fix-nav");
	  }
	 });
</script>