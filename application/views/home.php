<section class="cleafix">
  <div class="home-silder-container">
    <div class="swiper-container home-silder">
      <!-- swiper slides -->
      <div class="swiper-wrapper">
        <?php foreach($sliders as $s){ ?>
          <div class="swiper-slide" style="background-image: url(https://source.unsplash.com/random?sig=24);">
              <h2><?= $s['title']; ?></h2>
              <p><?= $s['description']; ?></p>
              <a href="<?= (!empty($s['link'])) ? $s['link']: "javascript:void(0)"; ?>" class="btn btn-silder"><?= $langs['read_more']; ?></a>
          </div>
        <?php } ?>
      </div>
      <!-- !swiper slides -->
      
      <!-- next / prev arrows -->
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <!-- !next / prev arrows -->
      
      <!-- pagination dots -->
      <div class="swiper-pagination"></div>
      <!-- !pagination dots -->
    </div>
  </div>
</section>
<section class="what-we-do-service bg-white" id="what-we-do-service">
  <div class="container">
    <div class="row">
      <div class="themesflat-spacer clearfix" data-desktop="122" data-mobile="60" data-smobile="50"></div>
      <div class="what-we-do-style what-we-do-style1 ">
        <div class="content-style2 clearfix">
          <div class="content-service-title">
            <div class="title-section wow fadeInDown">
              <div class="flat-title"><?= $content['services_home']['title']; ?></div>
            </div>
          </div>
          <div class="content-service">
            <p class="content-p color-style1"><?= $content['services_home']['desc']; ?></p>
          </div>
        </div>
        <div class="themesflat-spacer clearfix" data-desktop="43" data-mobile="43" data-smobile="43"></div>
        <?php $i=1; foreach($services as $s) { ?>
          <div class="col-sm-4">
            <div class="image-box wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
              <div class="image">
                <img src="<?= $s['image']; ?>" alt="">
              </div>
              <span class="number"><?= $i < 10 ? "0".$i++ : $i++; ?></span>
              <div class="icon-window">
                <img src="<?= $s['icon']; ?>" alt="images">
              </div>
              <div class="title-imagebox">
                <h4>
                  <a href="<?= base_url("xidmetler/" . $s['slug']); ?>"><?= $s['title']; ?></a>
                </h4>
              </div>
              <div class="content-imagebox">
              <p>
              <?= cut(strip_tags($s['description']),130,0,128); ?>
              </p>
              </div>
            </div>
          </div>
        <?php } ?>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
</section>

<style type="text/css">
  .productgroup img {
      left: 0;
      top: 0;

      -webkit-transition: all .3s ease-out;
      -moz-transition: all .3s ease-out;
      -ms-transition: all .3s ease-out;
      -o-transition: all .3s ease-out;
      transition: all .3s ease-out;
  }

  .productgroup {
      border-bottom: 3px solid #eee;
      padding-bottom: 10px;
      margin-bottom: 10px;
  }

  .productgroup .image {
      position: relative;
      overflow: hidden;
      /*width: 100%;*/
      height: 180px;
      display: inline-block;
  }
  div.image.revealUpFull .title {
      height: 100%;
      width: 100%;
      bottom: -144px;
  }

  div.image.revealUpFull:hover img {
      top: 0;
  }

  div.image.revealUpFull:hover .title {
      bottom: 0;
  }
  .productgroup .title {
      width: 100%;
      height: 100%;
      position: absolute;
      background: rgb(0, 0, 0); /* fallback color */
      background: rgba(0, 0, 0, 0.7);
      text-align: center;
      font-size: 14px;
      color: white;

      -webkit-transition: all .3s ease-out;
      -moz-transition: all .3s ease-out;
      -ms-transition: all .3s ease-out;
      -o-transition: all .3s ease-out;
      transition: all .3s ease-out;

  }

  .productgroup .title ul li {
      list-style-type: none;
      display: block;
      text-align: center;
      width: 360px;
      background: rgb(153, 153, 153);
      background: rgba(153, 153, 153, 0.4);
      height: 36px;
      line-height: 36px;
      color: #fff;
      border-bottom: 1px solid #000000;
  }

  .productgroup .title ul li:hover {
      background-color: #009dcd;
  }

  .productgroup .title ul li.head {
      background: rgb(66, 139, 202);
      background: rgba(12, 122, 199, 0.78);
      font-size: 16px;

  }

  .productgroup .title ul li a {
      display: block;
      text-align: center;
      text-decoration: none;
      color: #fff;

  }

  .productgroup .title ul {
      float: left;
      padding-left: 0;
  }
