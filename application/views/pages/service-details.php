<div class="page-title page-title-inner padding-bottom9">
  <div class="overlay-page-tile"></div>
  <div class="page-title-content">
    <div class="container">
      <div class="blog-title color-white">
        <h2>Service Details</h2>
        <span>
          <a href="<?= base_url(); ?>" class="hv-color-st1 color-white"> Home </a>Service Details </span>
      </div>
    </div>
  </div>
</div>
<section class="service-details">
  <div class="themesflat-spacer clearfix" data-desktop="117" data-mobile="60" data-smobile="50"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-4 clearfix">
        <div id="sidebar sidebar-service">
          <div id="inner-sidebar" class="inner-content-wrap">
            <div class="widget widget-style2 widget-category widget-bg">
              <h2 class="widget-title-style2 widget-title-style2 ">
                <span>Popular Service</span>
              </h2>
              <ul class="category-wrap wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                <li>
                  <div class="block-inside">
                    <a href="<?= base_url("services"); ?>">Tempor lorem interdum</a>
                  </div>
                </li>
                <li>
                  <div class="block-inside">
                    <a href="<?= base_url("services"); ?>">Auctor mattis lacus</a>
                  </div>
                </li>
                <li>
                  <div class="block-inside">
                    <a href="<?= base_url("services"); ?>">Dolor proin</a>
                  </div>
                </li>
                <li>
                  <div class="block-inside">
                    <a href="<?= base_url("services"); ?>">Pharetra amet</a>
                  </div>
                </li>
                <li>
                  <div class="block-inside">
                    <a href="<?= base_url("services"); ?>">Nullam dolor gravida</a>
                  </div>
                </li>
              </ul>
            </div>
            <div class="image-box-style3 bg-color">
              <div class="image">
                <img src="/assets/images/Blog/imgwigetcontact.jpg" alt="images">
              </div>
              <i class="icon-Icon-metro-file-pdf"></i>
              <div class="content-image-box">
                <div class="tftitle-style2"> Company Profile </div>
                <p class="color-white">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt</p>
                <div class="btn-dowload">
                  <a href="#">Download</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-8 no-boderright">
        <div class="site-content-style2">
          <div class="image-hover ">
            <div class="image border-5">
              <img src="/assets/images/Services/imgservice15.jpg" alt="images">
            </div>
          </div>
          <div class="title-section wow fadeInDown">
            <div class="flat-title"><?= $service['title']; ?></div>
          </div>
          <p class="tf-text2"><?= $service['description']; ?></p>
        </div>
      </div>
    </div>
  </div>
</section>
<?php $this->load->view("blocks/request"); ?>