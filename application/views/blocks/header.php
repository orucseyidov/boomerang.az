<body>
   <!-- Preloader -->
   <div id="preloader"></div>
   <!-- Progress scroll totop -->
   <div class="progress-wrap cursor-pointer">
      <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
         <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
      </svg>
   </div>
   <!-- Navbar -->
   <nav class="navbar navbar-expand-lg">
      <!-- Logo -->
      <div class="logo-wrapper valign">
         <div class="logo">
            <a href="/">
               <img src="<?=$logo ?>" class="logo-img" alt="">
               <!-- <h2>CORTEX<span>INNOVATE CONSULTING</span></h2> -->
            </a>
         </div>
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="icon-bar"><i class="ti-line-double"></i></span> </button>
      <!-- Navbar links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
         <ul class="navbar-nav ml-auto">
            <?php 
               $countmenu = 0;
               $submenu = '';
               foreach ($menu as $key => $value):
                  $slug = $value['slug'] == '/' ? '/'.$value['slug'] : $value['slug'];
                  $countmenu++;
                  if ($this->uri->segment(1) != false) {
                     $active = $this->uri->segment(1) == $value['slug'] ? 'active' : null;
                  }
                  else{
                     $active = $countmenu == 1 ? 'active' : null;
                  }
                  if ($value['slug'] == 'services') {
                     echo get_category_menu($service_category,$value['name'],$value['slug']);
                  }
                  else if ($value['slug'] == 'subjects') {
                     echo get_category_menu($subjects_category,$value['name'],$value['slug']);
                  }
                  else{

            ?>
               <li class="nav-item">
                  <a class="nav-link <?=$active ?>" href="<?=$slug ?>">
                     <?=$value['name'] ?>
                  </a>
               </li>
            <?php 
                  }
               endforeach
            ?>
         </ul>
      </div>
   </nav>