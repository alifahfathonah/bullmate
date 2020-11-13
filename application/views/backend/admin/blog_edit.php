<?php
    $blog_data = $this->db->get_where('blogs', array('id' => $blog_id))->row_array();
?>
<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <h4 class="page-title"> <i class="mdi mdi-apple-keyboard-command title_icon"></i> <?php echo $page_title; ?> </h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>
<div class="row">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">

                <h4 class="header-title mb-3"><?php echo get_phrase('blog_edit_form'); ?></h4>

                <form class="required-form" action="<?php echo site_url('admin/blogs/edit').'/'.$blog_id; ?>" enctype="multipart/form-data" method="post">

                    <div id="progressbarwizard">
                        <ul class="nav nav-pills nav-justified form-wizard-header mb-3">
                            <li class="nav-item">

                            </li>

                        </ul>
                        <div class="tab-content b-0 mb-0">
                            <div class="row">
                                <div class="col-12">

                                    <div class="form-group row mb-3">
                                        <label class="col-md-3 col-form-label" for="title">Title<span class="required">*</span></label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" id="title" name="title" value="<?=$blog_data['title']?>" required>
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-md-3 col-form-label" for="blog_image">Blog image<span class="required">*</span></label></label>
                                        <div class="col-md-9">
                                            <div class="d-flex">
                                                  <div class="">
                                                      <img class = " img-thumbnail" src="<?php echo $this->blog_model->get_blog_image_url($blog_data['id']);?>" alt="" style="height: 100px; width: 100px;">
                                                  </div>
                                                <div class="flex-grow-1 mt-1 pl-3">
                                            <div class="input-group">
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="blog_image"  name="blog_image" accept="image/*" onchange="changeTitleOfImageUploader(this)">
                                                    <label class="custom-file-label" for="blog_image">Choose Blog image</label>
                                                </div>
                                            </div>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-md-3 col-form-label" for="short_description">Short Description<span class="required">*</span></label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" id="short_description" name="short_description" value="<?=$blog_data['short_description']?>" required>
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-md-3 col-form-label" for="linkedin_link">Description</label>
                                        <div class="col-md-9">
                                            <textarea name="description" id = "summernote-basic" class="form-control"><?=$blog_data['description']?></textarea>
                                        </div>
                                    </div>
                                   
                                    <div class="mb-3 text-center">
                                        <button type="button" class="btn btn-primary" onclick="checkRequiredFields()" name="button"><?php echo get_phrase('submit'); ?></button>
                                    </div>
                                </div> <!-- end col -->
                            </div> <!-- end row -->



                        </div> <!-- tab-content -->
                    </div> <!-- end #progressbarwizard-->
                </form>

            </div> <!-- end card-body -->
        </div> <!-- end card-->
    </div>
</div>
