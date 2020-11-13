<?php
$blog_data = $this->db->get_where('blogs', array('id' => $blog_id))->row_array();
?>
<section class="category-header-area">
    <div class="container-lg">
        <div class="row">
            <div class="col">
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?php echo site_url('home'); ?>"><i class="fas fa-home"></i></a></li>
                        <li class="breadcrumb-item">
                            <a href="<?=base_url('blog/detail')?>/<?=$blog_data['id']?>/<?=clean($blog_data['title'])?>">
                                <?php echo $blog_data['title']; ?>
                            </a>
                        </li>
                    </ol>
                </nav>
                <h1 class="category-name">
                    <?php echo $blog_data['title']; ?>
                </h1>
            </div>
        </div>
    </div>
</section>

<section class="category-course-list-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-lg-offset-2 col-md-12 col-md-offset-1" style="padding: 35px;">
                <div class="">
                    <img class = "col-md-12 img-thumbnail" src="<?php echo $this->blog_model->get_blog_image_url($blog_data['id']);?>" alt="">
                </div>
               <?=$blog_data['description'];?>
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