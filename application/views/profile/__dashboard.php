<?php
function settingHTML($heading)
{
    echo '<h2>' . $heading . '</h2>';
    echo settings_icons();
    echo '<div class="clearfix"></div>';
}

?>
<div class="">
    <div class="page-title">
        <div class="title_left">
            <h3><?php __e($title); ?></h3>
        </div>
        <div class="title_right">
            <div class="pull-right">
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-3 col-xs-12 widget widget_tally_box">
                <div class="x_panel">
                    <div class="x_title">
                        <?php settingHTML('Students'); ?>
                    </div>
                    <div class="x_content">
                        <ul class="nav child_menu dashboardnav">
                            <li><a href="<?php __menu("addnewstudent") ?>">Add New</a></li>
                            <li><a href="<?php __menu("viewstudents") ?>">Current Students</a></li>
                            <li><a href="<?php __menu("viewxstudents") ?>">X Students</a></li>
                            <li><a href="<?php __menu("viewallstudents") ?>">All Students</a></li>
                            <li><a href="<?php __menu("viewapplicants") ?>"> Current Applicants</a></li>
                            <li><a href="<?php __menu("viewapproveapplicants") ?>"> Approved Applicants</a></li>
                            <li><a href="<?php __menu("attendance") ?>"> Absence Notifier</a></li>
                            <li><a href="<?php __menu("viewabsence") ?>"> View Absence</a></li>
                            <li><a href="<?php __menu("monthlyabsencereport") ?>"> Monthly Report</a></li>
                            <li><a href="<?php __menu("addleavetypes") ?>"> Add Leave Types</a></li>
                            <li><a href="<?php __menu("viewleavetypes") ?>"> View Leave Types</a></li>
                            <li><a href="<?php __menu("leaverequests") ?>"> Leave Requests</a></li>
                            <li><a href="<?php __menu("generateresults") ?>"> Generate Results</a></li>
                            <li><a href="<?php __menu("addresults") ?>"> Add/Edit Results</a></li>
                            <li><a href="<?php __menu("viewresults") ?>">View Results</a></li>
                            <li><a href="<?php __menu("addnewothersresult") ?>"> Add Others Results</a></li>
                            <li><a href="<?php __menu("viewothersresults") ?>"> Others Results</a></li>
                            <li><a href="<?php __menu("viewblankmarksheet") ?>"> Blank Marksheet</a></li>
                            <li><a href="<?php __menu("addnewtalentedstudent") ?>"> Add Talented Students</a></li>
                            <li><a href="<?php __menu("viewtalentedstudents") ?>"> All Talented Students</a></li>
                            <li><a href="<?php __menu("newapplication") ?>"> New Application</a></li>
                            <li><a href="<?php __menu("viewtcs") ?>"> Transfer Certificate</a></li>
                            <li><a href="<?php __menu("viewtestimonials") ?>"> Testimonial</a></li>
                            <li><a href="<?php __menu("viewprottoyans") ?>"> Attestation</a></li>
                            <li><a href="<?php __menu("viewtotlists") ?>"> Totlist</a></li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12 widget widget_tally_box">
                <div class="x_panel">
                    <div class="x_title">
                        <?php settingHTML('Teachers'); ?>
                    </div>
                    <div class="x_content">
                        <ul class="nav child_menu dashboardnav">
                            <li><a href="<?php __menu("addnewteacher") ?>">Add New</a></li>
                            <li><a href="<?php __menu("viewteachers") ?>">Current Teachers</a></li>
                            <li><a href="<?php __menu("viewxteachers") ?>">X Teachers</a></li>
                            <li><a href="<?php __menu("viewxheadteachers") ?>">X Head Teachers</a></li>
                            <li><a href="<?php __menu("viewallteachers") ?>">All Teachers</a></li>
                            <li><a href="<?php __menu("teacherattendence") ?>">Teacher Attendance</a></li>
                            <li><a href="<?php __menu("generatersalary") ?>"> Generate Salary</a></li>
                            <li><a href="<?php __menu("addsalary") ?>"> Add/Edit Salary</a></li>
                            <li><a href="<?php __menu("viewsalary") ?>"> View Salary</a></li>
                            <li><a href="<?php __menu("accounts") ?>">Accounts Report</a></li>
                            <li><a href="<?php __menu("addnewcredit") ?>"> Add Credit</a></li>
                            <li><a href="<?php __menu("viewcredits") ?>"> All Credits</a></li>
                            <li><a href="<?php __menu("addnewdebit") ?>">Add Debit</a></li>
                            <li><a href="<?php __menu("viewdebits") ?>"> All Debits</a></li>
                            <li><a href="<?php __menu("addnewfinancialdepartment") ?>"> Add new</a></li>
                            <li><a href="<?php __menu("viewfinancialdepartments") ?>"> Financial Department</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12 widget widget_tally_box">
                <div class="x_panel">
                    <div class="x_title">
                        <?php settingHTML('Staffs'); ?>
                    </div>
                    <div class="x_content">
                        <ul class="nav child_menu dashboardnav">
                            <li><a href="<?php __menu("addnewstaff") ?>">Add New</a></li>
                            <li><a href="<?php __menu("viewstaffs") ?>">All Staffs</a></li>
                            <li><a href="<?php __menu("staffattendence") ?>">Staff Attendance</a></li>
                            <li><a href="<?php __menu("generatersalary") ?>">Generate Salary</a></li>
                            <li><a href="<?php __menu("addsalary") ?>">Add/Edit Salary</a></li>
                            <li><a href="<?php __menu("viewsalary") ?>">View Salary</a></li>
                            <li><a href="<?php __menu("addnewpayment") ?>"> Add Payment</a></li>
                            <li><a href="<?php __menu("viewpayments") ?>"> Payment History</a></li>
                        </ul>
                    </div>
                </div>

                <div class="x_panel">
                    <div class="x_title">
                        <?php settingHTML('Academic'); ?>
                    </div>
                    <div class="x_content">
                        <ul class="nav child_menu dashboardnav">
                            <li><a href="<?php __menu("addroutine") ?>"> Add New</a></li>
                            <li><a href="<?php __menu("viewroutine") ?>"> Class Wise Routine</a></li>
                            <li><a href="<?php __menu("addnewnews") ?>"> Add New News</a></li>
                            <li><a href="<?php __menu("viewnews") ?>"> All News</a></li>
                            <li><a href="<?php __menu("addnewdownload") ?>"> Add New Download</a></li>
                            <li><a href="<?php __menu("viewdownloads") ?>"> All Downloads</a></li>
                            <li><a href="<?php __menu("addnewacademiccouncillor") ?>"> Add Academic Councillors</a></li>
                            <li><a href="<?php __menu("viewacademiccouncillors") ?>"> All Academic Councillors</a></li>
                            <li><a href="<?php __menu("addnewsyllabus") ?>"> Add Syllabus</a></li>
                            <li><a href="<?php __menu("viewsyllabuss") ?>"> All Syllabus</a></li>
                            <li><a href="<?php __menu("addnewnotice") ?>"> Add Notice</a></li>
                            <li><a href="<?php __menu("viewnotices") ?>"> Notices</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12 widget widget_tally_box">
                <div class="x_panel">
                    <div class="x_title">
                        <?php settingHTML('Guardians'); ?>
                    </div>
                    <div class="x_content">
                        <ul class="nav child_menu dashboardnav">
                            <li><a href="<?php __menu("addnewstaff") ?>">Add New</a></li>
                            <li><a href="<?php __menu("viewstaffs") ?>">All Staffs</a></li>
                            <li><a href="<?php __menu("staffattendence") ?>">Staff Attendance</a></li>
                            <li><a href="<?php __menu("generatersalary") ?>">Generate Salary</a></li>
                            <li><a href="<?php __menu("addsalary") ?>">Add/Edit Salary</a></li>
                            <li><a href="<?php __menu("viewsalary") ?>">View Salary</a></li>
                        </ul>
                    </div>
                </div>
                <div class="x_panel">
                    <div class="x_title">
                        <?php settingHTML('Others'); ?>
                    </div>
                    <div class="x_content">
                        <ul class="nav child_menu dashboardnav">
                            <li><a href="<?php __menu("addnewbook") ?>"> Add New Book</a></li>
                            <li><a href="<?php __menu("viewbooks") ?>"> All Books</a></li>
                        </ul>
                    </div>
                </div>
                <div class="x_panel">
                    <div class="x_title">
                        <?php settingHTML('Media Management'); ?>
                    </div>
                    <div class="x_content">
                        <ul class="nav child_menu dashboardnav">
                            <li><a href="<?php __menu("addnewmediaupload") ?>"> Add New Media</a></li>
                            <li><a href="<?php __menu("viewmediauploads") ?>"> All Medias</a></li>
                            <li><a href="<?php __menu("addnewphoto") ?>"> Add Photo</a></li>
                            <li><a href="<?php __menu("viewphotos") ?>"> View Photos</a></li>
                            <li><a href="<?php __menu("addnewgallery") ?>"> Add Gallery</a></li>
                            <li><a href="<?php __menu("viewgalleries") ?>"> View Galleries</a></li>
                            <li><a href="<?php __menu("addnewslide") ?>"> Add New Slide</a></li>
                            <li><a href="<?php __menu("viewslides") ?>"> All Slides</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>