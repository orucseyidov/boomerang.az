<body class="counter-scroll header_sticky_style2">
  <div class="animsition boxed blog">
    <div class="top-bar-style2 clearfix">
      <div class="container-fluid">
        <ul class="top-content">
          <li class="adress">
            <a href=""> <!-- http://maps.google.com/?q=<?php //echo $contacts['adress']; ?> -->
              <!-- <i class="icon-iconmap"></i> -->
              <i class="fas fa-map-marker-alt"></i><?= $contacts['adress']; ?>
            </a>
          </li>
          <li class="email">
            <!-- <i class="icon-iconmail"></i> -->
            <i class="fas fa-envelope"></i>
            <a href="mailto:<?= $contacts['mail']; ?>">
              <span><?= $contacts['mail']; ?></span>
            </a>
          </li>
        </ul>
        <div class="topbar-socials">
          <span class="icons">
            <?php foreach ($social as $key => $value): ?>
              <a href="<?=$value['link'] ?>"><i class="<?=$value['icon'] ?>"></i></a>
            <?php endforeach ?>
          </span>
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
											<?=base_url($value['slug']); ?>"> <?=$value['name'] ?> </a>
                </li> <?php endforeach ?>
              </ul>
            </nav>
          </div>
          <div class="search-btn">
            <div class="btn-top">
              <a href="
									<?=base_url("elaqe"); ?>" class="themesflat-button-style2 btn-style-4">
                <span class="btn-title"><?= $langs['order']; ?></span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>