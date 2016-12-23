<%@include file="../../includes/front/header.jsp"%>
<%@include file="../../includes/front/sidebar.jsp"%>
<c:if test="${sessionScope.userTypeId ne '11'}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>

            <div class="content col-md-8">
                <div class="post-padding">
                    ${msg}
                    <hr>
                    <div class="job-title nocover hidden-sm hidden-xs"><h5>More Details</h5></div>
                    <form id="submit" class="submit-form" action="${pageContext.request.contextPath}/freelancer/save" method="post" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <label class="control-label">Your Photo <small>Please add a photo.</small></label>
                                <div class="fileupload fileupload-new" data-provides="fileupload">
                                    <div class="fileupload-preview thumbnail"><img src="http://localhost:8080/img/${detail.image}.jpg"></div>
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
                                <label class="control-label">Hourly Price<small>Enter hourly pay ($30/hr)</small></label>
                                <input type="text" name="price" value="${detail.price}" class="form-control">
                                <br>
                                <label class="control-label">Your Description <small>Enter your description</small></label>
                               <textarea class="form-control" name="description">${detail.description}</textarea>
                                <br>
                                <input type="hidden" name="userId" value="${detail.userId}">
                                <input type="hidden" name="detailId" value="${detail.detailId}">
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