<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <?php echo form_start_divs($page_header, 'Add static webpages'); ?>
        <?php echo form_open_multipart('', array('class' => 'form-horizontal', 'id' => 'addPageForm', 'data-toggle' => 'validator')); ?>
        <?php if (isset($pageinformation->PageId)) { ?>
            <input name="pageId" type="hidden"
                   value="<?php __e((isset($pageinformation->PageId) ? $pageinformation->PageId : 'none')); ?>">
        <?php } ?>
        <div class="form-group">
            <label class="col-lg-3">Page Title</label>

            <div class="col-md-8">
                <?php
                $data = array(
                    'name' => 'page_title',
                    'id' => 'page_title',
                    'class' => 'form-control',
                    'data-minlength' => '2',
                    'required' => 'required',
                    'value' => (isset($pageinformation->PageTitle) ? $pageinformation->PageTitle : '')
                );

                echo form_input($data);
                ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-3">Page Route</label>

            <div class="col-md-8">
                <?php
                $data = array(
                    'name' => 'page_route',
                    'id' => 'page_route',
                    'class' => 'form-control',
                    'data-minlength' => '2',
                    'required' => 'required',
                    'value' => (isset($pageinformation->PageRoute) ? $pageinformation->PageRoute : '')
                );

                echo form_input($data);
                ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">Parent Page</label>

            <div
                class="col-lg-8"> <?php echo form_dropdown('parent_page', (isset($pages) ? $pages : 'None'), set_value('parent_page', (isset($pageinformation->ParentId) ? $pageinformation->ParentId : ''), TRUE), array('class' => 'form-control')); ?> </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">Page Content<br/>
            </label>

            <div class="col-lg-8">
                <?php
                $data = array(
                    'name' => 'page_content',
                    'id' => 'page_content',
                    'class' => 'form-control',
                    'rows' => '5',
                    'cols' => '10',
                    'value' => (isset($pageinformation->Description) ? $pageinformation->Description : '')
                );
                echo form_textarea($data);
                ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">Is Active?</label>

            <div class="col-lg-8">
                <label class="radio-inline">
                    <input type=checkbox
                           name="page_is_active" id="page_active_id" checked="checked"
                           value="1"
                        <?php echo set_checkbox('page_is_active', '1', (isset($pageinformation->isActive) ? $pageinformation->isActive == '1' : '')); ?> />
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3"></label>

            <div class="col-md-8">
                <input name="addPageBtn" id="addPageBtn" class="btn btn-success" value="Save Changes"
                       type="submit">
                <span></span>
                <input class="btn btn-default" value="Cancel" type="reset">
            </div>
        </div>
        <?php echo form_close(); ?>
        <?php echo form_end_divs(); ?>
    </div>
</div>
