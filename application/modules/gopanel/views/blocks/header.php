<body>
    <!-- Begin page -->
    <div id="wrapper">
        <!-- Top Bar Start -->
        <div class="topbar">
            <!-- LOGO -->
            <div class="topbar-left"><a href="/gopanel/" class="logo"><span><img style="margin-top: -65px;" src="/assets/gopanel/img/logo.png" alt="" height=""> </span><i><img src="/assets/gopanel/img/logo-sm.png" alt="" style="max-width: 100%;"></i></a></div>
            <nav class="navbar-custom">
                <ul class="navbar-right list-inline float-right mb-0">
                    <!-- full screen -->
                    <li class="dropdown notification-list list-inline-item d-none d-md-inline-block"><a class="nav-link waves-effect" href="#" id="btn-fullscreen"><i class="mdi mdi-fullscreen noti-icon"></i></a></li>
                    <!-- notification -->
                    <li class="dropdown notification-list list-inline-item">
                        <div class="dropdown notification-list nav-pro-img">
                            <a class="dropdown-toggle nav-link arrow-none waves-effect nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="<?=empty($user['image']) ? '/assets/gopanel/images/users/no-photo.jpg'  : $user['image']?>" alt="<?=$user['fullname'] ?>" class="rounded-circle">
                                <span><?=$user['fullname'] ?></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown">
                                <!-- item-->
                                <!-- <a class="dropdown-item" href="javascript:void(0)">
                                   Author
                                </a>  -->
                                <a class="dropdown-item" href="/gopanel/users/profile/?id=<?=$user['id'] ?>">
                                    <i class="mdi mdi-account-circle m-r-5"></i> Profilim
                                </a> 
                                <a target="_blank" class="dropdown-item" href="/">
                                    <i class="mdi mdi-desktop-mac-dashboard m-r-5"></i> Sayta Bax
                                </a> 
                                <!-- <a class="dropdown-item" href="#">
                                    <i class="mdi mdi-lock-open-outline m-r-5"></i> Lock screen
                                </a> -->
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-danger" href="/gopanel/auth/logout">
                                    <i class="mdi mdi-power text-danger"></i> Çıxış
                                </a>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class="list-inline menu-left mb-0">
                    <li class="float-left">
                        <button class="button-menu-mobile open-left waves-effect"><i class="mdi mdi-menu"></i></button>
                    </li>
                    <!-- <li class="d-none d-sm-block">
                        <div class="dropdown pt-3 d-inline-block"><a class="btn btn-light dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Create</a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink"><a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a> <a class="dropdown-item" href="#">Something else here</a>
                                <div class="dropdown-divider"></div><a class="dropdown-item" href="#">Separated link</a></div>
                        </div>
                    </li> -->
                </ul>
            </nav>
        </div>
        <!-- Top Bar End -->
        <!-- ========== Left Sidebar Start ========== -->
        <?php $this->load->view("gopanel/blocks/sidebar"); ?>
        <!-- Left Sidebar End -->
        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="content-page">
            <!-- Start content -->