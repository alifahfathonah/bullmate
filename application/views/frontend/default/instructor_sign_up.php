<section class="category-header-area">
    <div class="container-lg">
        <div class="row">
            <div class="col">
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?php echo site_url('home'); ?>"><i class="fas fa-home"></i></a></li>
                        <li class="breadcrumb-item">
                            <a href="#">
                                <?php echo $page_title; ?>
                            </a>
                        </li>
                    </ol>
                </nav>
                <h1 class="category-name">
                    <?php echo get_phrase('register_yourself'); ?>
                </h1>
            </div>
        </div>
    </div>
</section>

<section class="category-course-list-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-9">
                <div class="user-dashboard-box mt-3">

                    <div class="user-dashboard-content w-100 register-form">
                        <div class="content-title-box" style="background-color: #1452a5;">
                            <div class="title" style="color: #fff;">New Instructor Application</div>
                        </div>
                        <form action="<?php echo site_url('login/register'); ?>" method="post">
                            <input type="hidden" name="type" value="<?= $type ?>">
                            <div class="content-box">
                                <div class="basic-group">
                                    <div class="form-group">
                                        <label for="first_name"> Do you teach as an Individual or Organization? <span class="text-danger">*</span> </label>
                                        <select  class="form-control pb-0" required name="account_type">
                                            <option value="individual">Individual</option>
                                            <option value="organization">Organization</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="full_name"><span class="input-field-icon"><i class="fas fa-user"></i></span> Full Name: <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="full_name" id="full_name" placeholder="Full Name" value="" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="registration-email"><span class="input-field-icon"><i class="fas fa-envelope"></i></span> <?php echo get_phrase('email'); ?>: <span class="text-danger">*</span></label>
                                        <input type="email" class="form-control" name = "email" id="registration-email" placeholder="<?php echo get_phrase('email'); ?>" value="" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="registration-password"><span class="input-field-icon"><i class="fas fa-lock"></i></span> <?php echo get_phrase('password'); ?>: <span class="text-danger">*</span></label>
                                        <input type="password" class="form-control" id="password" name = "password" id="registration-password" placeholder="<?php echo get_phrase('password'); ?>" value="" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="first_name">Do you teach online or Classroom? <span class="text-danger">*</span></label><br>
                                        <input type="radio" name="teach_type" value="online" required="" checked=""> Online
                                        <input type="radio" name="teach_type" value="classroom" required=""> Classroom
                                        <input type="radio" name="teach_type" value="both" required=""> Both
                                    </div>

                                </div>
                                <div class="form-group">
                                    <button type="button" onclick="toggoleForm('form1')" class="btn btn-default">Next</button>
                                </div>
                            </div>
                            <div class="account-have text-center">
                            </div>
                       
                    </div>
                    <div class="user-dashboard-content w-100 register-form-2" style="display: none">
                        <div class="content-title-box" style="background-color: #1452a5;">
                        </div>
                            <div class="content-box">
                                <div class="basic-group">
                                    <div class="form-group">
                                        <label for="orginzation_name"><span class="input-field-icon">What is the name of your organization? <span class="text-danger"></span></label>
                                        <input type="text" class="form-control" name = "orginzation_name" id="" placeholder="" value="" >
                                    </div>
                                    <div class="form-group">
                                        <label for="orginzation_name"><span class="input-field-icon">Please tell us a little bit about yourself: <span class="text-danger">*</span></label>
                                        <textarea type="text" class="form-control" name = "about" id="" placeholder="" value="" required></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="orginzation_name"><span class="input-field-icon">Do you have courses published on any E-learning Platform or a platform you own? If yes, list the sites <span class="text-danger">*</span></label>
                                        <textarea type="text" class="form-control" name = "sites" id="" placeholder="" value="" required></textarea>
                                    </div>

                                    <div class="form-group">
                                        <label for="orginzation_name"><span class="input-field-icon">Can you share with us a video link of you talking on camera? It could be an overview of the courses you teach <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name = "video_link" id="" placeholder="" value="" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="orginzation_name"><span class="input-field-icon">How many courses are you planning to publish on Bullmate? <span class="text-danger">*</span></label>
                                        <input type="number" class="form-control" min="1" name = "publish_cources" id="" placeholder="" value="" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="orginzation_name"><span class="input-field-icon">Do you have any comments or ideas you will like to share with us?</label>
                                        <textarea type="text" class="form-control" name = "comments" id="" placeholder="" value="" ></textarea>
                                    </div>


                                    <div class="form-group">
                                        <?php
                                        $page = "home/privacy_policy";
                                        $terms_page = "/home/instructor_terms_and_condition";
                                        ?>
                                        <input type="checkbox" name="subscribe" id="terms" checked > Yes! I want to receive instructor updates, announcements, email updates, deals and tips.<br>
                                        <input required type="checkbox" name="terms" id="terms" checked>  I agree to the <a href="<?php echo site_url($page); ?>">privacy policy</a> along with <a href="<?php echo site_url($terms_page); ?>">terms & conditions</a> of BullMate
                                    </div>
                                </div>
                            </div>

                            <div class="account-have text-center">
                                <input type="submit" class="btn btn-block" value="<?php echo get_phrase('sign_up'); ?>">
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    function toggoleForm(form_type) {
        if (form_type === 'form1') {
            var first_name = $('#full_name').val();
            var last_name = $('#password').val();
            var email = $('#registration-email').val();
            debugger
            $(".error").remove();

            if (first_name.length < 1) {
                $('#full_name').after('<span class="error text-danger">This field is required</span>');
                return false;
            }
            if (email.length < 1) {
                $('#registration-email').after('<span class="error text-danger">This field is required</span>');
                return false;
            } else {
                if (last_name.length < 8) {
                    $('#password').after('<span class="error text-danger">Password needs to be more than 8 character</span>');
                    return false;
                }
                var regEx = /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/;
                var validEmail = regEx.test(email);
                if (!validEmail) {
                    $('#registration-email').after('<span class="error text-danger">Enter a valid email</span>');
                    return false;
                } else {
                    $('.register-form-2').show();
                    $('.register-form').hide();
                }
            }


        } else if (form_type === 'form2') {
            $('.register-form-2').hide();
            $('.register-form').show();
        }
    }
</script>
