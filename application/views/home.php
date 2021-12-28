   <!-- Slider -->
   <header class="header slider-fade">
      <div class="owl-carousel owl-theme">
         <!-- The opacity on the image is made with "data-overlay-dark="number". You can change it using the numbers 0-9. -->
         <?php 
            foreach ($slider as $key => $value):

         ?>
         <div class="text-right item bg-img" data-overlay-dark="3" data-background="<?=$value['image'] ?>">
            <div class="v-middle caption mt-30">
               <div class="container">
                  <div class="row">
                     <div class="col-md-7 offset-md-5">
                           <h1><?=$value['title'] ?></h1>
                           <p><?=$value['description'] ?></p>
                           <?php if (!empty($value['link'])): ?>
                              <div class="butn-light mt-30 mb-30">
                                 <a href="<?=$value['link'] ?>" target="_blank"><span>Read More</span></a>
                              </div>
                           <?php endif ?>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <?php endforeach ?>
      </div>
      <!-- Corner -->
      <div class="hero-corner"></div>
      <div class="hero-corner3"></div>
      <!-- Left Panel -->
      <div class="left-panel">
         <ul class="social-left clearfix">
            <?php 
               foreach ($social as $key => $value):
                  $icon = $value['icon'];
                  $link = $value['link'];
            ?>
               <li><a href="<?=$link ?>"><i class="<?=$icon ?>"></i></a></li>
            <?php endforeach ?>
         </ul>
      </div>
   </header>
   <!-- Content -->
<div class="content-wrapper">