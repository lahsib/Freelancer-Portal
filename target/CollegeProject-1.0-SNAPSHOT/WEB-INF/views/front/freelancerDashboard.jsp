<%@include file="../../includes/front/header.jsp"%>
<%@include file="../../includes/front/sidebar.jsp"%>

<div class="content col-md-8">
                <div class="post-padding">
                    <div class="job-title nocover hidden-sm hidden-xs"><h5>My Profile</h5></div>
                    <form id="submit" class="submit-form" action="${pageContext.request.contextPath}/freelancer/save" method="post" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <label class="control-label">Your Photo <small>Please add a photo.</small></label>
                                <div class="fileupload fileupload-new" data-provides="fileupload">
                                    <div class="fileupload-preview thumbnail"></div>
                                    <br>
                                                <span class="btn btn-default btn-file">
                                                    <span class="fileupload-new">Select Photo</span>
                                                    <span class="fileupload-exists">Change</span>
                                                    <input type="file" name="file">
                                                </span>
                                    <a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload"><i class="fa fa-close"></i></a>
                                </div>
                            </div>
                        </div><!-- end row -->


                        <hr>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <label class="control-label">Your Name <small>Enter your full name</small></label>
                                <input type="text" name="name" class="form-control" value="${user.name}">
                                <br>
                                <label class="control-label">Title <small>Enter a short title (Ex: Web Designer)</small></label>
                                <input type="text" name="title" class="form-control" value="${user.title}">
                                <br>
                                <label class="control-label">Email <small>Enter email here</small></label>
                                <input type="email" name="email" class="form-control" value="${user.email}">
                                <br>
                                <label class="control-label">Address <small>Enter your Address</small></label>
                                <input type="text" name="address" class="form-control" value="${user.address}">
                                <br>
                               <input type="text" name="id" value="${user.id}">
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