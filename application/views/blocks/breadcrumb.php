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
          <a href="<?= base_url(); ?>" class="hv-color-st1 color-white"><?= $content['home_word']['title'] . " "; ?></a><?= $title; ?></span>
      </div>
    </div>
  </div>
</div>