</style>

<section class="tf-testimonials clearfix">
  <div class="container">
    <div class="themesflat-spacer clearfix" data-desktop="20" data-mobile="60" data-smobile="50"></div>
    <div class="title-section text-center wow fadeInDown">
      <div class="flat-title flat-style3"><?=$langs['products_home']; ?> </div>
    </div>
    <div class="themesflat-spacer clearfix" data-desktop="46" data-mobile="15" data-smobile="15"></div>
    <div class="flat-carousel-box data-effect clearfix" data-zero="0" data-gap="30" data-column="3" data-column2="1" data-column3="1" data-column4="1" data-dots="false" data-auto="true" data-nav="false" data-loop="true">

      <div class="row productgroup">
          <?php 
            foreach ($category as $key => $value){
              if ($value['parent'] == 0) {
                $link1 = base_url("mehsullar/".$value['slug']);
          ?>
          <div class="col-md-4" title="<?=$value['title'] ?>">
            <!-- Reveal Up Full -->
              <div class="image revealUpFull">
                  <img id="_image39" src="<?=$value['image'] ?>" alt="<?=$value['title'] ?>" class="img-responsive">
                  <div class="title">
                    <!-- <time itemprop="priceValidUntil" datetime="2022-01-14"></time> -->
                      <ul>
                          <li class="head" itemprop="name">
                            <a href="<?=$link1 ?>">
                              <span><?=$value['title'] ?></span>
                            </a>
                          </li>
                          <?php 
                            foreach ($category as $key2 => $value2):
                              if ($value2['parent'] == $value['id']) {
                                $link2 = base_url("mehsullar/".$value2['slug']);
                          ?>
                            <li title="Sənaye qapıları">
                              <a href="<?=$link2 ?>">
                                <i class="fas fa-arrow-right"></i>
                                <span><?=$value2['title'] ?></span>
                              </a>
                            </li>
                          <?php 
                              }
                            endforeach;
                          ?>
                      </ul>
                  </div>
              </div>
              <meta itemprop="priceCurrency" content="AZN">
          </div>
          <?php 
            }//endif
          }
          ?>
      </div>

    </div>
    <div class="themesflat-spacer clearfix" data-desktop="259" data-mobile="60" data-smobile="50"></div>
  </div>
</section>


<section class="about2 bg-color-style2">
  <div class="container">
    <div class="row">
      <div class="themesflat-spacer clearfix" data-desktop="112" data-mobile="60" data-smobile="60"></div>
      <div class="col-sm-6 no-padding-right clearfix">
        <div class="image-hover about-image">
          <div class="image">
            <img src="<?= $about['image']; ?>" alt="images">
          </div>
          <span class="bg-img"></span>
        </div>
      </div>
      <div class="col-sm-6 clearfix no-padding-right">
        <div class="content-about">
          <div class="title-section wow fadeInDown">
            <div class="flat-title margin5-8 padding-right100">
              <?= $about['title']; ?>
            </div>
          </div>
          <?= cut(strip_tags($about['description']),820,0,820); ?>
        </div>
      </div>
    </div>
    <div class="themesflat-spacer clearfix" data-desktop="108" data-mobile="60" data-smobile="50"></div>
  </div>
