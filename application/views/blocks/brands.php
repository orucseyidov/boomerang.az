<section class="carousel wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
  <div class="container">
    <div class="themesflat-spacer clearfix" data-desktop="277" data-mobile="200" data-smobile="100"></div>
    <div class="partners partners-style1 partners-style1-hv">
      <div class="banners-z">
        <div class="flat-carousel-box data-effect clearfix" data-zero="0" data-gap="70" data-column="5" data-column2="3" data-column3="2" data-dots="false" data-auto="true" data-nav="false" data-loop="true">
          <div class="owl-carousel owl-loaded owl-drag owl-carousel-style1">
            <?php foreach($brands as $b) { ?>
              <a href="<?= empty($b['slug']) ? " " : $b['slug']; ?>">
                <img src="<?= $b['image']; ?>" alt="<?= $b['title']; ?>" />
              </a>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
    <div class="themesflat-spacer clearfix" data-desktop="92" data-mobile="60" data-smobile="50"></div>
  </div>
</section>