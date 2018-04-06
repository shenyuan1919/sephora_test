<div class="grid-x grid-margin-x small-up-1 medium-up-2 large-up-3">
<?php
if(!empty($products)){
	foreach($products as $product){
	?>

		<div class="cell" >
			<a href="<?php echo base_url(); ?>product/detail/<?=$product['id']?>" target="_blank">
			<div class="callout " style="border: 0px;">
				<div class="img_container">
					<img src="<?=APIURL.$product['image']?>" alt="image of <?=$product['name']?>">
					<?php
					if($product['sold_out']){
						echo "<div class=\"imgtext_centered out-of-stock\">Out Of Stock</div>";
						echo "<div class=\"bottom-centered waitlist-me hidden\">Waitlist Me</div>	";
					}else{
						echo "<div class=\"bottom-centered add-to-bag hidden\">Add To Bag</div>	";
					}
					?>
				</div>

				<p class="product-name"><?=$product['name']?></p>
				<p class="product-desc">Category: <?=$product['category']?></p>
				<p class="product-price-container">
				<?php if($product['under_sale']){ ?>
					<font class="product-old-price">$<?=number_format($product['price']/100, 2)?></font>
					<font class="product-price">$<?=number_format($product['sale_price']/100, 2)?></font>
					<font class="product-sale-text"><?=$product['sale_text']?></font>
				<?php } else{ ?>
					<font class="product-price">$<?=number_format($product['price']/100, 2)?></font>
				<?php }?>
				</p>
				<div class="rateit-range" style="width: 60px; height: 12px;">
					<div class="rateit-selected rateit-preset" style="height: 12px; width: <?=number_format($product['rating']/5*60, 0)?>px;"></div>
				</div>
			</div>
			</a>
		</div>

	<?php
	}
}else{
?>
	<p class="product-name" style="margin-top:20px;width:100%;text-align:center;">Sorry, no products found!</p>
<?php
}
?>
</div>
<?php echo $this->ajax_pagination->create_links(); ?>

