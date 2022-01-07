<div class="page-title page-title-inner padding-bottom9">
  <div class="overlay-page-tile"></div>
  <div class="page-title-content">
    <div class="container">
      <div class="blog-title color-white">
        <?php print_r($blogDetails); ?>
        <h2>Blog Details</h2>
        <span>
          <a href="<?= base_url(); ?>" class="hv-color-st1 color-white"> Home </a>Blog Details </span>
      </div>
    </div>
  </div>
</div>
<div class="blog-content no-column clearfix">
  <div class="themesflat-spacer  clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
  <div class="container">
    <div class="col-left">
      <div class="site-content site-content-style boder-bottom">
        <article class="main-post main-post-style2">
          <div class="featured-post featured-post-style2">
            <div class="entry-image wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
              <img src="<?= $blogDetails['image']; ?>" alt="images" />
            </div>
          </div>
          <div class="content-post flat-row1">
            <ul class="post-meta">
              <li class="font-date">
                <span>
                  <i class="far fa-user"></i>BY ADMIN </span>
              </li>
              <li class="font-date">
                <span>
                  <span>
                    <i class="far fa-calendar-alt"></i><?= ($blogDetails['date'] == "0000-00-00") ? date("d.m.Y", strtotime($blogDetails['created_at'])): date("d.m.Y", strtotime($blogDetails['date'])); ?></span>
                </span>
              </li>
            </ul>
          </div>
          <div class="title-post">
            <h3>
              <span><?= $blogDetails['title']; ?></span>
            </h3>
          </div>
          <p><?= $blogDetails['description']; ?></p>
          <!-- <p class="paddingright5 ">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum </p>
          <p class="paddingright5">dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus </p>
          <div class="vertical-bar margin-top41 clearfix">
            <div class="bar bar-style2"></div>
            <div class="content-bar">
              <ul>
                <li class="paddingright15 font-weight500">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </li>
                <li class="margin-top10">
                  <span>Kyle Dean</span>
                </li>
              </ul>
            </div>
          </div>
          <div class="title-post margin-top37">
            <h3>
              <span>Fparks calls for scrutiny</span>
            </h3>
          </div>
          <p class="padding-left2">labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor </p> -->
        </article>
        <!-- <article class="main-post main-post-style1">
          <div class="featured-post">
            <div class="entry-image margin-img wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
              <img src="/assets/images/Blog/imgblogdetails.jpg" alt="images" />
            </div>
          </div>
          <div class="title-post title-post-style2">
            <h3>
              <span>AMC Entertainment sparks calls for scrutiny</span>
            </h3>
          </div>
          <p class="padding-left2">labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam</p>
          <p class="end-p padding-left2">labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum</p>
        </article> -->
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
      <div id="comments" class="comments-area">
        <h2 class="comments-title">Comments</h2>
        <ol class="comment-list">
          <li class="comment wow fadeInLeft animated" data-wow-delay="0ms" data-wow-duration="1500ms">
            <article class="comment-wrap clearfix">
              <div class="gravatar">
                <img alt="image" src="/assets/images/Blog/imgcomment1.jpg">
              </div>
              <div class="comment-content">
                <div class="comment-meta">
                  <h6 class="comment-author">Laurel Wallace</h6>
                  <span class="comment-time">May 18</span>
                </div>
                <div class="comment-text">
                  <p>Proin ac quam et lectus vestibulum blandit. Nunc maximus nibh at placerat tincidunt. Nam sem lacus, ornare non ante sed, ultricies </p>
                </div>
                <div class="comment-reply ">
                  <a href="#" class="comment-reply-link">Reply</a>
                </div>
              </div>
            </article>
            <ul class="children">
              <li class="comment">
                <article class="comment-wrap clearfix">
                  <div class="gravatar no-padding-left">
                    <img alt="image" src="/assets/images/Blog/imgcomment2.jpg">
                  </div>
                  <div class="comment-content">
                    <div class="comment-meta">
                      <h6 class="comment-author">Bobby Hawkins</h6>
                      <span class="comment-time">December 22</span>
                    </div>
                    <div class="comment-text">
                      <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut arcu libero, pulvinar non</p>
                    </div>
                    <div class="comment-reply">
                      <a href="#" class="comment-reply-link">Reply</a>
                    </div>
                  </div>
                </article>
              </li>
            </ul>
          </li>
        </ol>
        <div id="respond" class="comment-respond">
          <h2 id="reply-title">Leave a Reply</h2>
          <form action="#" method="post" id="commentform" class="comment-form wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
            <div class="text-wrap clearfix">
              <fieldset class="name-wrap">
                <input type="text" id="author" class="tb-my-input" name="author" tabindex="1" placeholder="Your Name*" value="" size="32" aria-required="true" required>
              </fieldset>
              <fieldset class="email-wrap">
                <input type="email" id="email" class="tb-my-input" name="email" tabindex="2" placeholder="Your E-mail*" value="" size="32" aria-required="true" required>
              </fieldset>
            </div>
            <fieldset class="message-wrap">
              <textarea id="comment-message" name="comment" rows="8" tabindex="4" placeholder="Enter comment here...*" aria-required="true" required></textarea>
            </fieldset>
            <div class="btn-load">
              <button type="submit" class="themesflat-button-style2 btn-style-4 nopadding">
                <span class="btn-title btn-reply-style leter-spacing-none">Post Comment</span>
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="col-right col-right-style">
      <div id="sidebar">
        <div id="inner-sidebar" class="inner-content-wrap">
          <div class="widget widget-search clearfix">
            <h2 class="widget-title">
              <span>Search</span>
            </h2>
            <form action="#" class="form-search clearfix">
              <input type="search" class="search" placeholder="Search here" required />
              <button class="btn-search linear-color">
                <i class="fa fa-search" aria-hidden="true"></i>
              </button>
            </form>
          </div>
          <div class="widget widgetstyle widget-category widget-bg">
            <h2 class="widget-title">
              <span>Category</span>
            </h2>
            <ul class="category-wrap">
              <li>
                <div class="block-inside">
                  <a href="<?= base_url("blog-standard"); ?>">Tempor lorem interdum </a>
                </div>
              </li>
              <li>
                <div class="block-inside">
                  <a href="<?= base_url("blog-standard"); ?>">Auctor mattis lacus</a>
                </div>
              </li>
              <li>
                <div class="block-inside">
                  <a href="<?= base_url("blog-standard"); ?>">Dolor proin</a>
                </div>
              </li>
              <li>
                <div class="block-inside">
                  <a href="<?= base_url("blog-standard"); ?>">Pharetra amet</a>
                </div>
              </li>
              <li>
                <div class="block-inside">
                  <a href="<?= base_url("blog-standard"); ?>">Nullam dolor gravida</a>
                </div>
              </li>
            </ul>
          </div>
          <div class="widget widget_lastest">
            <h2 class="widget-title padding-left2">
              <span>Recent News</span>
            </h2>
            <ul class="lastest-posts data-effect margintop3 clearfix">
              <?php foreach($recent_blogs as $b) { ?>
                <li class="lastest-box clearfix">
                <div class="thumb">
                  <img style="width: 75px; height: 70px;" src="<?= $b['image']; ?>" alt="Image" />
                  <div class="overlay-effect"></div>
                </div>
                <div class="text">
                  <h5>
                    <a href="<?= base_url("blog-standard"); ?>"><?= cut(strip_tags($b['title']),75,0,70); ?></a>
                  </h5>
                  <span class="post-date">
                    <i class="far fa-calendar-alt"> <?= ($b['date'] == "0000-00-00") ? date("d.m.Y", strtotime($b['created_at'])): date("d.m.Y", strtotime($b['date'])); ?> </i>
                  </span>
                </div>
              </li>
              <?php } ?>
              <!-- <li class="lastest-box clearfix">
                <div class="thumb">
                  <img src="/assets/images/Blog/imgrencen3.jpg" alt="Image" />
                  <div class="overlay-effect"></div>
                </div>
                <div class="text">
                  <h5>
                    <a href="<?= base_url("blog-standard"); ?>">Integer at faucibus urna. <br /> Nullam condimentum </a>
                  </h5>
                  <span class="post-date">
                    <span class="entry-date">15 October</span>
                  </span>
                </div>
              </li>
              <li class="lastest-box clearfix">
                <div class="thumb">
                  <img src="/assets/images/Blog/imgrencen2.jpg" alt="Image" />
                  <div class="overlay-effect"></div>
                </div>
                <div class="text">
                  <h5>
                    <a href="<?= base_url("blog-standard"); ?>">Nunc scelerisque tincidunt <br /> estibulum </a>
                  </h5>
                  <span class="post-date">
                    <span class="entry-date">21 July</span>
                  </span>
                </div>
              </li>
              <li class="lastest-box clearfix">
                <div class="thumb">
                  <img src="/assets/images/Blog/imgrencen1.jpg" alt="Image" />
                  <div class="overlay-effect"></div>
                  <div class="elm-link">
                    <a href="<?= base_url("blog-details"); ?>" class="icon-2"></a>
                  </div>
                </div>
                <div class="text">
                  <h5>
                    <a href="<?= base_url("blog-standard"); ?>">Cras eu elit congue, plac <br /> erat duicidunt nisl </a>
                  </h5>
                  <span class="post-date">
                    <span class="entry-date">21 December</span>
                  </span>
                </div>
              </li> -->
            </ul>
          </div>
          <div class="blog-contact wow fadeInRight animated" data-wow-delay="0ms" data-wow-duration="1500ms">
            <img src="/assets/images/Blog/imgwigetcontact.jpg" alt="" />
            <div class="contact-info">
              <div class="call-us">
                <i style="padding-top: 13px; color: #e3cca1;" class="fas fa-phone-alt"></i>
                <div class="content-call-us">
                  <div class="text-body">
                    <span>Call Us</span>
                  </div>
                  <div class="text-number">
                    <span>360-779-2228</span>
                  </div>
                </div>
              </div>
              <div class="mail">
                <i style="padding-top: 5px; color: #e3cca1;" class="fas fa-envelope"></i>
                <div class="content-mail">
                  <div class="text-body">
                    <span>Our Mail</span>
                  </div>
                  <div class="text-number">
                    <span>
                      <a href="https://themesflat.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="5821372d2a3639353d1835393134763b3735">[email&#160;protected]</a>
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="109" data-mobile="60" data-smobile="50"></div>
</div>