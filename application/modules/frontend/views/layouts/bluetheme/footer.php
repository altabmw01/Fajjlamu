</div>
</div>
</div>
</div>
<div class="footer">
    <div class="container">
        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
            <h3 style="color: #727272">ফটো গ্যালারী</h3>
            <ul id="photoGallaryNew">
			<?php //owndebugger($photos); ?>
                <?php if(is_array($photos)) { foreach($photos as $photo) { ?>
                                <li><a href="<?php __menu('post/' . $photo['PostRoute'] . '?post_id='. $photo['PostId']); ?>"><img
                                            src="<?php echo base_url(); ?>uploads/posts/<?php __e($photo['MediaFileName']); ?>"
                            alt="<?php __e($photo['Title']); ?>"></a></li>
                 <?php } } ?>
            </ul>
        </div>
        <div class="col-lg-2 col-md-5 col-sm-12 col-xs-12">
            <h3 style="color: #727272">মোট পরিদর্শক</h3>

            <p>
                &raquo; ১ আজ<br>
                &raquo; ০ গতকাল<br>
                &raquo; ৬ সপ্তাহ<br>
                &raquo; ১৩ মাস<br>
                &raquo; ৩৪১ বছর<br>
                &raquo; ৩৪১ মোট </p>
        </div>
        <div class="col-lg-3 col-md-5 col-sm-12 col-xs-12">
            <?php
            __e('<h3>' . $widget4->BlockTitle . '</h3>');
            __e($widget4->BlockContent);
            ?>
        </div>
    </div>
    <div class="clear"></div>
    <div class="copyright">কপিরাইট © &nbsp; পাকুটিয়া পাবলিক স্কুল এন্ড কলেজ । কারিগরী সহায়তা <a
            href="http://www.ideatweaker.com/" target="_blank">আইডিয়া টুইকার</a></div>
</div>
<script src="<?php echo base_url(); ?>footprints/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>footprints/js/bootstrapValidator.js"></script>
<script src="<?php echo base_url(); ?>footprints/js/jquery.datetimepicker.js"></script>
<script src="<?php echo base_url(); ?>footprints/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>footprints/js/__custom.js"></script>
<script src="<?php echo base_url(); ?>footprints/js/custom.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>footprints/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>footprints/js/newsscroll.js"></script>
<script src="<?php echo base_url(); ?>footprints/js/readmore.js"></script>
<script src="<?php echo base_url(); ?>footprints/js/jquery.PrintArea.js" type="text/JavaScript"
        language="javascript"></script>
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</body>
</html>