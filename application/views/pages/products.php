<?php $this->load->view("blocks/breadcrumb") ?>
<style type="text/css">
    .widget-products{
        position: relative;
        padding: 16px 25px;
        border-bottom: 1px solid #eef2ed;
        position: relative;
        box-shadow: 0px 0px 15px rgb(0 0 0 / 10%);
    }
    .widget-products h4{
        
    }
    .category-wrap{

    }
    .category-wrap li{
        position: relative;
        /* display: none; */
        padding-bottom: 5px;
        margin-bottom: 2px;
        border-bottom: 1px solid #eef2ed;
    }
    .category-wrap li a{
        position: relative;
        font-size: 18px;
        font-weight: 400;
        color: #848484;
        padding-left: 22px;
        transition: all 0.3s ease;
        -moz-transition: all 0.3s ease;
        -webkit-transition: all 0.3s ease;
        -ms-transition: all 0.3s ease;
        -o-transition: all 0.3s ease;
    }
    .category-wrap li a:before{
        position: absolute;
        content: '';
        left: 0px;
        top: 5px;
        width: 7px;
        height: 7px;
        border-radius: 50px;
        transition: all 0.3s ease;
        -moz-transition: all 0.3s ease;
        -webkit-transition: all 0.3s ease;
        -ms-transition: all 0.3s ease;
        -o-transition: all 0.3s ease;
        background-color: #d9dfd7;
    }
    .altcat a:before{
      display: none;
      /*content: "\2192";*/
    }
    .product-desc{
        position: relative;
        padding-bottom: 0px;
        margin-bottom: 40px;
        border-bottom: 1px solid #f2f2f2;
    }
    .gallery-block-three{
        position:relative;
        margin-bottom: 30px;
    }

    .gallery-block-three .inner-box{
        position:relative;
        width:100%;
        overflow:hidden;
    }

    .gallery-block-three .image-box{
        position:relative;
        display:block;
        margin-bottom: 0px;
    }

    .gallery-block-three .image-box img{
        position:relative;
        display:block;
        width:100%;
    }

    .gallery-block-three .overlay-box{
        position:absolute;
        left:0px;
        top:0px;
        width:100%;
        height:100%;
        opacity:0;
        color:#ffffff;
        text-align:center;
        -webkit-transition:all 700ms ease;
        -ms-transition:all 700ms ease;
        -o-transition:all 700ms ease;
        transition:all 700ms ease;
    }

    .gallery-block-three .overlay-box:before{
        position: absolute;
        content: '';
        left: 0px;
        top: 0px;
        width: 100%;
        height: 100%;
        display: block;
        opacity: 0;
        visibility: hidden;
        transition: all 900ms ease;
        -moz-transition: all 900ms ease;
        -webkit-transition: all 900ms ease;
        -ms-transition: all 900ms ease;
        -o-transition: all 900ms ease;
        background:rgba(0,0,0,0.30);
        
        -moz-transform: rotateX(-180deg);
        -webkit-transform: rotateX(-180deg);
        -ms-transform: rotateX(-180deg);
        -o-transform: rotateX(-180deg);
        transform: rotateX(-180deg);
    }

    .gallery-block-three .inner-box:hover .overlay-box:before{
        -moz-transform: rotateX(0deg);
        -webkit-transform: rotateX(0deg);
        -ms-transform: rotateX(0deg);
        -o-transform: rotateX(0deg);
        transform: rotateX(0deg);
        opacity: 1;
        visibility: visible;
    }

    .gallery-block-three .inner-box:hover .overlay-box{
        opacity:1;
    }

    .gallery-block-three .inner-box .overlay-inner{
        position:absolute;
        left:0px;
        top:0px;
        width:100%;
        height:100%;
        display:table;
        vertical-align:middle;
        padding:10px 0px;
    }

    .gallery-block-three .inner-box .overlay-inner .content{
        position:relative;
        display:table-cell;
        vertical-align:middle;
    }

    .gallery-block-three .inner-box .overlay-inner .link{
        position:relative;
        font-size:20px;
        color:#ffffff;
        width:50px;
        height:50px;
        line-height:52px;
        margin:0px 5px;
        display:inline-block;
        background-color:#0c7ac7;
        transition:all 300ms ease;
        -webkit-transition:all 300ms ease;
        -ms-transition:all 300ms ease;
        -o-transition:all 300ms ease;
    }

    .gallery-block-three .inner-box .overlay-inner .link .icon{
        position:relative;
    }

    .gallery-block-three .overlay-inner .link:hover{
        color:#666666;
        background-color:rgba(255,255,255,1);
    }
    .pagination-outer {
        position: relative;
        text-align: center;
    }
    .our-shop .styled-pagination {
        margin-top: 10px;
    }
    .styled-pagination {
        position: relative;
        display: inline-block;
        padding: 12px 30px;
        border-radius: 50px;
        border: 1px solid #eef2ed;
        background-color: #ffffff;
    }
    .styled-pagination li {
        position: relative;
        display: inline-block;
        margin: 0px 4px 0px 4px;
    }
    .styled-pagination li a {
        position: relative;
        display: inline-block;
        line-height: 32px;
        height: 32px;
        font-size: 18px;
        min-width: 32px;
        color: #262626;
        font-weight: 500;
        text-align: center;
        border-radius: 50px;
        text-transform: capitalize;
        transition: all 500ms ease;
        -webkit-transition: all 500ms ease;
        -ms-transition: all 500ms ease;
        -o-transition: all 500ms ease;
        -moz-transition: all 500ms ease;
    }
    .styled-pagination li a:hover, .styled-pagination li a.active {
        color: #ffffff;
        background-color: #0c7ac7;
    }
