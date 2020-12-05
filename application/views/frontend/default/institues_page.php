<section class="category-header-area">
    <div class="container-lg">
        <div class="row">
            <div class="col">
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?php echo site_url('home'); ?>"><i class="fas fa-home"></i></a></li>
                        <li class="breadcrumb-item active">
                            <?php echo get_phrase('Institues'); ?>
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>
<section class="category-course-list-area mt-4">
<div class="container">
<div class="row">

<div class="col-md-12 ">
    <div class="category-course-list">
        <div class="row">
            <?php foreach($institues as $institue){ ?>
            <div class="col-md-3 col-lg-3">
                <div class="course-box-wrap">
                    <a href="<?=site_url("home/search?iid=");$institue['id']?>">
                        <div class="course-box">
                            <div class="course-image">
                                <img src="<?php echo $this->user_model->get_user_image_url($institue['id']);?>" alt="" class="img-fluid">
                            </div>
                            <div class="course-details">
                                <h5 class="title"><?=$institue['first_name']?> <?=$institue['last_name']?></h5>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <?php } ?>
            </div>
        </div>
    </div>
    <nav>
    </nav>
</div>
</div>
</div>
    </section>