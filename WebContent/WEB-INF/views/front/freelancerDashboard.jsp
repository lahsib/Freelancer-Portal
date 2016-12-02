<%@include file="../../includes/front/header.jsp"%>


<div class="section db">
    <div class="container">
        <div class="page-title text-center">
            <div class="heading-holder">
                <h1>Dashboard</h1>
            </div>
            <p class="lead">Hello there, this is your private dashboard.</p>
        </div>
    </div><!-- end container -->
</div><!-- end section -->

<div class="section lb">
    <div class="container">
        <div class="row">
            <div class="sidebar col-md-4">
                <div class="post-padding clearfix">
                    <ul class="nav nav-pills nav-stacked">
                        <li class="active"><a href="freelancer-dashboard.html"><span class="glyphicon glyphicon-off"></span>  My Profile</a></li>
                        <li><a href="freelancer-edit-resume.html"><span class="glyphicon glyphicon-user"></span>  Edit Resume</a></li>
                        <li><a href="freelancer-active-jobs.html"><span class="glyphicon glyphicon-briefcase"></span>  Active Jobs</a></li>
                        <li><a href="freelancer-passed-jobs.html"><span class="glyphicon glyphicon-briefcase"></span>  Passed Jobs</a></li>
                        <li><a href="freelancer-change-password.html"><span class="glyphicon glyphicon-refresh"></span>  Change Password</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-lock"></span>  Logout</a></li>
                    </ul>
                </div><!-- end widget -->
            </div><!-- end col -->

            <div class="content col-md-8">
                <div class="post-padding">
                    <div class="job-title nocover hidden-sm hidden-xs"><h5>My Profile</h5></div>
                    <form id="submit" class="submit-form">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <label class="control-label">Your Photo <small>Please add a photo.</small></label>
                                <div class="fileupload fileupload-new" data-provides="fileupload">
                                    <div class="fileupload-preview thumbnail"></div>
                                    <br>
                                                <span class="btn btn-default btn-file">
                                                    <span class="fileupload-new">Select Photo</span>
                                                    <span class="fileupload-exists">Change</span>
                                                    <input type="file">
                                                </span>
                                    <a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload"><i class="fa fa-close"></i></a>
                                </div>
                            </div>
                        </div><!-- end row -->


                        <hr>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <label class="control-label">Your Name <small>Enter your name</small></label>
                                <input type="text" name="name" class="form-control" placeholder="Jenny Pelt">
                                <br>
                                <label class="control-label">Title <small>Enter a short title (Ex: Web Designer)</small></label>
                                <input type="text" name="title" class="form-control" placeholder="Web Designer">
                                <br>
                                <label class="control-label">Email <small>Enter offical email here</small></label>
                                <input type="email" class="form-control" placeholder="abc@abc.com">
                                <br>
                                <label class="control-label">Address <small>Enter your Address</small></label>
                                <input type="email" class="form-control" placeholder="Kathmandu">
                                </div>
                        </div><!-- end row -->
                        <hr>
                        <button class="btn btn-primary">Update Profile</button>
                    </form>
                </div><!-- end post-padding -->
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</div>

<%@include file="../../includes/front/footer.jsp"%>