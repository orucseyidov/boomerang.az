<section class="banner-header banner-img valign bg-img bg-fixed" data-overlay-darkgray="5" data-background="<?=$ogimage ?>">
            <!-- Left Panel -->
            <div class="left-panel"></div>
        </section>
        <!-- Services Page -->
        <section class="section-padding2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="section-title2"><?=$service['title'] ?></h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <?=$service['description'] ?>
                    </div>
                    <div class="col-md-4 sidebar-side">
                        <aside class="sidebar blog-sidebar">
                            <div class="sidebar-widget services">
                                <div class="widget-inner">
                                    <div class="sidebar-title">
                                        <h4>All Services</h4>
                                    </div>
                                    <ul>
                                        <?php 
                                            foreach ($service_category as $key => $value):
                                                $active = $value['id'] == $service['category'] ? 'active' : null;
                                        ?>
                                            <li class="<?=$active ?>">
                                                <a href="/services/<?=$value['slug'] ?>">
                                                    <?=$value['title'] ?>
                                                </a>
                                            </li>
                                        <?php endforeach ?>
                                    </ul>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </section>