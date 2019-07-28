<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php $this->load->view('header'); ?>
<?php $this->load->view('nav'); ?>
<div class="container pb-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header" style="padding: 2px 4px;">
                    <div class="row">
                        <div class="col-md-6">
                            <h5 class="float-left">Edit user information</h5>
                        </div>
                        <div class="col-md-6">
                            <a href="<?php echo site_url('users') ?>" class="btn btn-info btn-sm float-right">Back</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <form action="<?php echo $action;?>" method="post">
                        <div class="form-group row">
                            <label for="username" class="col-sm-2 col-form-label">Username :</label>
                            <div class="col-sm-10">
                                <input type="text" name="username" value="<?php echo isset($users[0]['username']) ? $users[0]['username']: '';?>" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-sm-2 col-form-label">Email :</label>
                            <div class="col-sm-10">
                                <input type="text" name="email" value="<?php echo isset($users[0]['email']) ? $users[0]['email']: '';?>" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-sm-2 col-form-label">About :</label>
                            <div class="col-sm-10">
                                <textarea rows="8" name="about" class="form-control" required><?php echo isset($users[0]['about']) ? $users[0]['about']: '';?></textarea>
                                <input type="hidden" name="id" value="<?php echo isset($users[0]['id']) ? $users[0]['id']: '';?>"/>
                            </div>
                        </div>
                        <p><input type="submit" name="submit" class="btn btn-primary btn-sm" value="<?php echo $button;?>"/></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->load->view('footer'); ?>
