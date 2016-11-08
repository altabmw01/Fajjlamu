<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <?php echo form_start_divs($title, 'generate result here'); ?>
        <?php echo form_open_multipart('', array('class' => 'form-horizontal', 'id' => 'resultGenerateForm', 'data-toggle' => 'validator')); ?>
        <div class="form-group">
            <label class="col-lg-3">Exam</label>

            <div class="col-md-8">
                <?php echo form_dropdown('examm', $exams, set_value('gender', (isset($eid) ? $eid : ''), TRUE), array('class' => 'form-control', 'id' => 'examm')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-3">Class</label>

            <div class="col-md-8">
                <?php echo form_dropdown('classs', $classes, set_value('gender', (isset($cid) ? $cid : ''), TRUE), array('class' => 'form-control', 'id' => 'classs')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-3">Section</label>

            <div class="col-md-8">
                <?php echo form_dropdown('section', $sections, set_value('gender', (isset($sid) ? $sid : ''), TRUE), array('class' => 'form-control', 'id' => 'section')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-3">Subject</label>

            <div class="col-md-8">
                <?php echo form_dropdown('subject', $subjects, set_value('gender', (isset($subid) ? $subid : ''), TRUE), array('class' => 'form-control', 'id' => 'subject')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-3">Group</label>

            <div class="col-md-8">
                <?php echo form_dropdown('groupp', $groups, set_value('gender', (isset($sgid) ? $sgid : ''), TRUE), array('class' => 'form-control', 'id' => 'groupp')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3"></label>

            <div class="col-md-8">
                <input id="resultGenerateBtn" class="btn btn-success" value="Generate Result"
                       type="submit">
                <span></span>
                <input class="btn btn-default" value="Cancel" type="reset">
                <span>
                    <?php
                    if($status == 0) {
                        __e((isset($msg) ? $msg : ''));
                    } else {
                        __e((isset($msg) ? $msg : ''));
                    }

                    ?>
                </span>
            </div>
        </div>
        <?php echo form_close(); ?>
        <?php echo form_end_divs(); ?>
    </div>
</div>
