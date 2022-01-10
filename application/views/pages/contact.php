<?php $this->load->view("blocks/breadcrumb") ?>
<section class="tf-contact-us">
  <div class="container">
    <div class="row">
      <div class="themesflat-spacer  clearfix" data-desktop="125" data-mobile="60" data-smobile="50"></div>
      <div class="title-section text-center wow fadeInDown">
        <div class="sub-title">Contact Us</div>
        <div class="flat-title flat-title-style5">Get In Touch</div>
      </div>
      <div class="themesflat-spacer  clearfix" data-desktop="46" data-mobile="30" data-smobile="20"></div>
      <div class="col-md-4 wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <ul class="contact-us-style flex clearfix">
          <li class="location-icon">
            <span>
              <i class="fas fa-map-marker-alt"></i>
            </span>
          </li>
          <li class="content-style">
            <h6 class="tftitle-style3"><?= $content['address_word']['title']; ?></h6>
            <p><?= $contacts['adress']; ?></p>
          </li>
        </ul>
      </div>
      <div class="col-md-4 wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <ul class="contact-us-style flex clearfix">
          <li class="location-icon location-icon-style2">
            <span>
              <i class="fas fa-phone-alt"></i>
            </span>
          </li>
          <li class="content-style content-contact-us">
            <h6 class="tftitle-style3"><?= $content['phone_word']['title']; ?></h6>
            <p><?= $contacts['phone'] . "<br />" . $contacts['mobile']; ?></p>
          </li>
        </ul>
      </div>
      <div class="col-md-4 wow fadeInUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <ul class="contact-us-style flex clearfix">
          <li class="location-icon location-icon-style3">
            <span>
              <i class="fas fa-envelope"></i>
            </span>
          </li>
          <li class="content-style">
            <h6 class="tftitle-style3"><?= $content['mail_word']['title']; ?></h6>
            <a href="mailto:<?= $contacts['mail']; ?>" class="__cf_email__" data-cfemail="f9b0979f96b9968b9c81d79a9694"><?= $contacts['mail']; ?></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="125" data-mobile="60" data-smobile="50"></div>
</section>
<div>
  <div class="map">
    <?= $contacts['map']; ?>
  </div>
</div>
<section class="questions questions-location">
  <div class="themesflat-spacer  clearfix" data-desktop="200" data-mobile="60" data-smobile="50"></div>
  <div class="container">
    <div class="questions-style questions-contact questions-style2">
      <div class="content-form bg-color wow fadeInLeft animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <div class="title-section color-white">
          <div class="flat-title flat-title-contact"><?= $content['send_msg_contact']['title']; ?></div>
          <p class="color-white"><?= $content['send_msg_contact']['desc']; ?></p>
        </div>
        <div class="topbar-socials">
        <?php foreach($social as $s) { ?>
          <a href="<?= $s['link']; ?>">
            <i class="fab fa-<?= $s['name']; ?>"></i>
          </a> <?php } ?>
        </div>
      </div>
      <div class="form-questions boxshadow bg-white wow fadeInRight  animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <div id="respond" class="comment-respond">
          <form action="#" method="post" id="commentform" class="commentform">
            <div class="text-wrap clearfix">
              <fieldset class="name-wrap">
                <input type="text" id="author" class="tb-my-input" name="author" tabindex="1" placeholder="<?= $content['full_name']['title']; ?>" value="" size="32" aria-required="true" />
              </fieldset>
              <fieldset class="phone-wrap">
                <input type="number" id="phone" class="tb-my-input" name="phone" tabindex="2" placeholder="<?= $content['phone_number']['title']; ?>" value="" aria-required="true" />
              </fieldset>
              <fieldset class="mail-wrap">
                <input type="email" id="email" class="tb-my-input" name="phone" tabindex="2" placeholder="<?= $content['email_address']['title']; ?>" value="" size="32" aria-required="true" />
              </fieldset>
              <fieldset class="select-wrap">
                <select>
                  <option value=""><?= $content['choose_services']['title']; ?></option>
                    <?php foreach($all_services as $s) { ?>
                      <option value="<?= $s['id']; ?>"><?= $s['title']; ?></option>
                    <?php } ?>
                </select>
              </fieldset>
            </div>
            <fieldset class="message-wrap">
              <textarea id="comment-message" name="comment" rows="8" tabindex="4" placeholder="<?= $content['your_message']['title']; ?>" aria-required="true"></textarea>
            </fieldset>
            <p class="form-submit">
              <button type="submit" class="themesflat-button-style3 btn-style-5 no-boder">
                <span class="btn-title"><?= $content['send_msg']['title']; ?></span>
              </button>
            </p>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="100" data-mobile="60" data-smobile="50"></div>
</section>
<section class="tf-subscribe-contact">
  <div class="container">
    <div class="newslatter-style newslatter-style2">
      <div class="subscribe sub-style2">
        <div class="box1-subscribe no-padding-right">
          <div class="title-section">
            <div class="sub-title">newslatter</div>
            <div class="flat-title-style2 margin-top15"> sign up for newslatter &amp; get lattest news &amp; update </div>
          </div>
        </div>
        <div class="box2-subscribe no-padding-left padding-top29 ">
          <form action="#" class="form-email" id="formsubsribe">
            <input type="text" id="inpsub" class="email-here" placeholder="Email Address">
            <button type="submit" class="themesflat-button-style2 btn-style-6">
              <span class="btn-title">Subscribe</span>
            </button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="100" data-mobile="60" data-smobile="50"></div>
</section>