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

    <link href="<?php echo base_url(); ?>footprints/css/lightredtheme.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>footprints/css/lightresponsive.css" rel="stylesheet" type="text/css" />

    <script src="<?php echo base_url(); ?>footprints/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>footprints/js/tabs.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>footprints/js/jcarousellite_1.0.1.js"></script>

    <link href="<?php echo base_url(); ?>footprints/css/meanmenu.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>footprints/css/jquery.datetimepicker.css" rel="stylesheet">
    <script src="<?php echo base_url(); ?>footprints/js/jquery.meanmenu.js"></script>
    <script src="<?php echo base_url(); ?>footprints/js/jquery.bxslider.min.js"></script>
    <link href="<?php echo base_url(); ?>footprints/css/jquery.bxslider.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" media="all"
          href="<?php echo base_url(); ?>footprints/css/magnific-popup.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    
        
        <script>
            //jQuery.noConflict();
             jQuery(document).ready(function($){
                 $.noConflict();
                $('.baseMenu nav').meanmenu();
                
                $('.bxslider').bxSlider({
                    auto: true,
                    autoControls: false,
                    adaptiveHeight: false,
                    //mode: 'fade',
                    captions: true,
                    pager: false
                });
             });

        </script>

   

</head>
    <body>
        <div id="bg">
            <!-- Wapper Sec -->
            <div id="wrapper_sec">
                <!-- masterhead -->
                <div id="masterhead">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="<?php __e(base_url()); ?>">
                             <img src="<?php __e(base_url() . 'uploads/settings/' . $settings->InstituteLogo); ?>" alt="">
                        </a>
                    </div>
                    <!-- masterhead Right Section -->
                    <div class="topright_sec">
                        <!-- top navigation -->
                        <div class="topnavigation">
                            <ul>
                                <li><a href="<?php echo base_url(); ?>admission">অনলাইন ভর্তির আবেদন</a></li>
                                <li><a href="<?php echo base_url(); ?>page/notice-board?page_id=3">ভর্তির ফর্ম ডাউনলোড</a></li>
                                <li><a href="<?php echo base_url(); ?>page/governingbody?page_id=9">পরিচালনা পর্ষদ</a></li>
                                <li><a href="<?php echo base_url(); ?>page/exam-statistics?page_id=18">বিভিন্ন পরীক্ষার পরিসংখ্যান</a></li>
                                <li><a href="<?php echo base_url(); ?>">স্টুডেন্ট প্রোফাইল </a></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <!-- top search -->
                        <div class="top_search">
                            
                        </div>
                        <div class="clear"> </div>       	
                    </div>
                    <div class="clear"></div>
                    <!-- Navigation -->
                    <div class="navigation">
                        <div class="baseMenu">
                            <nav>
                                <ul>
                                    <?php echo $mainmenu; ?>
                                </ul>	
                            </nav>
                        </div>
                        <!-- navigation ends -->       		                            
                        <div class="clear"></div>	
                    </div>    
                </div>
                <!-- Content Seciton -->
                <div id="content_section">
                    <!-- News Updates -->
                    <div class="news_updates">
                        <span class="news_update"> নিউজ  আপডেট</span>
                        <!--<span class="news_date"><em>২৮-১১-২০১০ ১০:৩০ পি এম </em></span>-->
                        <span class="news_des">
                          <?php $this->load->view('scroller'); ?>    
                        </span>
                        <a class="next" href="#"><img src="<?php echo base_url(); ?>footprints/images/newsarrow.jpg"  alt="" /></a>
                    </div>
                    <div class="clear"></div>