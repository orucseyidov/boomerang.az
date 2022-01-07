<?php $this->load->view("blocks/breadcrumb") ?>
<section class="what-we-do-service bg-white" id="what-we-do-service">
  <div class="themesflat-spacer clearfix" data-desktop="120" data-mobile="60" data-smobile="60"></div>
  <div class="container">
    <div class="row">
      <div class="what-we-do-style what-we-do-style2">
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
          <div class="image-box">
            <div class="image">
              <img src="<?= $s['image']; ?>" alt="">
            </div>
            <span class="number"><?= $i < 10 ? "0".$i++ : $i++; ?></span>
            <div class="icon-window">
              <img src="<?= $s['icon']; ?>" alt="images">
            </div>
            <div class="title-imagebox">
              <h4>
                <a href="<?= base_url("service/" . $s['slug']); ?>"><?= $s['title']; ?></a>
              </h4>
            </div>
            <div class="content-imagebox">
              <p>
                <?= cut(strip_tags($s['description']),134,0,132); ?>
              </p>
            </div>
          </div>
        <?php } ?>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer clearfix" data-desktop="89" data-mobile="60" data-smobile="50"></div>
</section>
<section class="tf-windows-service bg-color-style2">
  <div class="themesflat-spacer clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-7">
        <div class="tf-list-service">
          <div class="title-section wow fadeInDown">
            <div class="sub-title">WELCOME TO janelas</div>
            <div class="flat-title">We Are Windows & Doors Professionals</div>
          </div>
          <div class="tf-box-service flex">
            <div class="list-window bg-white">
              <h3>
                <a href="<?= base_url("windows"); ?>">Windows</a>
              </h3>
              <ul>
                <li>
                  <span>Bibendum gravida</span>
                </li>
                <li>
                  <span>Ultricies curabitur </span>
                </li>
                <li>
                  <span>Imperdiet suspendisse </span>
                </li>
                <li>
                  <span>Imperdiet vel auctor </span>
                </li>
                <li>
                  <span>Est condimentum non </span>
                </li>
              </ul>
            </div>
            <div class="list-service bg-white">
              <h3>
                <a href="<?= base_url("doors"); ?>">Doors</a>
              </h3>
              <ul>
                <li>
                  <span>Consectetur dapibus lobortis </span>
                </li>
                <li>
                  <span>Nisl mollis </span>
                </li>
                <li>
                  <span>Mauris gravida ultricies </span>
                </li>
                <li>
                  <span>Tincidunt quis amet </span>
                </li>
                <li>
                  <span>Mauris vulputate nulla </span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-5">
        <div class="image-hover wow fadeInRight animated" data-wow-delay="0ms" data-wow-duration="1500ms">
          <div class="image">
            <img class="boder-style" src="/assets/images/Services/img1service.jpg" alt="">
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer clearfix" data-desktop="120" data-mobile="40" data-smobile="30"></div>
</section>