<div class="row">
    <div class="col-md-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Posts
                    <small>Latest News, Notice, Download, Syllabus, Blog Posts, Video Gallery, Photo Gallery,
                        Slideshow
                    </small>
                </h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" data-toggle="dropdown" class="dropdown-toggle"
                           href="#"><i class="fa fa-wrench"></i></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="#">Settings 1</a></li>
                            <li><a href="#">Settings 2</a></li>
                        </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">

                <div class="row">

                    <p>Posts</p>

                    <?php foreach ((array)$posts as $post) { ?>
                        <div class="col-md-55">
                            <div class="thumbnail extraheight">
                                <div class="image view view-first">
                                    <?php if (!empty($post['MediaWidth'])) { ?>
                                        <img alt="image"
                                             src="<?php __e((isset($post['MediaFileName']) ? base_url() . 'uploads/posts/' . $post['MediaFileName'] : '')); ?>"
                                             style="width: 100%; display: block;">
                                    <?php } else { ?>
                                        <img alt="image"
                                             src="<?php echo base_url(); ?>footprints/images/logo.png"
                                             style="width: 100%; display: block;">
                                    <?php } ?>
                                    <div class="mask">
                                        <p><?php __e((isset($post['Title']) ? $post['Title'] : '')); ?></p>

                                        <div class="tools tools-bottom">
                                            <a href="<?php __e((isset($post['PostId']) ? $post['PostId'] : '')); ?>"
                                               target="_blank"><i class="fa fa-pencil"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="caption">
                                    <?php __e((isset($post['CategoryName']) ? $post['CategoryName'] : '')); ?>, File Link:<br/>
                                    <strong><?php __e((isset($post['MediaFileName']) ? base_url() . 'uploads/posts/' . $post['MediaFileName'] : '')); ?></strong>
                                </div>
                            </div>
                        </div>

                    <?php } ?>
                    <?php //owndebugger($posts); ?>

                </div>

            </div>
        </div>
    </div>
</div>
<!--</div>-->
