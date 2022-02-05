<?php //print_r($spare_parts); ?>
<?php $this->load->view("blocks/breadcrumb") ?>
<section class="what-we-do-service bg-white" id="what-we-do-service">
  <div class="themesflat-spacer clearfix" data-desktop="120" data-mobile="60" data-smobile="60"></div>
  <div class="container">
    <div class="row">
      <div class="what-we-do-style what-we-do-style2">
        <div class="content-style2 clearfix">
          <div class="content-service-title">
            <div class="title-section wow fadeInDown">
              <div class="flat-title"><?= $langs['spare_parts']; ?></div>
            </div>
          </div>
          <!-- <div class="content-service">
            <p class="content-p color-style1"><?php //echo $content['services_home']['desc']; ?></p>
          </div> -->
        </div>
        <div class="themesflat-spacer clearfix" data-desktop="43" data-mobile="43" data-smobile="43"></div>
        <?php foreach($spare_parts as $s) { ?>
          <div class="image-box spare-parts-img">
            <div class="image">
              <img src="<?= $s['image']; ?>" alt="<?= $s['title']; ?>">
            </div>
            <div class="title-imagebox">
              <h4>
                <a href="<?= base_url("ehtiyat-hisseleri/" . $s['slug']); ?>"><?= $s['title']; ?></a>
              </h4>
            </div>
            <div class="content-imagebox">
              <p>
                <?= cut(strip_tags($s['description']),130,0,128); ?>
              </p>
            </div>
          </div>
        <?php } ?>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer clearfix" data-desktop="89" data-mobile="60" data-smobile="50"></div>
</section>