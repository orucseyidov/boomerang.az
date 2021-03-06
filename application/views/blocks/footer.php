<footer id="footer" class="footer footer-h2" style="margin-top: 30px;">
  <div class="overlay-ft"></div>
  <div class="themesflat-spacer clearfix" data-desktop="110" data-mobile="80" data-smobile="80"></div>
  <div class="container">
    <div class="footer-widget clearfix">
      <div class="row">
        <div class="col-sm-3 no-padding-right clearfix">
          <div class="logo clearfix">
            <!-- <a href="index.html">
              <img src="logo/Logolight.png" alt="images" data-retina="logo/Logolight@2x.png">
            </a> -->
            <a href="<?= base_url(); ?>">
                <img src="<?= $footer_logo; ?>" data-retina="<?= $logo; ?>" alt="images">
            </a>
          </div>
          <p><?= $settings['description']; ?></p>
          <div class="topbar-socials">
            <?php foreach($social as $s) { ?>
                <a href="<?= $s['link']; ?>">
                    <i class="fab fa-<?= $s['name']; ?>"></i>
                </a>
            <?php } ?>
          </div>
        </div>
        <div class="col-sm-3 footer-widget-style1">
          <div class="footer-contact">
            <div class="title-ft"><?= $langs['contact_word']; ?></div>
            <div class="tf-info call-us">
              <!-- <i class="icon-call-us margintop-3"></i> -->
              <i style="padding-top: 7px; color: #e3cca1;" class="fas fa-map-marker-alt"></i>
              <div class="content-call-us">
                <div class="text">
                  <span><?= $contacts['adress']; ?></span>
                </div>
              </div>
            </div>
            <div class="tf-info mail">
              <i style="padding-top: 7px; color: #e3cca1;" class="fas fa-envelope"></i>
              <!-- <i class="icon-mail"></i> -->
              <div class="content-mail">
                <div class="text">
                  <span>
                    <a href="mailto:<?= $contacts['mail']; ?>" class="__cf_email__" data-cfemail="f9b0979f96b9968b9c81d79a9694"><?= $contacts['mail']; ?></a>
                  </span>
                </div>
              </div>
            </div>
            <div class="tf-info phone">
              <i style="padding-top: 7px; color: #e3cca1;" class="fas fa-phone-alt"></i>
              <!-- <i class="icon-phone"></i> -->
              <div class="content-phone">
                <div class="text">
                  <span><?= $contacts['phone']; ?></span>
                </div>
                <div class="text">
                  <span><?= $contacts['mobile']; ?></span>
                </div>
                <div class="text">
                  <span><?= $contacts['whatsapp']; ?></span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3 footer-widget-style1">
          <div class="link">
            <div class="title-ft"><?= $langs['useful_links']; ?></div>
            <ul>
              <?php foreach($menu as $m) { ?>
                <li>
                  <a href="<?= base_url() . $m['slug']; ?>"><?= $m['name']; ?></a>
                </li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <div class="col-sm-3 footer-widget-style1">
          <div class="subscribe">
            <div class="title-ft"><?= $content['subscribe_home']['title'] ?></div>
            <div class="subscribe_msg"></div> <!-- col-sm-12 -->
            <form action="" id="subscribe" class="form-email">
              <input type="text" class="email-here" name="mail" placeholder="Email" required />
              <button class="font-style border-corner themesflat-button-style2 btn-style-4" id="btn-subs">
                <span class="btn-title"><?= $content['subscribe_home']['title'] ?></span>
              </button>
            </form>
            <?= $content['subscribe_home']['desc'] ?>
          </div>
        </div>
      </div>
    </div>
    <div id="botom">
      <div class="bottom-wrap text-center">
        <div id="copyright">
          <a href="https://goweb.az/">
            <span class="color-botom">2022 | © Development Goweb Creative Agency</span>
          </a>
        </div>
      </div>
    </div>
  </div>
</footer>
</div>
<div class="button-go-top">
  <a href="#" title="" class="go-top">
    <i class="fa fa-chevron-up"></i>
  </a>
</div>
  <script src="/assets/js/jquery.min.js"></script>
  <script src="/assets/js/plugins.js"></script>
  <script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>
  <script src="/assets/js/parallax.js"></script>
  <script type="text/javascript" src="/assets/js/jquery-countTo.js"></script>
  <script type="text/javascript" src="/assets/js/jquery.easing.js"></script>
  <script type="text/javascript" src="/assets/js/jquery.cookie.js"></script>
  <script type="text/javascript" src="/assets/js/waypoints.min.js"></script>
  <script type="text/javascript" src="/assets/js/main.js"></script>
  <script type="text/javascript" src="/assets/js/wow.min.js"></script>
  <script type="text/javascript" src="/assets/js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="/assets/js/animsition.js"></script>
  <script type="text/javascript" src="/assets/js/recliner.min.js"></script>
  <script type="text/javascript" src="/assets/js/jquery.fancybox.js"></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.3/js/swiper.js'>
  <?php 
    if (!empty($headdata)) {echo $headdata;}
    $this->load->view("blocks/scripts");
  ?>
  </body>
</html>