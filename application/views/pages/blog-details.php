<div class="page-title page-title-inner padding-bottom9">
  <div class="overlay-page-tile"></div>
  <div class="page-title-content">
    <div class="container">
      <div class="blog-title color-white">
        <h2><?=$title ?></h2>
        <span>
          <a href="/" class="hv-color-st1 color-white"> Home </a> Blog </span>
      </div>
    </div>
  </div>
</div>
<div class="blog-content no-column clearfix">
  <div class="themesflat-spacer  clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <div class="site-content site-content-style boder-bottom">
          <article class="main-post main-post-style2">
            <div class="featured-post featured-post-style2">
              <div class="entry-image wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
                <img src="<?= $blog['image']; ?>" alt="<?= $blog['title']; ?>" />
              </div>
            </div>
            <div class="content-post flat-row1">
              <ul class="post-meta">
                <li class="font-date">
                  <span>
                    <i class="far fa-eye"></i><?= $blog['view']; ?></span>
                </li>
                <li class="font-date">
                    <span>
                      <i class="far fa-calendar-alt"></i><?= date("d.m.Y", strtotime($blog['date'])); ?>
                    </span>
                </li>
              </ul>
            </div>
            <div class="title-post">
              <h3>
                <span><?=$blog['title']; ?></span>
              </h3>
            </div>
            <p><?=$blog['description']; ?></p>
        </div>
        <!-- <div class="tag-socical">
          <div class="tag">
            <ul>
              <li class="text1">
                <span>Related Tags :</span>
              </li>
              <li class="text2">
                <a href="#">Doctor </a>
                <span class="text2-style2">.</span>
              </li>
              <li class="text2">
                <a href="#">Medical</a>
                <span>.</span>
              </li>
              <li class="text2">
                <a href="#">osud</a>
              </li>
            </ul>
          </div>
          <div class="socical">
            <ul>
              <li class="text1">
                <span>Share :</span>
              </li>
              <li class="topbar-socials">
                <span class="icons">
                  <a href="#">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                  <a href="#">
                    <i class="fab fa-twitter"></i>
                  </a>
                  <a href="#">
                    <i class="fab fa-google-plus-g"></i>
                  </a>
                  <a href="#">
                    <i class="fab fa-instagram"></i>
                  </a>
                </span>
              </li>
            </ul>
          </div>
        </div> -->
      </div>
      <?php $this->load->view("blocks/sidebar") ?>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="109" data-mobile="60" data-smobile="50"></div>
</div>