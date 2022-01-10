<?php $this->load->view("blocks/breadcrumb") ?>
<section class="tf-contact-us">
  <div class="container">
    <div class="row">
      <div class="themesflat-spacer  clearfix" data-desktop="125" data-mobile="60" data-smobile="50"></div>
      <div class="title-section text-center wow fadeInDown">
        <div class="sub-title"><?= $langs['contact_us']; ?></div>
        <div class="flat-title flat-title-style5"><?= $langs['get_in_touch']; ?></div>
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
            <h6 class="tftitle-style3"><?= $langs['our_address']; ?></h6>
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
            <h6 class="tftitle-style3"><?= $langs['our_phone']; ?></h6>
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
            <h6 class="tftitle-style3"><?= $langs['our_email']; ?></h6>
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
                <input type="text" id="author" class="tb-my-input" name="author" tabindex="1" placeholder="<?= $langs['full_name']; ?>" value="" size="32" aria-required="true" />
              </fieldset>
              <fieldset class="phone-wrap">
                <input type="number" id="phone" class="tb-my-input" name="phone" tabindex="2" placeholder="<?= $langs['phone_number']; ?>" value="" aria-required="true" />
              </fieldset>
              <fieldset class="mail-wrap">
                <input type="email" id="email" class="tb-my-input" name="phone" tabindex="2" placeholder="<?= $content['email_address']['title']; ?>" value="" size="32" aria-required="true" />
              </fieldset>
              <fieldset class="select-wrap">
                <select>
                  <option value=""><?= $langs['choose_services']; ?></option>
                    <?php foreach($all_services as $s) { ?>
                      <option value="<?= $s['id']; ?>"><?= $s['title']; ?></option>
                    <?php } ?>
                </select>
              </fieldset>
            </div>
            <fieldset class="message-wrap">
              <textarea id="comment-message" name="comment" rows="8" tabindex="4" placeholder="<?= $langs['your_message']; ?>" aria-required="true"></textarea>
            </fieldset>
            <p class="form-submit">
              <button type="submit" class="themesflat-button-style3 btn-style-5 no-boder">
                <span class="btn-title"><?= $langs['send_msg']; ?></span>
              </button>
            </p>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="100" data-mobile="60" data-smobile="50"></div>
</section>