<section class="questions">
  <div class="container">
    <div class="questions-style questions-style2">
      <div class="themesflat-spacer clearfix" data-desktop="106" data-mobile="60" data-smobile="50"></div>
      <div class="title-section text-center wow fadeInDown">
        <div class="themesflat-spacer clearfix" data-desktop="16" data-mobile="16" data-smobile="16"></div>
        <div class="flat-title"> <?= $langs['contact_home']; ?> </div>
      </div>
      <div class="themesflat-spacer clearfix" data-desktop="64" data-mobile="40" data-smobile="30"></div>
      <div class="image-form wow fadeInLeft animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <div class="image-hoverstyle2">
          <div class="image">
            <img src="/assets/images/Secsion/imgquestion.jpg" alt="images" />
          </div>
          <div class="contact">
            <div class="time">
              <span class="iconclock bg-color-style5">
                <i class="fas fa-envelope"></i>
              </span>
              <div class="content">
                <div class="text">
                  <span><?= $langs['our_email']; ?></span>
                </div>
                <div class="text-time">
                  <span><a href="mailto:<?= $contacts['mail']; ?>"><?= $contacts['mail']; ?></a></span>
                </div>
              </div>
            </div>
            <div class="phone margin-top14">
              <span class="iconclock bg-color-style5">
                <i class="fas fa-phone-alt"></i>
              </span>
              <div class="content padding-top7">
                <div class="text">
                  <span><?= $langs['call_us']; ?></span>
                </div>
                <div class="text-time">
                  <span><?= $contacts['mobile']; ?></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="form-questions boxshadow bg-white wow fadeInRight animated" data-wow-delay="0ms" data-wow-duration="1500ms">
        <div id="respond" class="comment-respond">
          <form action="#" method="post" id="commentform" class="commentform">
            <div class="text-wrap clearfix">
              <fieldset class="name-wrap">
                <input type="text" id="author" class="tb-my-input" name="author" tabindex="1" placeholder="<?= $langs['full_name']; ?>" value="" size="32" aria-required="true" required />
              </fieldset>
              <fieldset class="phone-wrap">
                <input type="number" id="phone" class="tb-my-input" name="phone" tabindex="2" placeholder="<?= $langs['phone_number']; ?>" value="" aria-required="true" required />
              </fieldset>
              <fieldset class="mail-wrap">
                <input type="email" id="email" class="tb-my-input" name="phone" tabindex="2" placeholder="<?= $langs['our_email']; ?>" value="" size="32" aria-required="true" required />
              </fieldset>
              <fieldset class="select-wrap">
                <div class="select">
                  <select>
                    <option value=""><?= $langs['choose_services']; ?></option>
                    <?php foreach($all_services as $s) { ?>
                      <option value="<?= $s['id']; ?>"><?= $s['title']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </fieldset>
            </div>
            <fieldset class="message-wrap">
              <textarea id="comment-message" name="comment" rows="8" tabindex="4" placeholder="<?= $langs['your_message']; ?>" aria-required="true" required></textarea>
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
</section>