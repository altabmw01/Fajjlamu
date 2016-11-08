<div class="row">
    <div class="col-md-6 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Generate
                    <small> student and guardian informations</small>
                </h2>
                <?php echo settings_icons(); ?>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br/>
                <?php echo form_open_multipart('', array('class' => 'form-horizontal form-label-left input_mask', 'id' => 'guardianInformationForm')); ?>
                <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                    <?php
                    $data = array(
                        'type' => 'text',
                        'name' => 'studentclassroll',
                        'id' => 'studentclassroll',
                        'class' => 'form-control',
                        'placeholder' => 'Student Class Roll'
                    );
                    echo form_input($data);
                    ?>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                    <?php echo form_dropdown('class', $class, set_value('class', (isset($userinformation->class) ? $userinformation->class : ''), TRUE), array('class' => 'form-control', 'id' => 'class')); ?>
                </div>
                <?php
                $random = random_string('alnum', 6);
                $random1 = random_string('alnum', 6);
                $data = array(
                    'type' => 'hidden',
                    'id' => 'passbox',
                    'value' => $random
                );
                echo form_input($data);
                $data1 = array(
                    'type' => 'hidden',
                    'id' => 'passbox1',
                    'value' => $random1
                );
                echo form_input($data1);
                ?>
                <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                    <input id="guardianInfoBtn" class="btn btn-success" value="Generate" type="button">
                    <span></span>
                    <input class="btn btn-default" value="Cancel" type="reset">
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>

        <div class="x_panel">
            <div class="x_title">
                <h2>Guardian or Student Information
                    <small>save it for future use</small>
                </h2>
                <?php echo settings_icons(); ?>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br/>
                <?php echo form_open_multipart('', array('class' => 'form-horizontal form-label-left input_mask', 'id' => 'generateStdGuaForm')); ?>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Student User ID</label>

                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <?php
                        $data = array(
                            'type' => 'text',
                            'name' => 'stdid',
                            'id' => 'stdid',
                            'number' => 'number',
                            'readonly' => 'readonly',
                            'class' => 'form-control',
                            'placeholder' => 'Student ID'
                        );
                        echo form_input($data);
                        ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Password</label>

                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <?php
                        $data = array(
                            'type' => 'text',
                            'name' => 'stdpass',
                            'id' => 'stdpass',
                            'readonly' => 'readonly',
                            'class' => 'form-control',
                            'value' => ''
                        );
                        echo form_input($data);
                        ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">&nbsp;</label>

                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <?php
                        $data = array(
                            'name' => 'existingguardian',
                            'id' => 'existingguardian',
                            'value' => 'accept',
                            'style' => 'margin:10px'
                        );
                        echo form_checkbox($data);
                        ?>
                        Existing Guardian
                    </div>
                </div>
                <div id="shower_box" style="display: none;">
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Guardian User ID</label>

                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <?php
                            $data = array(
                                'type' => 'number',
                                'name' => 'egid',
                                'id' => 'egid',
                                'class' => 'form-control',
                                'placeholder' => 'Enter Guardian ID'
                            );
                            echo form_input($data);
                            ?>
                        </div>
                    </div>
                </div>
                <div id="hider_box">
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Guardian User ID</label>

                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <?php
                            $data = array(
                                'type' => 'text',
                                'name' => 'gid',
                                'id' => 'gid',
                                'readonly' => 'readonly',
                                'class' => 'form-control',
                                'placeholder' => 'Guardian ID'
                            );
                            echo form_input($data);
                            ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Password</label>

                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <?php
                            $data = array(
                                'type' => 'text',
                                'name' => 'gpass',
                                'id' => 'gpass',
                                'readonly' => 'readonly',
                                'class' => 'form-control',
                                'value' => ''
                            );
                            echo form_input($data);
                            ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                    <input id="generateStdGuaId" class="btn btn-success" value="Save now" type="submit">
                    <span></span>
                    <input class="btn btn-default" value="Cancel" type="reset">
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Generate
                    <small> teacher & staff informations</small>
                </h2>
                <?php echo settings_icons(); ?>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br/>
                <?php echo form_open_multipart('', array('class' => 'form-horizontal form-label-left input_mask', 'id' => 'staffInformationForm')); ?>
                <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                    <?php
                    $data = array(
                        'type' => 'text',
                        'name' => 'nationalidnumber',
                        'id' => 'nationalidnumber',
                        'class' => 'form-control',
                        'placeholder' => 'National ID Number'
                    );
                    echo form_input($data);
                    ?>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                    <?php echo form_dropdown('usergroups', $usergroups, '', array('class' => 'form-control', 'id' => 'usergroups')); ?>
                </div>
                <?php
                $random3 = random_string('alnum', 6);
                $data = array(
                    'type' => 'hidden',
                    'id' => 'passwordbox',
                    'value' => $random3
                );
                echo form_input($data);
                ?>
                <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                    <input id="staffInformationBtn" class="btn btn-success" value="Generate" type="button">
                    <span></span>
                    <input class="btn btn-default" value="Cancel" type="reset">
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>

        <div class="x_panel">
            <div class="x_title">
                <h2>Teacher or Staff Informations
                    <small> save it for future use</small>
                </h2>
                <?php echo settings_icons(); ?>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br/>
                <?php echo form_open_multipart('', array('class' => 'form-horizontal form-label-left input_mask', 'id' => 'generateTeaStaForm')); ?>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">User ID</label>

                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <?php
                        $data = array(
                            'type' => 'text',
                            'name' => 'ts_id',
                            'id' => 'ts_id',
                            'number' => 'number',
                            'readonly' => 'readonly',
                            'class' => 'form-control',
                            'placeholder' => 'Teacher or Staff User ID'
                        );
                        echo form_input($data);
                        ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Password</label>

                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <?php
                        $data = array(
                            'type' => 'text',
                            'name' => 'ts_pass',
                            'id' => 'ts_pass',
                            'readonly' => 'readonly',
                            'class' => 'form-control',
                            'value' => ''
                        );
                        echo form_input($data);
                        ?>
                        <?php
                        $data = array(
                            'type' => 'hidden',
                            'name' => 'which_user_group',
                            'id' => 'which_user_group',
                            'value' => ''
                        );
                        echo form_input($data);
                        ?>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                    <input id="generateTeaStaBtn" class="btn btn-success" value="Save now" type="submit">
                    <span></span>
                    <input class="btn btn-default" value="Cancel" type="reset">
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>