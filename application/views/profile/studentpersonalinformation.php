<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <?php $this->load->view('profile/layouts/editormenu'); ?>
        <?php echo form_start_divs($title, 'Information' . (isset($userinformation2->full_name_en) ? ' of ' . $userinformation2->full_name_en . ', ' . (isset($groupname) ? $groupname : '') : '')); ?>
        <?php echo form_open_multipart('', array('class' => 'form-horizontal', 'id' => 'studentPersonalInformationForm')); ?>
        <?php
        $data = array(
            'type' => 'hidden',
            'name' => 'usergroupid',
            'value' => (isset($modifyuserid) ? $modifyuserid : 'none')
        );
        echo form_input($data);
        if ($modifyuserid == 4) {
            $data = array(
                'type' => 'hidden',
                'name' => 'studentpersonalinfoid',
                'value' => (isset($userinformation->StudentInfoId) ? $userinformation->StudentInfoId : 'none')
            );
            echo form_input($data);
        } else {
            $data3 = array(
                'type' => 'hidden',
                'name' => 'teacherstaffinfoid',
                'value' => (isset($userinformation1->TchStaffId) ? $userinformation1->TchStaffId : 'none')
            );
            echo form_input($data3);
        }

        ?>
        <input name="userid" type="hidden" value="<?php __e((isset($userid) ? $userid : 'none')); ?>">
        <?php if ($modifyuserid == 4) { ?>
            <div class="form-group">
                <label class="col-md-3">Class</label>

                <div class="col-lg-8">
                    <?php echo form_dropdown('class', $class, set_value('class', (isset($userinformation->Class) ? $userinformation->Class : ''), TRUE), array('class' => 'form-control', 'readyonly' => 'readyonly')); ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3">Class Roll</label>

                <div class="col-lg-8">
                    <?php
                    $data = array(
                        'name' => 'classroll',
                        'class' => 'form-control',
                        'required' => 'required',
                        //'readonly' => 'readonly',
                        'value' => (isset($userinformation->ClassRoll) ? $userinformation->ClassRoll : '')
                    );
                    echo form_input($data);
                    ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3">Section</label>

                <div class="col-lg-8">
                    <?php echo form_dropdown('section', $section, set_value('section', (isset($userinformation->Section) ? $userinformation->Section : ''), TRUE), array('class' => 'form-control')); ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3">Group</label>

                <div class="col-lg-8">
                    <?php echo form_dropdown('group', $group, set_value('group', (isset($userinformation->Group) ? $userinformation->Group : ''), TRUE), array('class' => 'form-control')); ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3">Department</label>

                <div class="col-lg-8">
                    <?php echo form_dropdown('department', $department, set_value('department', (isset($userinformation->Department) ? $userinformation->Department : ''), TRUE), array('class' => 'form-control')); ?>
                </div>
            </div>
        <?php } else { ?>
            <div class="form-group">
                <label class="col-lg-3">Designation</label>

                <div class="col-md-8">
                    <?php
                    $data = array(
                        'name' => 'designation',
                        'id' => 'designation',
                        'class' => 'form-control',
                        'data-minlength' => '2',
                        'required' => 'required',
                        'value' => (isset($userinformation1->Designation) ? $userinformation1->Designation : '')
                    );

                    echo form_input($data);
                    ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-3">Salary Scale</label>

                <div class="col-md-8">
                    <?php
                    $data = array(
                        'name' => 'salaryscale',
                        'id' => 'salaryscale',
                        'class' => 'form-control',
                        'data-minlength' => '2',
                        'required' => 'required',
                        'value' => (isset($userinformation1->SalaryScale) ? $userinformation1->SalaryScale : '')
                    );

                    echo form_input($data);
                    ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-3">Date Attended</label>

                <div class="col-md-8">
                    <?php
                    $data = array(
                        'name' => 'dateattended',
                        'id' => 'date',
                        'class' => 'form-control',
                        'value' => (isset($userinformation1->DateAttended) ? $userinformation1->DateAttended : '')
                    );

                    echo form_input($data);
                    ?>
                </div>
            </div>
        <?php } ?>

        <div class="form-group">
            <label class="col-md-3"></label>

            <div class="col-md-8">
                <input id="studentpersonalInfoBtn" class="btn btn-success" value="Save Changes"
                       type="submit">
                <span></span>
                <input class="btn btn-default" value="Cancel" type="reset">
            </div>
        </div>
        <?php echo form_close(); ?>
        <?php echo form_end_divs(); ?>
    </div>
</div>