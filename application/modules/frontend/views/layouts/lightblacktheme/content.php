<?php
if (trim($uri1) == 'page') { ?>
        <div class="col1">
                <!-- Content Heading -->
                <div class="content_heading">
                    <h1 class="blue"><?php __e((isset($single_page->PageTitle)) ? $single_page->PageTitle : ''); ?></h1>
                </div>
               <?php __e((isset($single_page->Description)) ? $single_page->Description : ''); ?>
               
                <div class="clear"></div>
                <!-- Content Block -->

          ,      <!-- col1 ends -->	
            </div>
            <!-- Col2 -->
            <div class="col2">
                <div class="ads adsChange">
                    <p>
                    <?php
                        if (isset($settings->AdminPhoto)) {
                            $url = base_url() . "uploads/settings/" . $settings->AdminPhoto;
                        } else {
                            $url = base_url() . "uploads/settings/FacebookCover.jpg";
                        }
                        $id = '';
                        $class = '';
                        $alt = 'avatar';
                        $w = '190px';
                        $h = '';
                        __img($url, $id, $class, $alt, $w, $h);
                    ?>
                    </p>
                    <p><?php __e($settings->AdminMessage); ?></p>
                </div>
                <!-- Top Student -->  
                <div class="rtab">
                    <div class="rtab_content" id="rtab1">
                        <?php
                            __e('<h2>' . $widget1->BlockTitle . '</h2>');
                            __e($widget1->BlockContent);
                        ?>
                        <div class="clear"></div>
                    </div>

                </div>

                <div class="rtab">
                    <div class="rtab_content" id="rtab4">
                        <?php
                            __e('<h2>' . $widget2->BlockTitle . '</h2>');
                            __e($widget2->BlockContent);
                        ?>
                        <div class="clear"></div>
                    </div>

                </div>
                <div class="clear"></div>				
            </div>
        </div>	
        <div class="clear"></div>
    </div>
</div> 
<?php } else if ($uri1 == 'post') { ?>
<?php owndebugger($single_post); ?>
                
                <div class="col1">
                <!-- Content Heading -->
                <div class="content_heading">
                    
                    <div class="heading"><h2><?php __e((isset($single_post->Title)) ? $single_post->Title : ''); ?></h2> </div>
                </div>
                <?php __e((isset($single_post->PostContent)) ? $single_post->PostContent : ''); ?>
               
                <div class="clear"></div>
                <!-- Content Block -->

          ,      <!-- col1 ends -->	
            </div>
            <!-- Col2 -->
            <div class="col2">
                <div class="ads adsChange">
                    <p>
                    <?php
                        if (isset($settings->AdminPhoto)) {
                            $url = base_url() . "uploads/settings/" . $settings->AdminPhoto;
                        } else {
                            $url = base_url() . "uploads/settings/FacebookCover.jpg";
                        }
                        $id = '';
                        $class = '';
                        $alt = 'avatar';
                        $w = '190px';
                        $h = '';
                        __img($url, $id, $class, $alt, $w, $h);
                    ?>
                    </p>
                    <p><?php __e($settings->AdminMessage); ?></p>
                </div>
                <!-- Top Student -->  
                <div class="rtab">
                    <div class="rtab_content" id="rtab1">
                        <?php
                            __e('<h2>' . $widget1->BlockTitle . '</h2>');
                            __e($widget1->BlockContent);
                        ?>
                        <div class="clear"></div>
                    </div>

                </div>

                <div class="rtab">
                    <div class="rtab_content" id="rtab4">
                        <?php
                            __e('<h2>' . $widget2->BlockTitle . '</h2>');
                            __e($widget2->BlockContent);
                        ?>
                        <div class="clear"></div>
                    </div>

                </div>
                <div class="clear"></div>				
            </div>
        </div>	
        <div class="clear"></div>
    </div>
</div> 
    
<?php } else { ?>
            <div class="col1">
                <!-- Banner -->
                <div id="banner">
                   <ul class="bxslider">
                       <?php foreach((array) $slideshows as $slide) { ?>
                    <?php
                    if (isset($slide->MediaFileName)) {
                        $url = base_url() . "uploads/posts/" . $slide->MediaFileName;
                    } else {
                        $url = base_url() . "uploads/posts/FacebookCover.jpg";
                    }
                    $id = '';
                    $class = '';
                    $alt = 'avatar';
                    $w = '400px';
                    $h = '250px';
                    ?>
                    <li><?php __img($url, $id, $class, $alt, $w); ?></li>
                <?php } ?>
                    </ul>
                    <a href="#" class="pager-prev"><i class="icon-chevron-left"></i></a>
                    <a href="#" class="pager-next"><i class="icon-chevron-right"></i></a>
                </div>
                <!-- Content Links -->
                <div class="content_links">
                    <ul>
                        <li><a href="<?php echo base_url(); ?>outlet">শিক্ষক কর্ণার</a></li>
                        <li><a href="<?php echo base_url(); ?>outlet">শিক্ষার্থী  কর্ণার</a></li>
                        <li><a href="<?php echo base_url(); ?>outlet">অভিভাবক  কর্ণার</a></li>
                        <li><a href="<?php echo base_url(); ?>admission">অনলাইন ভর্তির আবেদন</a></li>
                    </ul>
                </div> 
                <?php if(is_array($historys)) { foreach($historys as $history) { ?>
                           
                <!-- Content Heading -->
                <div class="content_heading">
                    <div class="heading"><h2><?php __e($history->PageTitle); ?></h2> </div>
                </div>
                <?php //owndebugger($history); ?>
                <?php __e($history->Description); ?>
                <?php }} ?>
                <div class="clear"></div>
                <!-- Content Block -->

          ,      <!-- col1 ends -->	
            </div>
            <!-- Col2 -->
            <div class="col2">
                <div class="ads adsChange">
                    <p>
                    <?php
                        if (isset($settings->AdminPhoto)) {
                            $url = base_url() . "uploads/settings/" . $settings->AdminPhoto;
                        } else {
                            $url = base_url() . "uploads/settings/FacebookCover.jpg";
                        }
                        $id = '';
                        $class = '';
                        $alt = 'avatar';
                        $w = '190px';
                        $h = '';
                        __img($url, $id, $class, $alt, $w, $h);
                    ?>
                    </p>
                    <p><?php __e($settings->AdminMessage); ?></p>
                </div>
                <!-- Top Student -->  
                <div class="rtab">
                    <div class="rtab_content" id="rtab1">
                        <?php
                            __e('<h2>' . $widget1->BlockTitle . '</h4>');
                            __e($widget1->BlockContent);
                        ?>
                        <div class="clear"></div>
                    </div>

                </div>

                <div class="rtab">
                    <div class="rtab_content" id="rtab4">
                        <?php
                            __e('<h2>' . $widget2->BlockTitle . '</h4>');
                            __e($widget2->BlockContent);
                        ?>
                        <div class="clear"></div>
                    </div>

                </div>
                <div class="clear"></div>				
            </div>
            <div class="clear"></div>


            <div class="contentblock">
                <!-- Tabs -->	
                <div class="tabwrapper">
                    <div class="tabs_links">
                        <ul>
                            <li><a  href="#tab1">সর্বশেষ সংবাদ</a></li>
                            <li><a href="#tab2">নোটিশ বোর্ড</a></li>
                            <li><a href="#tab3">ডাউনলোড</a></li>
                            <!--<li ><a class="nobg" href="#tab4">Fo</a></li>-->
                        </ul>
                    </div>
                    <div class="tab_content" id="tab1" style="display:none" >
                        <ul>
                            <?php if(is_array($latestnews)) { foreach($latestnews as $news) { ?>
                                <li><a href="<?php __menu('post/' . $news->PostRoute . '?post_id='. $news->PostId); ?>"><?php __e($news->Title); ?></a></li>
                             <?php }} ?>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="tab_content" id="tab2" style="display:none" >
                        <ul>
                            <?php if(is_array($notices)) { foreach($notices as $notice) { ?>
                                <li><a href="<?php __menu('post/' . $notice->PostRoute . '?post_id='. $notice->PostId); ?>"><?php __e($notice->Title); ?></a></li>
                            <?php }} ?>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="tab_content" id="tab3" style="display:none" >
                        <ul>
                            <?php if(is_array($downloads)) { foreach($downloads as $download) { ?>
                                <li><a href="<?php __menu('post/' . $download->PostRoute . '?post_id='. $download->PostId); ?>"><?php __e($download->Title); ?></a></li>
                            <?php } } ?>
                        </ul>
                        <div class="clear"></div>
                    </div>

                </div>
                <div class="clear"></div>
            </div>	   
            <div class="clear"></div>


            <!-- Slder -->	
            <div class="image_scroll">
                <a class="leftarrow" href="#"><img src="<?php echo base_url(); ?>footprints/images/left_arrow.gif"  alt="" /></a>
                <div class="slider1">
                    <ul><?php if(is_array($photogallery)) { foreach($photogallery as $photo) { ?>
                        <li><a href="<?php __menu('post/' . $photo->PostRoute . '?post_id='. $photo->PostId); ?>"><img
                                    src="<?php echo base_url(); ?>uploads/posts/<?php __e($photo->MediaFileName); ?>"
                    alt="<?php __e($photo->Title); ?>"></a></li>
                        <?php } } ?>
                     </ul>
                </div>  
                <a class="rightarrow" href="#"><img src="<?php echo base_url(); ?>footprints/images/right_arrow.gif"  alt="" /></a>
            </div>
        </div>	
        <div class="clear"></div>
    </div>
</div>   
<?php } ?>