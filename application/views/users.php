<?php $this->load->view('header'); ?>
<?php $this->load->view('nav'); ?>
    <div class="container pb-3">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header" style="padding: 2px 4px;">
                        <div class="row">
                            <div class="col-md-6">
                                <h5 class="float-left">Codeigniter Crud Operation</h5>
                            </div>
                            <div class="col-md-6">
                                <a href="<?php echo site_url('users/create') ?>" class="btn btn-info btn-sm float-right">Add User Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <?php $i=1 ?>
                        <?php foreach($users as $user):?>
                            <div class="card">
                                <div class="card-header" style="padding: 2px 4px;">
                                    <strong>User Information <?php echo $i; ?></strong>
                                </div>
                                <?php $i++ ?>
                                <div class="card-body">
                                    <h2>Name : <?php echo $user['username'];?></h2>
                                    <p><strong>Email :</strong> <?php echo $user['email']; ?></p>
                                    <p><strong>Details :</strong> <?php echo $user['about']; ?></p>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <a href="<?php echo site_url('users/edit') . '/' . $user['id']; ?>" class="btn btn-primary btn-sm">Edit</a>
                                        </div>
                                        <div class="col-md-6">
                                            <a href="<?php echo site_url('users/delete_user') . '/' . $user['id']; ?>" class="btn btn-danger btn-sm float-right" onclick="return confirm('Are you sure to Delete!')">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div><br>
                        <?php endforeach;?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $this->load->view('footer'); ?>