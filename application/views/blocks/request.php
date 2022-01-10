<section class="questions">
  <div class="container">
    <div class="questions-style questions-style2">
      <div class="themesflat-spacer clearfix" data-desktop="106" data-mobile="60" data-smobile="50"></div>
      <div class="title-section text-center wow fadeInDown">
        <div class="themesflat-spacer clearfix" data-desktop="16" data-mobile="16" data-smobile="16"></div>
        <div class="flat-title"> <?= $content['contact_home']['title']; ?> </div>
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
                  <span><?= $content['mail_word']['title']; ?></span>
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
                  <span><?= $content['contact_word']['desc']; ?></span>
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
                <input type="text" id="author" class="tb-my-input" name="author" tabindex="1" placeholder="<?= $content['full_name']['title']; ?>" value="" size="32" aria-required="true" required />
              </fieldset>
              <fieldset class="phone-wrap">
                <input type="number" id="phone" class="tb-my-input" name="phone" tabindex="2" placeholder="<?= $content['phone_number']['title']; ?>" value="" aria-required="true" required />
              </fieldset>
              <fieldset class="mail-wrap">
                <input type="email" id="email" class="tb-my-input" name="phone" tabindex="2" placeholder="<?= $content['email_address']['title']; ?>" value="" size="32" aria-required="true" required />
              </fieldset>
              <fieldset class="select-wrap">
                <div class="select">
                  <select>
                    <option value="services"><?= $content['choose_services']['title']; ?></option>
                    <option value="services1">Choose services 01</option>
                    <option value="services2">Choose services 02</option>
                  </select>
                </div>
              </fieldset>
            </div>
            <fieldset class="message-wrap">
              <textarea id="comment-message" name="comment" rows="8" tabindex="4" placeholder="<?= $content['your_message']['title']; ?>" aria-required="true" required></textarea>
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
</section>