</style>
<section class="about-us about-us-style" id="about-us">
    <div class="container">
        <div class="row">
            <div class="themesflat-spacer clearfix" data-desktop="85" data-mobile="60" data-smobile="50"></div>
                <div class="sidebar-side col-lg-4 col-md-4 col-sm-12 clearfix">
                    <div class="widget-products">
                        <h4>Kateqoriyalar</h4>
                        <ul class="category-wrap">
                            <?php 
                                foreach ($categories as $key => $value){
                                    if ($value['parent'] == 0) {
                            ?>
                                <li>
                                    <a href="/mehsullar/<?=$value['slug'] ?>">
                                        <?=$value['title'] ?>
                                    </a>
                                </li>
                                <?php 
                                        foreach ($categories as $key2 => $value2){
                                            if ($value['id'] == $value2['parent']) {
                                ?>
                                            <li class="altcat">
                                                <a href="/mehsullar/<?=$value2['slug'] ?>">
                                                   <?=$value2['title'] ?>
                                                </a>
                                            </li>
                            <?php 
                                            }//ikinci if
                                        }//ikinci dongu
                                    }//birinci if
                                }// Birinci dongu
                            ?>
                        </ul>
                    </div>
                </div>
                <div class="content-side col-lg-8 col-md-8 col-sm-12 clearfix">
                    <div class="product-desc">
                        <?php 
                            if (isset($category['id'])){
                                echo $category['description'];
                            }
                        ?>
                    </div>
                    <div class="product-images">
                        <div class="row">
                            <?php foreach ($iamges as $key => $value): ?>
                            <div class="gallery-block-three col-lg-4 col-md-4 col-sm-12">
                                <div class="inner-box">
                                    <figure class="image-box">
                                        <img class="lazy lazy-loaded" src="/assets/img/lazy.gif" data-src="<?=$value['image'] ?>" alt="<?=$title ?>">
                                        <!--Overlay Box-->
                                        <div class="overlay-box">
                                            <div class="overlay-inner">
                                                <div class="content">
                                                    <a href="<?=$value['image'] ?>" data-fancybox="gallery-images-2" data-caption="" class="link">
                                                        <i class="icon fas fa-search-plus"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
                            </div>
                            <?php endforeach ?>
                        </div>
                    </div>
                    <div class="pagination-outer">
                        <ul class="styled-pagination">
                            <?php if ($page > 1): ?>
                                <li class="prev">
                                  <a href="<?=$slug."?page=".($page-1);?>">
                                    <span class="fa fa-angle-left"></span>
                                  </a>
                                </li>
                            <?php
                            endif; 
                                for ($i = $page - $show_number; $i < $page + $show_number + 1; $i++) {
                                    if ($i > 0 && $i <= $number_of_pages) {
                                       if ($page == $i) {
                                           echo '<li>
                                                    <a class="active" href="javascript:void(0);">'.$i.'</a>
                                                </li>';
                                       }
                                       else{
                                        echo '<li><a class="" href="'.$slug.'?page='.$i.'">'.$i.'</a></li>';
                                       }
                                    }
                                }
                            if ( $page != $number_of_pages ): ?>
                                <li class="next">
                                  <a href="<?=$slug."?page=".($page+1);?>">
                                    <span class="fa fa-angle-right"></span>
                                  </a>
                                </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="themesflat-spacer clearfix" data-desktop="128" data-mobile="50" data-smobile="40"></div>
</section>