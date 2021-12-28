<!-- Header Banner -->
		<section class="banner-header banner-img valign bg-img bg-fixed" data-overlay-darkgray="5" data-background="<?=$ogimage ?>">
			<!-- Left Panel -->
			<div class="left-panel"></div>
		</section>
		<!-- Services -->
		<section class="services section-padding2">
			<div class="container">
				<div class="row">
					<div class="col-md-12 animate-box" data-animate-effect="fadeInUp">
						<h2 class="section-title">Our <span>Services</span></h2> </div>
				</div>
				<div class="row">
					
					<?php foreach ($services as $key => $value): ?>
					<div class="col-md-4">
						<div class="item">
							<a href="/services/<?=$category['slug']."/".$value['slug'] ?>"> 
								<img src="<?=$value['image'] ?>" alt="<?=$value['title'] ?>">
								<h5><?=$value['title'] ?></h5>
								<div class="line"></div>
								<p><?=cut(strip_tags($value['description']),103,0,103) ?></p>
								<div class="numb">
									<?php 
										$counter++;
										echo strlen($counter) == 1 ? "0".$counter : $counter; 
									?>
								</div>
							</a>
						</div>
					</div>
					<?php endforeach ?>
				</div>
			</div>
		</section>