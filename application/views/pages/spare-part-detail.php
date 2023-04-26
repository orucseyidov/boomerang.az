<style type="text/css">
   .page-title {
       padding-bottom: 0px;
   }
   .page-title-content {
       text-align: center;
       padding: 1px 0 40px 0;
   }
   .page-title {
      padding-top: 58px;
   }
</style>
<div class="page-title page-title-inner padding-bottom9" style="background-image: url(<?=!empty($ogimage) ? $ogimage : '/assets/images/header/imgheader.jpg'; ?>);" >
  <div class="overlay-page-tile"></div>
  <div class="page-title-content">
    <div class="container">
      <div class="blog-title color-white">
        <h2><?= $title; ?></h2>
        <span>
          <a href="<?= base_url(); ?>" class="hv-color-st1 color-white"><?= $langs['home_word'] . " "; ?></a>
          <a href="/<?= $this->uri->segment(1) ?>" class="hv-color-st1 color-white"><?= $langs['spare_parts']. " "; ?></a>
          <?=$btitle; ?></span>
      </div>
    </div>
  </div>
</div><div class="blog-content no-column clearfix">
  <div class="themesflat-spacer  clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <div class="site-content site-content-style boder-bottom">
          <article class="main-post main-post-style2">
            <div class="featured-post featured-post-style2">
              <div class="entry-image wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
                <img src="<?= $spare_part['image']; ?>" alt="<?= $spare_part['title']; ?>" />
              </div>
            </div>
            <div class="content-post flat-row1">
              <ul class="post-meta">
                <li class="font-date">
                    <span>
                      <i class="far fa-calendar-alt"></i><?= date("d.m.Y", strtotime($spare_part['created_at'])); ?>
                    </span>
                </li>
              </ul>
            </div>
            <div class="title-post">
              <h3>
                <span><?=$spare_part['title']; ?></span>
              </h3>
            </div>
            <p><?=$spare_part['description']; ?></p>
        </div>
        <div class="tag-socical">
          <div class="tag">
            <ul style="max-width: 400px;">
              <li class="text1">
                <span><?= $langs['tags_word']; ?> :</span>
              </li>
              <?php if (!empty($spare_part['keywords'])): ?>
                <?php foreach (explode(",",$spare_part['keywords']) as $key => $value): ?>
                  <li class="text2">
                    <a href="javascript:void(0)"><?=$value ?> </a>
                    <span class="text2-style2">.</span>
                  </li>
                <?php endforeach ?>
              <?php endif ?>
            </ul>
          </div>
          <div class="socical">
            <ul class="social flex">
              <li class="text1">
                <!-- <a href="javascript:void(0)"><span><?= $langs['share_word']; ?> :</span></a> -->
                <span><?= $langs['share_word']; ?> :&#160</span>
              </li>
              <li class="icon">
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
              </li>
            </ul>
          </div>
        </div>
      </div>
      <?php $this->load->view("blocks/sidebar") ?>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="109" data-mobile="60" data-smobile="50"></div>
</div>