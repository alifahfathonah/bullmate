<section class="category-header-area">
    <div class="container-lg">
        <div class="row">
            <div class="col">
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?php echo site_url('home'); ?>"><i class="fas fa-home"></i></a></li>
                        <li class="breadcrumb-item">
                            <a href="#">
                                <?php echo $page_title;; ?>
                            </a>
                        </li>
                    </ol>
                </nav>
                <h1 class="category-name">
                    <?php echo $page_title; ?>
                </h1>
            </div>
        </div>
    </div>
</section>

<section class="category-course-list-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1" style="padding: 35px;">
                <?php foreach ($blog_data as $key => $blog) { ?>
                <div class="post-preview">
                    <a href="<?=base_url('blog/detail')?>/<?=$blog->id?>/<?=clean($blog->title)?>">
                        <h2 class="post-title">
                            <?=$blog->title?>
                        </h2>
                        <h3 class="post-subtitle">
                         <?=$blog->short_description?>
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="#">Admin</a> on <?=date("M d", strtotime($blog->date_added));?></p>
                </div>
                <hr>
            <?php } ?>
            </div>
        </div>
    </div>
</section>
<?php
function clean($string) {
   $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.

   return preg_replace('/[^A-Za-z0-9\-]/','', $string); // Removes special chars.
}
?>