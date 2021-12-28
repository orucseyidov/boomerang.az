<!-- Footer -->
      <footer class="main-footer dark">
         <div class="container">
            <div class="row">
               <div class="col-md-4 mb-30">
                  <div class="item fotcont">
                     <div class="fothead">
                        <h6>Phone</h6>
                     </div>
                     <p><?=$contacts['phone'] ?></p>
                  </div>
               </div>
               <div class="col-md-4 mb-30">
                  <div class="item fotcont">
                     <div class="fothead">
                        <h6>Email</h6>
                     </div>
                     <p><?=$contacts['mail'] ?></p>
                  </div>
               </div>
               <div class="col-md-4 mb-30">
                  <div class="item fotcont">
                     <div class="fothead">
                        <h6>Our Address</h6>
                     </div>
                     <p><?=$contacts['adress'] ?></p>
                  </div>
               </div>
            </div>
         </div>
         <div class="sub-footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-4">
                     <div class="text-left">
                        <p>© <?=date("Y") ?> Bauen. All right reserved.</p>
                     </div>
                  </div>
                  <div class="col-md-4 abot">
                     <div class="social-icon"> 
                        <?php 
                           foreach ($social as $key => $value):
                              $icon = $value['icon'];
                              $link = $value['link'];
                        ?>
                           <a href="<?=$link ?>"><i class="<?=$icon ?>"></i></a>
                        <?php endforeach ?>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <p class="right"><a href="/about">About Company</a></p>
                  </div>
               </div>
            </div>
         </div>
      </footer>
   </div>
   <!-- jQuery -->
   <script src="/assets/js/jquery-3.5.1.min.js"></script>
   <script src="/assets/js/jquery-migrate-3.0.0.min.js"></script>
   <script src="/assets/js/modernizr-2.6.2.min.js"></script>
   <script src="/assets/js/imagesloaded.pkgd.min.js"></script>
   <script src="/assets/js/jquery.isotope.v3.0.2.js"></script>
   <script src="/assets/js/pace.js"></script>
   <script src="/assets/js/popper.min.js"></script>
   <script src="/assets/js/bootstrap.min.js"></script>
   <script src="/assets/js/scrollIt.min.js"></script>
   <script src="/assets/js/jquery.waypoints.min.js"></script>
   <script src="/assets/js/owl.carousel.min.js"></script>
   <script src="/assets/js/jquery.stellar.min.js"></script>
   <script src="/assets/js/jquery.magnific-popup.js"></script>
   <script src="/assets/js/YouTubePopUp.js"></script>
   <script src="/assets/js/custom.js"></script>
   <?php $this->load->view("blocks/flashdata"); ?>
   <?php 
       if (!empty($footerdata)) {echo $footerdata;}
       if (!empty($loadscript)) {$this->load->view($loadscript);}
   ?>
   <?php $this->load->view("blocks/scripts"); ?>
</body>
</html>