</section>
<section class="portfolio-slider">
  <div class="portfolio-nav bg-color-style3 clearfix">
    <div class="themesflat-spacer clearfix" data-desktop="93" data-mobile="20" data-smobile="20"></div>
    <div class="container">
      <div class="title-nav flex">
        <div class="title-section wow fadeInDown">
          <div class="flat-title color-style1"><?= $langs['projects_word']; ?></div>
        </div>
      </div>
    </div>
    <div class="themesflat-spacer clearfix" data-desktop="63" data-mobile="20" data-smobile="20"></div>
  </div>
  <div class="tf-partners partners-style2">
    <div class="banners-z">
      <div class="flat-carousel-box data-effect clearfix" data-zero="0" data-gap="0" data-column="4" data-column2="2" data-column3="1" data-dots="false" data-auto="true" data-nav="false" data-loop="true">
        <div class="owl-carousel owl-loaded owl-drag">
          <?php foreach($projects as $p) { ?>
            <div class="image-profolio style2">
              <div class="image">
                <img src="<?= $p['image']; ?>" alt="<?= $p['title']; ?>">
              </div>
              <div class="profolio-show profolio-show-style2">
                <div class="content-title text-left tf-text-hv">
                  <!-- <h4 class="margin-botom5">
                    <span>Nec vehicula </span>
                  </h4> -->
                  <a href="/layiheler/<?= $p['slug']; ?>" id="wrapClass"><?= cut(strip_tags($p['title']),55,0,53); ?></a> 
                </div>
                <div class="btn-tab">
                  <a href="/layiheler/<?= $p['slug']; ?>">
                    <i class="fas fa-arrow-right"></i>
                  </a>
                </div>
              </div>
            </div>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="tf-testimonials clearfix">
  <div class="container">
    <div class="themesflat-spacer clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
    <div class="title-section text-center wow fadeInDown">
      <div class="flat-title flat-style3"><?= $langs['client_home']; ?> </div>
    </div>
    <div class="themesflat-spacer clearfix" data-desktop="46" data-mobile="15" data-smobile="15"></div>
    <div class="flat-carousel-box data-effect clearfix" data-zero="0" data-gap="30" data-column="3" data-column2="1" data-column3="1" data-column4="1" data-dots="false" data-auto="true" data-nav="false" data-loop="true">
      <div class="owl-carousel wow fadeInRight animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <?php foreach($opinions as $o) { ?>
          <div class="tf-image-box text-center bg-color-style2 hv-background-before-style2">
            <div class="image">
              <img src="<?= empty($o['image']) ? "/uploads/nophoto.png" : $o['image']; ?>" alt="<?= $o['username']; ?>">
              <i class="fa fa-quote-left" aria-hidden="true"></i>
            </div>
            <p class="pd-center"><?= $o['opinion']; ?></p>
            <div class="tf-conten">
              <span><?= $o['username']; ?></span>
            </div>
          </div>
        <?php } ?>
      </div>
    </div>
    <div class="themesflat-spacer clearfix" data-desktop="259" data-mobile="60" data-smobile="50"></div>
  </div>
</section>
<section class="blog-latest-news bg-color-style2">
  <div class="container">
    <div class="row">
      <div class="tf-coutor bg-color-style3 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="3s">
        <?php foreach($info_site as $i) { ?>
        <div class="box">
          <div class="icon-wrap margin-right15">
            <i class="<?= $i['icon_class']; ?>"></i>
          </div>
          <div class="coutor-box margin-left120">
            <span class="number" data-from="0" data-to="<?= $i['count']; ?>" data-speed="3000" data-inviewport="yes"><?= number_format($i['count']); ?></span>
            <span class="item-firt"><?= $i['count_side']; ?></span>
            <p class="elementor-counter-title"><?= $i['title']; ?></p>
          </div>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
</section>
<section class="tf-blog-new bg-color-style2">
  <div class="container">
    <div class="tf-blog">
      <div class="title-section text-center wow fadeInDown">
        <div class="flat-title"><?= $langs['blog_home']; ?></div>
      </div>
      <div class="themesflat-spacer  clearfix" data-desktop="61" data-mobile="40" data-smobile="30"></div>
    </div>
    <div class="blog-new">
      <div class="flat-carousel-box data-effect clearfix" data-zero="0" data-gap="30" data-column="3" data-column2="1" data-column3="1" data-dots="false" data-auto="true" data-nav="false" data-loop="true">
        <div class="owl-carousel wow fadeInRight animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <?php foreach($blog_sidebar as $b){ ?>
          <div class="image-box">
            <div class="image">
              <img style="height: 250px;" src="<?= $b['image']; ?>" alt="" />
            </div>
            <div class="meta-blog-style2">
              <span class="entry-calendar">
                <a href="<?= base_url("blog/{$b['slug']}"); ?>">
                  <?= date("d.m.Y", strtotime($b['date'])); ?>
                </a>
              </span>
            </div>
            <div class="content-blog-style2 bg-color">
              <span class="admin tf-text-hv">
                <a href="<?= base_url("blog/{$b['slug']}"); ?>">
                  <i class="far fa-eye"></i><?= $b['view']; ?>
                </a>
              </span>
              <div class="title-blog tf-text-hv">
                <a href="<?= base_url("bloq/{$b['slug']}"); ?>"><?= cut(strip_tags($b['title']),57,0,55); ?></a>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
</section>
<?php $this->load->view("blocks/request"); ?>
<?php $this->load->view("blocks/brands"); ?>