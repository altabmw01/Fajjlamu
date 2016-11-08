<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <?php $this->load->view('profile/layouts/editormenu'); ?>
        <?php $usergroupname = $this->ion_auth->get_users_groups($modifyuserid)->result(); ?>
        <?php echo form_start_divs($title, 'Change ' . (isset($userinformation->full_name_en) ? $userinformation->full_name_en . '\'s' . ' password here' : '')); ?>
        <form class="form-horizontal" role="form">
            <input type="hidden" value="<?php __e($userid); ?>">

            <div class="form-group">
                <label class="col-md-3">Password</label>

                <div class="col-md-8">
                    <input class="form-control" value="" type="password">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3">Confirm password</label>

                <div class="col-md-8">
                    <input class="form-control" value="" type="password">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3"></label>

                <div class="col-md-8">
                    <input class="btn btn-success" value="Save Changes" type="button">
                    <span></span>
                    <input class="btn btn-default" value="Cancel" type="reset">
                </div>
            </div>
        </form>
        <?php echo form_end_divs(); ?>
    </div>
</div>