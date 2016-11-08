<div class="inWrap">
    <div class="ticker">
        <span>সংবাদঃ </span>

        <div class="caroufredsel_wrapper">
            <ul>
                <?php foreach((array) $scroller as $scroll) { ?>
                    <li><a href="<?php __menu('post/' . $scroll->PostRoute . '?post_id='. $scroll->PostId); ?>"><?php __e($scroll->Title); ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>
