<?php $this->load->view("blocks/breadcrumb") ?>
<div class="themesflat-spacer  clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
<section class="case-studio-details">
  <div class="container">
    <div class="meta-post">
      <div class="image-hover">
        <div class="image boder-style">
          <img src="<?=$project['image'] ?>" alt="<?=$title ?>">
        </div>
      </div>
      <div class="content-post wow fadeInRight animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <!-- <div class="tf-post">
          <div class="tftitle-style4"> Project Info </div>
          <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt</p>
        </div> -->
        <div class="tf-post">
          <div class="tftitle-style4"> Name </div>
          <p><?=$project['title'] ?></p>
        </div>
        <div class="tf-post">
          <div class="tftitle-style4"> Date </div>
          <p><?=$project['date'] ?></p>
        </div>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="42" data-mobile="30" data-smobile="20"></div>
</section>
<section class="info-project">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="tf-information">
          <div class="title-section wow fadeInDown">
            <?=$project['description'] ?>
          </div>
        </div>
      </div>
    </div>
    <div class="themesflat-spacer clearfix" data-desktop="77" data-mobile="40" data-smobile="30"></div>
    <div class="tag-social">
      <ul class="list-tag flex">
        <li>
          <a href="#">Black</a>
        </li>
        <li>
          <a href="#">Aid</a>
        </li>
        <li>
          <a href="#">Green</a>
        </li>
      </ul>
      <ul class="social flex">
        <li class="text">
          <a href="#">Share :</a>
        </li>
        <li class="icon">
          <!-- AddToAny BEGIN -->
          <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
          <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
          <a class="a2a_button_whatsapp"></a>
          <a class="a2a_button_facebook"></a>
          <a class="a2a_button_twitter"></a>
          <a class="a2a_button_email"></a>
          <a class="a2a_button_facebook_messenger"></a>
          <a class="a2a_button_copy_link"></a>
          </div>
          <script async src="https://static.addtoany.com/menu/page.js"></script>
          <!-- AddToAny END -->
        </li>
      </ul>
    </div>
  </div>
  <div class="themesflat-spacer clearfix" data-desktop="118" data-mobile="40" data-smobile="30"></div>
</section>
<section class="portfolio-slider">
  <div class="container">
    <div class="portfolio-nav bg-white clearfix">
      <div class="title-nav title-nav-style flex">
        <div class="title-section wow fadeInDown">
          <div class="flat-title color-style1"><?= $langs['projects_word']; ?></div> <!-- Related Projects -->
        </div>
      </div>
    </div>
    <div class="tf-partners tf-partners-style image-profolio-hv partners-style2">
      <div class="banners-z">
        <div class="flat-carousel-box data-effect clearfix" data-zero="0" data-gap="30" data-column="3" data-column2="2" data-column3="1" data-dots="false" data-auto="true" data-nav="false" data-loop="true">
          <div class="owl-carousel owl-loaded owl-drag">
            <?php foreach($projects as $p) { ?>
              <div class="tabs-case-study">
                <div class="image-profolio style2">
                  <div class="image boder-style">
                    <img src="<?= $p['image']; ?>" alt="<?= $p['title']; ?>" />
                  </div>
                  <div class="profolio-show">
                    <div class="content-title text-left tf-text-hv">
                      <!-- <h4><?= cut(strip_tags($p['title']),30,0,28); ?></h4> -->
                      <a href="<?= $p['slug']; ?>" class="tftitle-style2"><?= cut(strip_tags($p['title']),30,0,28); ?></a>
                    </div>
                    <div class="btn-tab">
                      <a href="study-details.html">
                        <i class="fas fa-arrow-right"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
</section>