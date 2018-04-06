<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Buy Makeup, Cosmetics and Skincare | Sephora Singapore</title>
	<meta content='Sephora, where beauty beats. Discover the best in makeup, skin care, and more from a wide selection of beauty brands. Free shipping for orders above S$40.' id='meta-description' name='description'>
	<meta content='Sephora,Singapore,Beauty,Cosmetics,SkinCare,FreeDelivery' id='meta-keywords' name='keywords'>

	<link rel="stylesheet" href="<?php echo base_url(); ?>css/foundation.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>css/app.css">

</head>
<body>

<article class="grid-container">
	<div class="grid-x grid-padding-x">

		<div class="medium-3 small-12 cell" style="margin-top:20px;margin-bottom:20px;">
			<a href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>images/logo.svg"></a>
		</div>

	</div>
	<div class="grid-x grid-padding-x">
		<div class="medium-3 small-6 cell" style="margin-top:20px;">
			<div class="filer-title">Category Filter</div>
			<ul class="vertical menu">
				<li>
					<input class="categoryFilter" type="radio" name="categoryFilter" value="all_cat" id="all_cat" onchange="searchFilter()" checked />
					<label class="choice" for="all_cat">All Category</label><br />
				</li>
			<?php
			if(!empty($categorys)){
				foreach($categorys as $category){
				?>
				<li>
					<input class="categoryFilter" type="radio" name="categoryFilter" value="<?=$category['category']?>" id="<?=$category['category']?>" onchange="searchFilter()" />
					<label class="choice category-name" for="<?=$category['category']?>"><?=$category['category']?></label><br />
				</li>
				<?php
				}
			}
			?>
			</ul>
			<div class="filer-title">Price Range</div>
			<ul class="vertical menu">
				<li>
					<input type="radio" class="priceRange" name="priceRange" value="0_max" id="0_max" onchange="searchFilter()" checked />
					<label class="choice" for="0_max">All Price</label><br />
				</li>
				<li>
					<input type="radio" class="priceRange" name="priceRange" value="0_2400" id="0_2400" onchange="searchFilter()" />
					<label class="choice" for="0_2400">Under $25</label><br />
				</li>
				<li>
					<input type="radio" class="priceRange" name="priceRange" value="2500_5000" id="2500_5000" onchange="searchFilter()" />
					<label class="choice" for="2500_5000"> $25 - $50</label><br />
				</li>
				<li>
					<input type="radio" class="priceRange" name="priceRange" value="5000_10000" id="5000_10000" onchange="searchFilter()" />
					<label class="choice" for="5000_10000"> $50 - $100</label><br />
				</li>
				<li>
					<input type="radio" class="priceRange" name="priceRange" value="10000_15000" id="10000_15000" onchange="searchFilter()" />
					<label class="choice" for="10000_15000"> $100 - $150</label><br />
				</li>
				<li>
					<input type="radio" class="priceRange" name="priceRange" value="15000_max" id="15000_max" onchange="searchFilter()" />
					<label class="choice" for="15000_max">Above $150</label><br />
				</li>
			</ul>
		</div>
		<div class="medium-9 small-6 cell" style="margin-top:20px;">
			<div class="grid-x grid-padding-x" >
				<div class="medium-9 small-6 cell">
					<label for="middle-label" class="text-right middle sort-label">Sort: </label>
				</div>
				<div class="medium-3 small-6 cell">
					<select class="sort-option" id="sortBy" onchange="searchFilter()">
						<option class="form-option sort-option" value="LOW_TO_HIGH">Price: Low to High</option>
						<option class="form-option sort-option" value="HIGH_TO_LOW">Price: High to Low</option>
					</select>
				</div>
			</div>

			<div class="post-list" id="postList">
				<div class="grid-x grid-margin-x small-up-1 medium-up-2 large-up-3">
				<?php
				if(!empty($products)){
					foreach($products as $product){
					?>

						<div class="cell" >
							<a href="<?php echo base_url(); ?>product/detail/<?=$product['id']?>">
							<div class="callout" style="border: 0px;">
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
								<p class="product-desc"><?=$product['description']?></p>
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
				}
				else{
				?>
					<p class="product-name" style="margin-top:20px;width:100%;text-align:center;">Sorry, no products found!</p>
				<?php
				}
				?>

				</div>
				<?php echo $this->ajax_pagination->create_links(); ?>
			</div>
			<div class="loading" style="display: none;"><div class="content"><img src="<?php echo base_url().'images/loading.gif'; ?>"/></div></div>
		</div>
	</div>

</article>

<script src="<?php echo base_url(); ?>js/vendor/jquery.js"></script>
<script src="<?php echo base_url(); ?>js/vendor/foundation.min.js"></script>

<script>
    $(document).foundation();
</script>
<script>
$(document).ready(function() {
  $("a").on("click touchend", function(e) {
    var el = $(this);
    var link = el.attr("href");
    window.location = link;
  });
});
function searchFilter(page_num) {
    page_num = page_num?page_num:0;

    var categoryFilter = $("input[name='categoryFilter']:checked").val();
	var priceRange = $("input[name='priceRange']:checked").val();
    var sortBy = $('#sortBy').val();
    $.ajax({
        type: 'POST',
        url: '<?php echo base_url(); ?>product/filter/'+page_num,
        data:'page='+page_num+'&sortBy='+sortBy+'&cat='+categoryFilter+'&price='+priceRange,
        beforeSend: function () {
			$('#postList').hide();
            $('.loading').show();
        },
        success: function (html) {
			$('.loading').hide();
			$('#postList').show();
            $('#postList').html(html);
        }
    });
}
</script>
</body>
</html>
