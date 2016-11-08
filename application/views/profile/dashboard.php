<?php
function settingHTML($heading)
{
    echo '<h2>' . $heading . '</h2>';
    echo settings_icons();
    echo '<div class="clearfix"></div>';
}

function icons_menu($icon, $menu, $menutext)
{
    $html = '<div class="col-md-2 dashicons">
        <a href="' . $menu . '">
            <i class="fa ' . $icon . '"></i>
            <h6>' . $menutext . '</h6>
        </a>
    </div>';
    return $html;
}

?>
<?php if ($this->ion_auth->in_group('Admin')) { ?>
<div class="row">
    <div class="col-md-6">
        <div class="x_panel">
            <div class="x_title">
                <?php settingHTML('Students Management'); ?>
                <div class="clearfix"></div>
            </div>
            <div class="x_content" style="display: block;">
                <?php echo icons_menu('fa-plus-square-o', 'usergenerator', 'Generate User'); ?>
                <?php echo icons_menu('fa-list', 'viewstudents', 'All Students'); ?>
                <?php echo icons_menu('fa-hourglass', 'admissionrequest', 'New Applicants'); ?>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="x_panel">
            <div class="x_title">
                <?php settingHTML('Teachers & Staffs Management'); ?>
                <div class="clearfix"></div>
            </div>
            <div class="x_content" style="display: block;">
                <?php echo icons_menu('fa-plus-square', 'usergenerator', 'Generate User'); ?>
                <?php echo icons_menu('fa-list', 'viewstudents', 'All Teachers'); ?>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="x_panel">
            <div class="x_title">
                <?php settingHTML('Accounts Management'); ?>
                <div class="clearfix"></div>
            </div>
            <div class="x_content" style="display: block;">
                <?php echo icons_menu('fa-plus-square', 'newledgername', 'Add Ledger Name'); ?>
                <?php echo icons_menu('fa-plus-square', 'newpayment', 'Add Payment'); ?>
                <?php echo icons_menu('fa-plus-square', 'transactionidadder', 'New Transaction ID'); ?>
                <?php echo icons_menu('fa-plus-square', 'newapplicants', 'New Transaction ID'); ?>
                <?php echo icons_menu('fa-list', 'paymentlists', 'Payments'); ?>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="x_panel">
            <div class="x_title">
                <?php settingHTML('Quick Links'); ?>
                <div class="clearfix"></div>
            </div>
            <div class="x_content" style="display: block;">
                <?php echo icons_menu('fa-plus-square-o', 'addmedia', 'New Upload'); ?>
                <?php echo icons_menu('fa-picture-o', 'media', 'View Medias'); ?>
            </div>
        </div>
    </div>
</div>
<?php } ?>
<!--<div class="row tile_count">-->
<!--    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">-->
<!--        <div class="left"></div>-->
<!--        <div class="right">-->
<!--            <span class="count_top"><i class="fa fa-user"></i> Total Users</span>-->
<!---->
<!--            <div class="count">2500</div>-->
<!--            <span class="count_bottom"><i class="green">4% </i> From last Week</span>-->
<!--        </div>-->
<!--    </div>-->
<!--    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">-->
<!--        <div class="left"></div>-->
<!--        <div class="right">-->
<!--            <span class="count_top"><i class="fa fa-clock-o"></i> Average Time</span>-->
<!---->
<!--            <div class="count">123.50</div>-->
<!--            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> From last Week</span>-->
<!--        </div>-->
<!--    </div>-->
<!--    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">-->
<!--        <div class="left"></div>-->
<!--        <div class="right">-->
<!--            <span class="count_top"><i class="fa fa-user"></i> Total Males</span>-->
<!---->
<!--            <div class="count green">2,500</div>-->
<!--            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>-->
<!--        </div>-->
<!--    </div>-->
<!--    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">-->
<!--        <div class="left"></div>-->
<!--        <div class="right">-->
<!--            <span class="count_top"><i class="fa fa-user"></i> Total Females</span>-->
<!---->
<!--            <div class="count">4,567</div>-->
<!--            <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> From last Week</span>-->
<!--        </div>-->
<!--    </div>-->
<!--    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">-->
<!--        <div class="left"></div>-->
<!--        <div class="right">-->
<!--            <span class="count_top"><i class="fa fa-user"></i> Total Collections</span>-->
<!---->
<!--            <div class="count">2,315</div>-->
<!--            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>-->
<!--        </div>-->
<!--    </div>-->
<!--    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">-->
<!--        <div class="left"></div>-->
<!--        <div class="right">-->
<!--            <span class="count_top"><i class="fa fa-user"></i> Total Connections</span>-->
<!---->
<!--            <div class="count">7,325</div>-->
<!--            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>-->
<!--        </div>-->
<!--    </div>-->
<!---->
<!--</div>-->
