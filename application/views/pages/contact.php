<!-- Header Banner -->
        <section class="banner-header banner-img valign bg-img bg-fixed" data-overlay-darkgray="5" data-background="<?=$ogimage ?>">
            <!-- Left Panel -->
            <div class="left-panel"></div>
        </section>
        <!-- Contact -->
        <section class="section-padding2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 animate-box" data-animate-effect="fadeInUp">
                        <h2 class="section-title">Contact <span>Us</span></h2>
                    </div>
                </div>
                <div class="row mb-90">
                    <div class="col-md-4 mb-30 animate-box" data-animate-effect="fadeInUp">
                        <p><b>Bauen Consulting Firm</b></p>
                        <p>Our firm nisl sodales sit amet sapien idea placerat sodales orcite. Vivamus ne miss rhoncus felis bauen architecture.</p>
                        <p><b>VOEN :</b> 000000000</p>
                    </div>
                    <div class="col-md-4 mb-30 animate-box" data-animate-effect="fadeInUp">
                        <p><b>Contact Details</b></p>
                        <p><b>Phone :</b> <?=$contacts['phone'] ?></p>
                        <p><b>Email :</b> <?=$contacts['mail'] ?></p>
                        <p><b>Address :</b> <?=$contacts['adress'] ?></p>
                    </div>
                    <div class="col-md-4 animate-box" data-animate-effect="fadeInUp">
                        <p><b>Contact Form</b></p>
                        <form method="post" class="row">
                            <div class="col-md-12">
                                <input type="text" name="name" id="name" placeholder="Full Name">
                            </div>
                            <div class="col-md-12">
                                <input type="email" name="email" id="email" placeholder="Your Email" required="">
                            </div>
                            <div class="col-md-12">
                                <textarea name="message" id="message" cols="40" rows="4" placeholder="Your Message"></textarea>
                            </div>
                            <div class="col-md-12">
                                <button class="butn-dark mt-15"><a href="#0"><span>Send</span></a></button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- Map Section -->
				<div class="row">
					<div class="col-md-12 mb-30 animate-box" data-animate-effect="fadeInUp">
						<?=$contacts['map'] ?>
					</div>
				</div>
            </div>
        </section>