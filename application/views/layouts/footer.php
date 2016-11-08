<?php if($this->ion_auth->logged_in()) { ?>
            </div>
        </div>
    </div>
</div>

<div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
</div>
<?php } else { ?>
</div>
<?php } ?>
<!--<script type="text/javascript" src="--><?php //echo base_url() . 'footprints/js/jquery-2.1.4.min.js'; ?><!--"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--footprints/js/tinymce/tinymce.min.js"></script>-->

<?php echo put_footer(); ?>
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--footprints/js/wymeditor/jquery.wymeditor.min.js"></script>-->
<script type="text/javascript" src="<?php echo base_url(); ?>footprints/js/cle/jquery.cleditor.min.js"></script>
<script src="<?php echo base_url(); ?>js/chartjs/chart.min.js"></script>
<script src="<?php echo base_url(); ?>js/progressbar/bootstrap-progressbar.min.js"></script>
<script src="<?php echo base_url(); ?>js/nicescroll/jquery.nicescroll.min.js"></script>
<script src="<?php echo base_url(); ?>js/icheck/icheck.min.js"></script>
<!-- daterangepicker -->
<script type="text/javascript" src="<?php echo base_url(); ?>js/moment.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>js/datepicker/daterangepicker.js"></script>

<script src="<?php echo base_url(); ?>js/custom.js"></script>
<!--[if lte IE 8]>
<script type="text/javascript" src="<?php echo base_url(); ?>js/excanvas.min.js"></script>
<![endif]-->

<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $("#wysiwyg, #wysiwyg1, #wysiwyg2, #wysiwyg3, #wysiwyg4, #wysiwyg5").cleditor();
    });
    //$("#wysiwyg, #wysiwyg1, #wysiwyg2, #wysiwyg3, #wysiwyg4, #wysiwyg5").css("height", "100%").css("width", "100%").htmlbox({});
</script>

<!-- /datepicker -->
<!-- /footer content -->
</body>
</html>


<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/flot/jquery.flot.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/flot/jquery.flot.pie.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/flot/jquery.flot.orderBars.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/flot/jquery.flot.time.min.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/flot/date.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/flot/jquery.flot.spline.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/flot/jquery.flot.stack.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/flot/curvedLines.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/flot/jquery.flot.resize.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/maps/jquery-jvectormap-2.0.1.min.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/maps/gdp-data.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/maps/jquery-jvectormap-world-mill-en.js"></script>-->
<!--<script type="text/javascript" src="--><?php //echo base_url(); ?><!--js/maps/jquery-jvectormap-us-aea-en.js"></script>-->