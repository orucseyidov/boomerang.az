<?php $this->load->view("blocks/breadcrumb") ?>
<section class="about-us about-us-style" id="about-us">
  <div class="container">
    <div class="row">
      <div class="themesflat-spacer clearfix" data-desktop="85" data-mobile="60" data-smobile="50"></div>
      <div class="col-sm-6 clearfix wow  animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <div class="image-puzzle">
          <span class="img-bg"></span>
          <div class="image-hover">
            <div class="image">
              <img src="<?= $about['image']; ?>" alt="images" />
            </div>
          </div>
          <span class="img-bg2"></span>
        </div>
      </div>
      <div class="col-sm-6 clearfix margin-botom35">
        <div class="title-section margin-top71 wow fadeInDown">
          <div class="flat-title margin5-28 padding-right100"><?= $about['title']; ?></div>
        </div>
        <?= $about['description']; ?>
      </div>
    </div>
  </div>
  <div class="img-about-us">
    <img src="/assets/images/about/imgabout1.png" alt="" />
  </div>
  <div class="themesflat-spacer clearfix" data-desktop="128" data-mobile="50" data-smobile="40"></div>
</section>
<?php $this->load->view("blocks/request"); ?>