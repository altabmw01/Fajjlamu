<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta name="robots" content="noodp"/>
    <link rel="canonical" href="<?php __e(base_url()); ?>"/>
    <meta property="og:locale" content="en_BD"/>
    <meta property="og:type" content="website"/>
    <meta property="og:title"
          content="<?php __e((isset($settings->InstituteName) ? $settings->InstituteName : 'Powered by Smart Campus')); ?>"/>
    <meta property="og:description"
          content="<?php __e((isset($settings->InstituteSlogan) ? $settings->InstituteSlogan : 'Powered by Smart Campus')); ?>"/>
    <meta property="og:url" content="<?php __e(base_url()); ?>"/>
    <meta property="og:site_name"
          content="<?php __e((isset($settings->InstituteName) ? $settings->InstituteName : 'Powered by Smart Campus')); ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
          content="<?php __e((isset($settings->InstituteName) ? $settings->InstituteName : 'Powered by Smart Campus')); ?>"/>
    <title><?php __e((isset($settings->InstituteName) ? $settings->InstituteName : 'Powered by Smart Campus')); ?></title>
    <link rel="icon" type="image/png" href="images/favicon.png"/>
    <script type="text/javascript">var baseurl = "<?php echo base_url();  ?>"</script>
    <script src="<?php echo base_url(); ?>footprints/js/jquery-2.1.4.min.js"></script>
    <link href="<?php echo base_url(); ?>footprints/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>footprints/css/bluetheme.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>footprints/css/meanmenu.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>footprints/css/responsive.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>footprints/css/jquery.datetimepicker.css" rel="stylesheet">
    <script src="<?php echo base_url(); ?>footprints/js/jquery.meanmenu.js"></script>
    <script src="<?php echo base_url(); ?>footprints/js/jquery.bxslider.min.js"></script>
    <link href="<?php echo base_url(); ?>footprints/css/jquery.bxslider.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" media="all"
          href="<?php echo base_url(); ?>footprints/css/magnific-popup.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="js/loadImg.js" type="text/javascript" language="javascript"></script>
    <script>
        jQuery(document).ready(function ($) {
            $.noConflict();
            $('.baseMenu nav').meanmenu();
            $('a.meanmenu-reveal').click(function () {
                $(".mean-nav ul.mainMenu").removeClass('sf-menu mainMenu').addClass('');
            });
        });
    </script>
</head>
<body>
<div class="se-pre-con"></div>
<script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id))
            return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<div class="header">
    <div class="container ">
        <div class="banner">
            <a href="<?php __e(base_url()); ?>">
                <img src="<?php __e(base_url() . 'uploads/settings/' . $settings->InstituteLogo); ?>" alt="">
                    <span>
                        <em><?php __e((isset($settings->InstituteName) ? $settings->InstituteName : 'Powered by Smart Campus')); ?></em><br/>
                        <i><?php __e((isset($settings->InstituteSlogan) ? $settings->InstituteSlogan : '')); ?></i>
                    </span>
            </a>
        </div>
        <div class="funderhistory">
            <a href="">
                <img src="http://www.pakutiacollege.edu.bd/feassets/images/funderhistory.png" alt="Funder History">
            </a>
        </div>
    </div>
    <div class="container">
        <div class="baseMenu">
            <ul>
                <?php echo $mainmenu; ?>
            </ul>
        </div>
    </div>
</div>
<div class="midblock">
    <div class="container">
        <!-- Notice Board Scroller -->
        <?php $this->load->view('scroller'); ?>
    </div>
    <div class="container">
        <div class="row margin15">
            <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">