<div class="left_col scroll-view">
    <div class="navbar nav_title" style="border: 0; text-align: center; margin-top: 20px;">
        <a href="<?php __menu('dashboard'); ?>" class="ite_title">
            <?php
            $id = 'logo';
            $cls = 'logo';
            $w = '200';
            $h = '';
            $alt = 'logo';
            $url = base_url() . 'footprints/images/logo.png';
            ?>
            <?php __img($url, $id, $cls, $alt, $w, $h); ?>
        </a>
    </div>
    <div class="clearfix"></div>
    <!-- sidebar menu -->
    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
        <div class="menu_section">
            <h3>General</h3>
            <ul class="nav side-menu">
                <li><a href="<?php __menu("dashboard") ?>"><i class="fa fa-home"></i> Dashboard</a></li>
                <?php if ($this->ion_auth->in_group('Admin')) { ?>
                    <li class="vn">
                        <a><i class="fa fa-picture-o"></i> Posts <span class="fa fa-chevron-down"></span></a>
                        <ul style="display: none;" class="nav child_menu">
                            <li><a href="<?php __menu("addpost") ?>">Add new post</a></li>
                            <li><a href="<?php __menu("post") ?>">View Posts</a></li>
                        </ul>
                    </li>
                    <li class="vn">
                        <a><i class="fa fa-file"></i> Payments Manager<span class="fa fa-chevron-down"></span></a>
                        <ul style="display: none;" class="nav child_menu">
                            <li><a href="<?php __menu("newledgername") ?>">Add Ledger Name</a></li>
                            <li><a href="<?php __menu("transactionidadder") ?>">New Transaction ID</a></li>
                            <li><a href="<?php __menu("newpayment") ?>">New Payment</a></li>
                        </ul>
                    </li>
                    <li class="vn">
                        <a><i class="fa fa-file"></i> Admission Manager<span class="fa fa-chevron-down"></span></a>
                        <ul style="display: none;" class="nav child_menu">
                            <li><a href="<?php __menu("admissionrequest") ?>">New Applicants</a></li>
                        </ul>
                    </li>
                    <li class="vn"><a><i class="fa fa-asterisk"></i> Results <span class="fa fa-chevron-down"></span></a>
                        <ul style="display: none;" class="nav child_menu">
                            <li><a href="<?php __menu('generateresultview'); ?>">Generate Results</a></li>
                            <li><a href="<?php __menu('viewresults'); ?>">View and Edit Result</a></li>
                        </ul>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <!-- /sidebar menu -->
    <!-- /menu footer buttons -->
    <div class="sidebar-footer hidden-small">
        <a data-toggle="tooltip" data-placement="top" title="Settings">
            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="FullScreen">
            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="Lock">
            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
        </a>
        <a href="<?php echo base_url(); ?>logout" data-toggle="tooltip" data-placement="top" title="Logout">
            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
        </a>
    </div>
    <!-- /menu footer buttons -->
</div>
