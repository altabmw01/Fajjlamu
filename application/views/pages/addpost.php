<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <?php echo form_start_divs($title, 'Different type of posts from one place'); ?>
        <?php echo form_open_multipart('', array('class' => 'form-horizontal', 'id' => 'postUploadForm')); ?>
        <?php
        $data = array(
            'type' => 'hidden',
            'name' => 'userid',
            'value' => (isset($userid) ? $userid : 'none')
        );
        echo form_input($data);
        ?>
        <div class="form-group">
            <label class="col-md-3">Title</label>

            <div class="col-md-8">
                <?php
                $data = array(
                    'type' => 'text',
                    'name' => 'posttitle',
                    'required' => 'required',
                    'id' => 'posttitle',
                    'class' => 'form-control',
                    'value' => ''
                );
                echo form_input($data);
                ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">Route</label>

            <div class="col-md-8">
                <?php
                $data = array(
                    'type' => 'text',
                    'name' => 'postroute',
                    'required' => 'required',
                    'id' => 'postroute',
                    'class' => 'form-control',
                    'value' => ''
                );
                echo form_input($data);
                ?>
                <?php __smallnote('All the text in english without space'); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">Category</label>

            <div class="col-md-8">
                <?php
                echo form_dropdown('postcategory', $postcategory, '', array('class' => 'form-control'));
                ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">Description</label>

            <div class="col-md-8">
                <?php
                $data = array(
                    'type' => 'text',
                    'name' => 'postcontent',
                    'id' => 'wysiwyg',
                    'class' => 'form-control',
                    'value' => ''
                );
                echo form_textarea($data);
                ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">Select File</label>

            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-7">
                        <input type="file" name="upload_media" size="20"/>

                        <div class="tenpxm"></div>
                        <?php
                        $data = array(
                            'type' => 'hidden',
                            'name' => 'upload_media',
                            'id' => 'initiateUploadMedia',
                            'class' => 'form-control',
                            'value' => ''
                        );
                        echo form_input($data);
                        ?>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                For now: gif, jpg, jpeg, png, pdf, doc, xls, txt, docx, xlsx are allowed. Recommended (JPEG, Excel, Doc
                and Text file).
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-8">
                <?php __submitbtn('postUploadBtn'); ?>
                <span></span>
                <?php __resetbtn(); ?>
            </div>
        </div>

        <?php echo form_end_divs(); ?>
    </div>
</div>