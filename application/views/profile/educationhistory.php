<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <?php $this->load->view('profile/layouts/editormenu'); ?>
        <?php echo form_start_divs($title, 'Education Information' . (isset($userinformation->full_name_en) ? ' of ' . $userinformation->full_name_en . ', ' . (isset($groupname) ? $groupname : '') : '')); ?>
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addEducationModal">Add
            Education
        </button>
        <?php foreach ((array)$educationhistory as $userinformation): ?>
            <?php if (isset($userinformation)) { ?>
                <div class="row loadEducation">
                    <div class="col-md-12">
                        <div class="row">
                            <h5>
                                <?php echo(isset($userinformation->Degree) ? $userinformation->Degree : ''); ?>
                                <?php //echo(isset($userinformation->EducationID) ? $userinformation->EducationID : ''); ?>
                            </h5>
                        </div>
                        <div class="row">
                            <span><?php echo(isset($userinformation->InstituteName) ? $userinformation->InstituteName : ''); ?></span>
                            <?php echo(isset($userinformation->StartDate) ? ' | ' . $userinformation->StartDate . ' - ' : ''); ?>
                            <?php echo(isset($userinformation->EndDate) ? $userinformation->EndDate : ''); ?>
                            <?php if (isset($userinformation->EducationID)) { ?>
                                <a href="javascript:void(0)" class="btn btn-danger pull-right"
                                   onclick="ajaxRemoveFn(<?php __e($userinformation->EducationID); ?>, 'deleteeducation/<?php __e($userinformation->EducationID); ?>')">
                                    <span class="fa fa-times"></span>
                                </a>
                            <?php } ?>
                        </div>
                        <div class="tenpxm"></div>
                    </div>
                </div>
            <?php } ?>
        <?php endforeach; ?>
        <?php echo form_end_divs(); ?>
    </div>
</div>
<div class="modal fade" id="addEducationModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <?php echo form_open_multipart('', array('class' => 'form-horizontal', 'id' => 'addEducationHistoryForm')); ?>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Add New Education</h4>
            </div>
            <div class="modal-body">
                <input name="userid" type="hidden"
                       value="<?php __e((isset($userid) ? $userid : 0)); ?>">

                <div class="form-group">
                    <label class="col-md-3">Institute Name</label>

                    <div class="col-md-7">
                        <?php
                        $data = array(
                            'name' => 'institutename',
                            'id' => 'institutename',
                            'class' => 'form-control',
                            'data-minlength' => '4',
                            'required' => 'required',
                            'value' => ''
                        );

                        echo form_input($data);
                        ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Degree</label>

                    <div class="col-md-7">
                        <?php
                        $data = array(
                            'name' => 'degree',
                            'id' => 'degree',
                            'class' => 'form-control',
                            'required' => 'required',
                            //'type' => 'email',
                            //'readonly' => 'true',
                            'value' => ''
                        );

                        echo form_input($data);
                        ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Major</label>

                    <div class="col-md-7">
                        <?php
                        $data = array(
                            'name' => 'concentrations',
                            'id' => 'concentrations',
                            'class' => 'form-control',
                            'required' => 'required',
                            //'type' => 'email',
                            //'readonly' => 'true',
                            'value' => ''
                        );

                        echo form_input($data);
                        ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Start Date</label>

                    <div class="col-md-7">
                        <?php
                        $data = array(
                            'name' => 'startdate',
                            'id' => 'date',
                            'class' => 'form-control',
                            'value' => ''
                        );

                        echo form_input($data);
                        ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">End Date</label>

                    <div class="col-md-7">
                        <?php
                        $data = array(
                            'name' => 'enddate',
                            'id' => 'date1',
                            'class' => 'form-control',
//                                                'required' => 'required',
                            'value' => ''
                        );

                        echo form_input($data);
                        ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Graduated</label>

                    <div class="col-lg-8">
                        <label class="radio-inline">
                            <input type="radio" name="isgraduated" id="inlineRadio1"
                                   value="1"
                                <?php echo set_radio('isgraduated', '1', ''); ?> />
                            Yes
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="isgraduated" id="inlineRadio1"
                                   value="2"
                                <?php echo set_radio('isgraduated', '2', ''); ?> />
                            No
                        </label>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <input id="addEducationBtn" class="btn btn-success" value="Save Changes"
                       type="submit">
                <input class="btn btn-default" value="Cancel" type="reset">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>
