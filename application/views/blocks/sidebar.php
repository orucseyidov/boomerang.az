<div class="col-md-4 margin-top2">
  <div id="sidebar" class="sidebar-style2">
    <div class="themesflat-spacer clearfix" data-desktop="0" data-mobile="60" data-smobile="60"></div>
    <div id="inner-sidebar" class="inner-content-wrap">
      <div class="widget widget-search clearfix">
        <h2 class="widget-title">
          <span><?= $langs['search_word']; ?></span>
        </h2>
        <form action="#" class="form-search clearfix">
          <input type="search" class="search margin-top1" placeholder="<?= strip_tags($langs['search_here']); ?>" required />
          <button class="btn-search linear-color">
            <i class="fa fa-search" aria-hidden="true"></i>
          </button>
        </form>
      </div>
      <div class="widget widgetstyle widget-category widget-bg">
        <h2 class="widget-title">
          <span><?= $langs['services_word']; ?></span>
        </h2>
        <ul class="category-wrap">
          <?php foreach($slidebar_services as $s) { ?>
            <li>
              <div class="block-inside">
                <a href="/xidmetler/<?= $s['slug']; ?>"><?= $s['title']; ?></a>
              </div>
            </li>
          <?php } ?>
        </ul>
      </div>
      <div class="widget widget_lastest">
        <h2 class="widget-title padding-left2">
          <span><?= $langs['projects_word']; ?></span>
        </h2>
        <ul class="lastest-posts data-effect margintop3 clearfix">
          <?php foreach($slidebar_projects as $p) { ?>
            <li class="lastest-box clearfix">
              <div class="thumb">
                <img style="max-width: 75px; height: 70px;" src="<?= $p['image']; ?>" alt="<?= $p['title']; ?>" />
                <div class="overlay-effect"></div>
                <div class="elm-link">
                  <a href="#" class="icon-2"></a>
                </div>
              </div>
              <div class="text">
                <h5>
                  <a href="/layiheler/<?= $p['slug']; ?>"><?= $p['title']; ?></a>
                </h5>
                <span class="post-date">
                  <i class="far fa-calendar-alt"></i><?= " " . date("d.m.Y", strtotime($p['date'])); ?>
                </span>
              </div>
            </li>
          <?php } ?>
        </ul>
      </div>
      <div class="widget widget_lastest">
        <h2 class="widget-title padding-left2">
          <span><?= $langs['recent_news']; ?></span>
        </h2>
        <ul class="lastest-posts data-effect margintop3 clearfix">
          <?php foreach($slidebar_blogs as $b) { ?>
            <li class="lastest-box clearfix">
              <div class="thumb">
                <img style="max-width: 75px; height: 70px;" src="<?= $b['image']; ?>" alt="<?= $b['title']; ?>" />
                <div class="overlay-effect"></div>
                <div class="elm-link">
                  <a href="#" class="icon-2"></a>
                </div>
              </div>
              <div class="text">
                <h5>
                  <a href="/bloq/<?= $b['slug']; ?>"><?= cut(strip_tags($b['title']),70,0,68); ?></a>
                </h5>
                <span class="post-date">
                  <i class="far fa-calendar-alt"></i><?= " " . date("d.m.Y", strtotime($b['date'])); ?>
                </span>
              </div>
            </li>
          <?php } ?>
        </ul>
      </div>
      <div class="blog-contact wow fadeInRight animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <img src="/assets/images/Blog/imgwigetcontact.jpg" alt="<?= $langs['contact_word']; ?>" />
        <div class="contact-info">
          <div class="call-us">
            <i style="padding-top: 15px; color: #e3cca1;" class="fas fa-phone-alt"></i>
            <div class="content-call-us">
              <div class="text-body">
                <span><?= $langs['call_us']; ?></span>
              </div>
              <div class="text-number">
                <span><?= $contacts['phone']; ?></span>
              </div>
            </div>
          </div>
          <div class="mail">
            <i style="padding-top: 13px; color: #e3cca1;" class="fas fa-envelope"></i>
            <div class="content-mail">
              <div class="text-body">
                <span><?= $langs['our_email']; ?></span>
              </div>
              <div class="text-number">
                <span>
                  <a href="mailto:<?= $contacts['mail']; ?>" class="color-white __cf_email__" data-cfemail="1d6472686f737c70785d707c7471337e7270"><?= $contacts['mail']; ?></a>
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>