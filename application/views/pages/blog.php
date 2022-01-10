<?php $this->load->view("blocks/breadcrumb") ?>
<div class="blog-content no-column clearfix">
  <div class="themesflat-spacer  clearfix" data-desktop="100" data-mobile="60" data-smobile="50"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-8 content-style1">
        <div class="site-content">
          <?php 
              foreach ($blog as $key => $value):
                $link = '/blog/'.$value['slug'];
          ?>
            <article class="main-post">
              <div class="featured-post">
                <div class="entry-image wow fadeUp animated" data-wow-delay="0ms" data-wow-duration="1500ms">
                  <img src="<?=$value['image'] ?>" alt="<?=$value['title'] ?>" />
                </div>
              </div>
              <div class="conten-section">
                <div class="content-blog">
                  <ul class="post-meta">
                    <li class="author">
                      <a href="<?=$link ?>">
                        <i class="far fa-calendar"></i><?=$value['date'] ?></a>
                    </li>
                    <li class="date">
                      <span>
                        <a href="<?=$link ?>">
                          <i class="far fa-eye"></i> <?=$value['view'] ?></a>
                      </span>
                    </li>
                  </ul>
                  <div class="title">
                    <a href="<?=$link ?>">
                      <?=$value['title'] ?>
                    </a>
                  </div>
                  <div class="flat-read-more">
                    <span>
                      <i class="fas fa-arrow-alt-circle-right"></i>
                      <a href="<?=$link ?>"><?= $langs['read_more']; ?></a>
                    </span>
                  </div>
                </div>
              </div>
            </article>
          <?php endforeach ?>
        </div>
        <div class="themesflat-pagination clearfix">
          <ul>
            <?php if ($page > 1): ?>
                <li>
                  <a href="/blog/page/<?=$page-1;?>" class="page-numbers prev">
                    <span class="fa fa-angle-left"></span>
                  </a>
                </li>
            <?php
            endif; 
                for ($i = $page - $show_number; $i < $page + $show_number + 1; $i++) {
                    if ($i > 0 && $i <= $number_of_pages) {
                       if ($page == $i) {
                           echo '<li>
                                    <a class="page-numbers current" href="javascript:void(0);">'.$i.'</a>
                                </li>';
                       }
                       else{
                        echo '<li><a class="page-numbers" href="/blog/page/'.$i.'">'.$i.'</a></li>';
                       }
                    }
                }
            if ( $page != $number_of_pages ): ?>
                <li>
                  <a href="/blog/page/<?=$page+1;?>" class="page-numbers next">
                    <span class="fa fa-angle-right"></span>
                  </a>
                </li>
            <?php endif; ?>
          </ul>
        </div>
      </div>
      <?php $this->load->view("blocks/sidebar") ?>
    </div>
  </div>
  <div class="themesflat-spacer  clearfix" data-desktop="120" data-mobile="60" data-smobile="50"></div>
</div>