<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Buy Makeup, Cosmetics and Skincare | Sephora Singapore</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"/> 
	<meta content='Sephora, where beauty beats. Discover the best in makeup, skin care, and more from a wide selection of beauty brands. Free shipping for orders above S$40.' id='meta-description' name='description'>
	<meta content='Sephora,Singapore,Beauty,Cosmetics,SkinCare,FreeDelivery' id='meta-keywords' name='keywords'>
	
	<link rel="stylesheet" href="<?php echo base_url(); ?>css/foundation.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>css/app.css">

</head>
<body>

<article class="grid-container">
	<div class="grid-x grid-padding-x">
		<div class="medium-3 small-12 cell" style="margin-top:20px;">
			<a href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>images/happylogo.png"></a>
		</div>
	</div>
	<div class="grid-x grid-padding-x">

		<div class="medium-5 small-12 cell" style="margin-top:20px;">
			<img src="<?=APIURL.$product['image']?>" alt="image of <?=$product['name']?>">
		</div>

		<div class="medium-7 small-12 cell" style="margin-top:20px;">
			<div class="grid-x grid-padding-x" >
				<div class="medium-12 small-12 cell">
					<div class="product-detail-name"><?=$product['name']?></div>
					<div class="product-detail-description">Category: <?=$product['category']?></div>
					<div class="rateit-range" style="width: 60px; height: 12px;">
						<div class="rateit-selected rateit-preset" style="height: 12px; width: <?=number_format($product['rating']/5*60, 0)?>px;"></div>
					</div>
					<p class="product-price-container">
					<?php if($product['under_sale']){ ?>
						<font class="product-detail-old-price">$<?=number_format($product['price']/100, 2)?></font>
						<font class="product-detail-price">$<?=number_format($product['sale_price']/100, 2)?></font>
						<font class="product-detail-sale-text"><?=$product['sale_text']?></font>
					<?php } else{ ?>
						<font class="product-detail-price">$<?=number_format($product['price']/100, 2)?></font>
					<?php }?>									
					</p>
					<div class="callout" style="margin-top:20px;">
						<p><?=$product['description']?></p>
					</div>
					<p style="font-size:14px;font-height:10px;">
						Free Shipping above $40.00<br>
						All of our products are 100% authentic
					</p>
				</div>
			</div>
	
		</div>

	</div>

</article>

<script src="<?php echo base_url(); ?>js/vendor/jquery.js"></script>
<script src="<?php echo base_url(); ?>js/vendor/foundation.min.js"></script>

<script>
    $(document).foundation();
</script>

</body>
</html>