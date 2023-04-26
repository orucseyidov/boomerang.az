<?php $this->load->view("blocks/breadcrumb-details") ?>
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