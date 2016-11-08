<marquee onMouseOver="this.setAttribute('scrollamount', 0, 0);" OnMouseOut="this.setAttribute('scrollamount', 6, 0);" behavior="alternate">
    <?php foreach((array) $scroller as $scroll) { ?>
      <a class="colr" href="<?php __menu('post/' . $scroll->PostRoute . '?post_id='. $scroll->PostId); ?>"><?php __e($scroll->Title); ?></a>
     <?php } ?>
</marquee>
