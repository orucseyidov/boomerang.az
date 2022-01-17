<?php $this->load->view("blocks/breadcrumb") ?>
<section class="portfolio text-center" style="padding-top: 45px;">
  <div class="container portfolio-style">
    <div class="tf-tabs-style">
      <div class="flat-tabs tabs-case flat-tabs-type2 clearfix">

        <div class="content-tab">
          <div class="content-inner">
            <div class="col-tab align-items-center">
              <div class="tabs-case-study row">
                <?php foreach ($projects as $key => $value): $link = base_url("/layiheler/{$value['slug']}") ?>
                <div class="image-profolio image-profolio-style2 col-md-4">
                  <div class="image">
                    <img src="<?=$value['image'] ?>" alt="<?=$value['title'] ?>" />
                  </div>
                  <div class="profolio-show">
                    <div class="content-title text-left tf-text-hv">
                      <h4><?=$value['title'] ?></h4>
                      <a href="<?= $link; ?>" class="tftitle-style2"><?= $langs['read_more_inf']; ?></a>
                    </div>
                    <div class="btn-tab">
                      <a href="<?=$link ?>">
                        <i class="fas fa-arrow-right"></i>
                      </a>
                    </div>
                  </div>
                </div>
                <?php endforeach ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
</section>