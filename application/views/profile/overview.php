<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <?php $this->load->view('profile/layouts/editormenu'); ?>
        <?php echo form_start_divs($title, 'Overview' . (isset($userinformation->full_name_en) ? ' of ' . $userinformation->full_name_en . ', ' . (isset($groupname) ? $groupname : '') : '')); ?>
        <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
            <div class="profile_img">
                <div id="crop-avatar">
                    <div title="" class="avatar-view" data-original-title="Change the avatar">
                        <?php
                        if (isset($personalinformation->UserPhoto)) {
                            $url = $this->initial->initial_settings()->upload_path . "/pp/" . $personalinformation->UserPhoto;
                        } else {
                            $url = '';
                        }
                        $id = '';
                        $class = 'img-circle';
                        $alt = 'avatar';
                        $w = '80px';
                        __img($url, $id, $class, $alt, $w);
                        ?>
                    </div>
                </div>
                <!-- end of image cropping -->
            </div>
        </div>
        <style>
            .bg_light_green {
                background: #e5ffe5;
                border: 1px solid #009900;
            }
        </style>
        <div class="col-md-9 col-sm-9 col-xs-12 bg_light_green">
            <h3>
                <?php __e((isset($userinformation->first_name) ? $userinformation->first_name : '')); ?>
                <?php __e((isset($userinformation->last_name) ? ' ' . $userinformation->last_name : '')); ?>
            </h3>

            <div class="row">
                <div class="col-md-6">
                    <ul class="list-unstyled user_data">
                        <li><i class="fa fa-map-marker user-profile-icon"></i> San Francisco, California, USA</li>
                        <li><i class="fa fa-briefcase user-profile-icon"></i> Software Engineer</li>
                        <li class="m-top-xs">
                            <i class="fa fa-external-link user-profile-icon"></i>
                            <a target="_blank" href="http://www.kimlabs.com/profile/">www.kimlabs.com</a>
                        </li>
                        <li>
                            <i class="fa fa-phone"></i> <?php __e((isset($userinformation->phone) ? $userinformation->phone : '')); ?>
                        </li>
                        <li>
                            <i class="fa fa-inbox"></i> <?php __e((isset($userinformation->email) ? $userinformation->email : '')); ?>
                        </li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <ul class="list-unstyled user_data">
                        <li>
                            <i class="fa fa-map-marker"></i> <?php __e((isset($personalinformation->Address) ? $personalinformation->Address : '')); ?>
                        </li>
                        <li>
                            <i class="fa fa-globe"></i> <?php __e((isset($country[0]->Name) ? $country[0]->Name : '')); ?>
                        </li>
                        <li>
                            Birth
                            Date: <?php __e((isset($personalinformation->DateOfBirth) ? $personalinformation->DateOfBirth : '')); ?>
                        </li>
                        <li>
                            Biography: <?php __e((isset($personalinformation->Biography) ? $personalinformation->Biography : '')); ?>
                        </li>
                        <li>
                            Keywords: <?php __e((isset($personalinformation->NewsFeedKeywords) ? $personalinformation->NewsFeedKeywords : '')); ?>
                        </li>
                        <li>
                            Marital
                            Status: <?php __e((isset($personalinformation->MaritalStatus) ? (($personalinformation->MaritalStatus == 1) ? 'Married' : 'Unmarried') : '')); ?>
                        </li>
                        <li>
                            Website: <a
                                href="<?php __e((isset($personalinformation->NewportalURL) ? $personalinformation->NewportalURL : '')); ?>"><?php __e((isset($personalinformation->NewportalURL) ? $personalinformation->NewportalURL : '')); ?></a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>

        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="nav nav-tabs bar_tabs">Education History</div>
            <table class="table table-striped responsive-utilities jambo_table bulk_action">
                <thead>
                <tr class="headings">
                    <th class="column-title">Institute Name</th>
                    <th class="column-title">Degree</th>
                    <th class="column-title">Start Date</th>
                    <th class="column-title">End Date</th>
                    <th class="column-title">Concentrations</th>
                </tr>
                </thead>

                <tbody>

                <?php foreach ((array)$educationhistory as $education) : ?>
                    <tr class="even pointer">
                        <td>
                            <strong><?php __e((isset($education->InstituteName) ? $education->InstituteName : '')); ?></strong>
                        </td>
                        <td>
                            <?php __e((isset($education->Degree) ? $education->Degree : '')); ?>
                        </td>
                        <td>
                            <?php __e((isset($education->StartDate) ? $education->StartDate : '')); ?>
                        </td>
                        <td>
                            <?php __e((isset($education->EndDate) ? $education->EndDate : '')); ?>
                        </td>
                        <td>
                            <?php __e((isset($education->Concentrations) ? $education->Concentrations : '')); ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
            <?php if ($modifyuserid == 1 || $modifyuserid == 3 || $modifyuserid == 6) { ?>
                <div class="nav nav-tabs bar_tabs">Work History</div>
                <table class="table table-striped responsive-utilities jambo_table bulk_action">
                    <thead>
                    <tr class="headings">
                        <th class="column-title">Organization</th>
                        <th class="column-title">Position</th>
                        <th class="column-title">Start Date</th>
                        <th class="column-title">End Date</th>
                        <th class="column-title">Responsibilities</th>
                    </tr>
                    </thead>

                    <tbody>
                    <?php foreach ((array)$workhistory as $work) : ?>
                        <tr>
                            <td>
                                <strong><?php __e((isset($work->Organization) ? $work->Organization : '')); ?></strong>
                            </td>
                            <td>
                                <?php __e((isset($work->Position) ? $work->Position : '')); ?>
                            </td>
                            <td>
                                <?php __e((isset($work->StartDate) ? $work->StartDate : '')); ?>
                            </td>
                            <td>
                                <?php __e((isset($work->EndDate) ? $work->EndDate : '')); ?>
                            </td>
                            <td>
                                <?php __e((isset($work->Responsibilities) ? $work->Responsibilities : '')); ?>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            <?php } ?>
            <?php if ($modifyuserid == 1 || $modifyuserid == 5) { ?>
                <div class="column-title">Business History</div>
                <table class="table table-striped responsive-utilities jambo_table bulk_action">
                    <thead>
                    <tr class="headings">
                        <th class="column-title">Organization Name</th>
                        <th class="column-title">Category Name</th>
                        <th class="column-title">Organization City</th>
                        <th class="column-title">Start Date</th>
                        <th class="column-title">Organization URL</th>
                        <th class="column-title">Services</th>
                        <th class="column-title">Notes</th>
                    </tr>
                    </thead>

                    <tbody>
                    <?php foreach ((array)$businesses as $business) : ?>
                        <tr>
                            <td>
                                <a target="_blank"
                                   href="<?php __e((isset($business->OrganizationURL) ? $business->OrganizationURL : '')); ?>">
                                    <?php __e((isset($business->OrganizationName) ? $business->OrganizationName : '')); ?>
                                </a>
                            </td>
                            <td>
                                <?php __e((isset($business->CategoryName) ? $business->CategoryName : '')); ?>
                            </td>
                            <td>
                                <?php __e((isset($business->OrganizationCity) ? $business->OrganizationCity : '')); ?>
                            </td>
                            <td>
                                <?php __e((isset($business->StartDate) ? $business->StartDate : '')); ?>
                            </td>
                            <td>
                                <a target="_blank"
                                   href="<?php __e((isset($business->OrganizationURL) ? $business->OrganizationURL : '')); ?>"><?php __e((isset($business->OrganizationURL) ? $business->OrganizationURL : '')); ?></a>
                            </td>
                            <td>
                                <?php __e((isset($business->Services) ? $business->Services : '')); ?>
                            </td>
                            <td>
                                <?php __e((isset($business->Notes) ? $business->Notes : '')); ?>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            <?php } ?>
        </div>
        <?php echo form_end_divs(); ?>
    </div>
</div>