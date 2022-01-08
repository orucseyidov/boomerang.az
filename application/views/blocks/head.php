<!doctype html>
<html lang="en">
  <head>
    <base href="<?=base_url() ?>">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?=$title ?></title>
    <meta name="robots" content="index, follow">
    <meta name="title" content="<?=$title ?>" />
    <meta name="description" content="<?=$desc ?>" />
    <meta name="keywords" content="<?=$key ?>">
    <meta property="og:locale" content="AZ_az" />
    <meta property="og:image" content="<?=$ogimage ?>" />
    <meta property="og:type" content="Online Kurs" />
    <meta property="og:title" content="<?=$title ?>" />
    <meta property="og:site_name" content="<?=$settings['site_title'] ?>" />
    <meta property="og:description" content="<?=$desc ?>" />
    <meta property="og:url" content="<?=base_url($_SERVER['REQUEST_URI']) ?>" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:description" content="<?=$desc ?>" />
    <meta name="twitter:title" content="<?=$title ?>" />
    <meta name="token" content="<?=$token ?>">
    <meta name="device" content="<?=$device ?>">
    <link rel="canonical" href="<?=base_url($_SERVER['REQUEST_URI']) ?>" />
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css?v=<?=time() ?>" />
    <link rel="stylesheet" type="text/css" href="/assets/css/shortcodes.css" />
    <link rel="stylesheet" type="text/css" href="/assets/css/color.css" />
    <link rel="stylesheet" type="text/css" href="/assets/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="/assets/css/responsive.css" />
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <?php 
        if (!empty($headdata)) {echo $headdata;}
        if (!empty($loadstyle)) {$this->load->view($loadstyle);}
    ?>

    <?=$headdata ?>
  </head>

