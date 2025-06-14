        <?php 
        $page_id = null;
        $comp_model = new SharedController;
        ?>
        <div  class=" py-5">
            <div class="container">
                <div class="row ">
                    <div class="col-md-8 comp-grid">
                        <div class=""><div class="fadeIn animated mb-4">
                            <div class="text-capitalize">
                                <h2 class="text-capitalize">Selamat Datang di RohisManager</h2>
                            </div>
                        </div>
                        <style>
                            .text-capitalize {
                            text-transform: capitalize;
                            }
                            h2 {
                            color: white; /* Teks berwarna putih */
                            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.6); /* Bayangan teks untuk kontras lebih baik */
                            }
                        </style>
                    </div>
                </div>
                <div class="col-md-4 comp-grid">
                    <div class=""><style>
                        body {
                        background-image: url('assets/images/wallpp.jpg');
                        background-repeat: no-repeat;
                        background-size: cover; /* Pastikan gambar menutupi seluruh area */
                        background-position: center; /* Pusatkan gambar */
                        
                        }
                    </style></div>
                    <?php $this :: display_page_errors(); ?>
                    
                    <div  class="bg-light p-3 animated fadeIn page-content">
                        <div>
                            <h4><i class="fa fa-key"></i> User Login</h4>
                            <hr />
                            <?php 
                            $this :: display_page_errors(); 
                            ?>
                            <form name="loginForm" action="<?php print_link('index/login/?csrf_token=' . Csrf::$token); ?>" class="needs-validation form page-form" method="post">
                                <div class="input-group form-group">
                                    <input placeholder="Username Or Email" name="username"  required="required" class="form-control" type="text"  />
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="form-control-feedback fa fa-user"></i></span>
                                    </div>
                                </div>
                                <div class="input-group form-group">
                                    <input  placeholder="Password" required="required" v-model="user.password" name="password" class="form-control " type="password" />
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="form-control-feedback fa fa-key"></i></span>
                                    </div>
                                </div>
                                <div class="row clearfix mt-3 mb-3">
                                    <div class="col-6">
                                        <label class="">
                                            <input value="true" type="checkbox" name="rememberme" />
                                            Remember Me
                                        </label>
                                    </div>
                                    <div class="col-6">
                                        <a href="<?php print_link('passwordmanager') ?>" class="text-danger"> Reset Password?</a>
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                    <button class="btn btn-primary btn-block btn-md" type="submit"> 
                                        <i class="load-indicator">
                                            <clip-loader :loading="loading" color="#fff" size="20px"></clip-loader> 
                                        </i>
                                        Login <i class="fa fa-key"></i>
                                    </button>
                                </div>
                                <hr />
                                <div class="text-center">
                                    Don't Have an Account? <a href="<?php print_link("index/register") ?>" class="btn btn-success">Register
                                    <i class="fa fa-user"></i></a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    