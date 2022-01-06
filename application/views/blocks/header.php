<body class="counter-scroll header_sticky_style2">
  <div class="animsition boxed blog">
    <div class="top-bar-style2 clearfix">
      <div class="container-fluid">
        <ul class="top-content">
          <li class="adress">
            <a href="#">
              <!-- <i class="icon-iconmap"></i> -->
              <i class="fas fa-map-marker-alt"></i> 2072 Pinnickinick Street, WA 98370
            </a>
          </li>
          <li class="email">
            <!-- <i class="icon-iconmail"></i> -->
            <i class="fas fa-envelope"></i>
            <a href="#">
              <span>testemail</span>
            </a>
          </li>
        </ul>
        <div class="topbar-socials">
          <span class="icons"> <?php foreach($social as $s) { ?> <a href="
							<?= $s['link']; ?>">
              <i class="fab fa-
								<?= $s['name']; ?>">
              </i>
            </a> <?php } ?> </span>
        </div>
      </div>
    </div>
  </div>
  <header class="header-style2 bg-color-style2 bg-color" id="header">
    <div class="container-fluid container-fixel">
      <div class="flex-header d-lg-flex">
        <div class="logo logo-style2">
          <a href="
						<?= base_url(); ?>">
            <img src="/assets/images/LogoDark.png" data-retina="/assets/images/LogoDark@2x.png" alt="images">
          </a>
        </div>
        <div class="content-menu d-lg-flex">
          <div class="nav-wrap">
            <div class="btn-menu">
              <span></span>
            </div>
            <nav id="mainnav" class="mainnav fixed-mainnav">
              <ul class="menu menustyle2">
                <!-- <li class="current-menu"><a href="
									<?= base_url(); ?>">Home</a></li> --> <?php 
                    $c = 1;
                    foreach ($menu as $key => $value):
                      $active = $c == 1 ? 'current-menu' : null;
                      $c++;
                ?> <li class="
										<?=$active ?>">
                  <a href="
											<?= base_url($value['slug']); ?>"> <?=$value['name'] ?> </a>
                </li> <?php endforeach ?>
              </ul>
            </nav>
          </div>
          <div class="search-btn">
            <div class="btn-top">
              <a href="
									<?= base_url("contact"); ?>" class="themesflat-button-style2 btn-style-4">
                <span class="btn-title">Get A Quote</span>
              </a>
            </div>
            <div class="flat-show-search">
              <div class="show-search">
                <a href="#">
                  <i class="fa fa-search"></i>
                </a>
              </div>
              <div class="top-search">
                <form action="#" id="searchform-all" method="get">
                  <div>
                    <input type="text" id="s" class="sss" placeholder="Search...">
                    <input type="submit" value="" id="searchsubmit">
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>