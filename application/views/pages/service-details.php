<div class="page-title page-title-inner padding-bottom9">
  <div class="overlay-page-tile"></div>
  <div class="page-title-content">
    <div class="container">
      <div class="blog-title color-white">
        <h2><?= $content['service_details_word']['title']; ?></h2>
        <span>
          <a href="<?= base_url(); ?>" class="hv-color-st1 color-white"><?= $content['home_word']['title']; ?></a>
          <?= $content['service_details_word']['title']; ?>
        </span>
      </div>
    </div>
  </div>
</div>
<section class="service-details">
  <div class="themesflat-spacer clearfix" data-desktop="117" data-mobile="60" data-smobile="50"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-8 no-boderright">
        <div class="site-content-style2">
          <div class="image-hover ">
            <div class="image border-5">
              <img src="<?= $service['image']; ?>" alt="<?= $service['title']; ?>">
            </div>
          </div>
          <div class="title-section wow fadeInDown">
            <div class="flat-title"><?= $service['title']; ?></div>
          </div>
          <p class="tf-text2"><?= $service['description']; ?></p>
        </div>
      </div>
      <?php $this->load->view("blocks/sidebar") ?>
    </div>
  </div>
</section>
<?php $this->load->view("blocks/request"); ?>