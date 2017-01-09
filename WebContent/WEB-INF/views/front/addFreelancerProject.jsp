<%@include file="../../includes/front/header.jsp"%>
<%@include file="../../includes/front/sidebar.jsp"%>
<c:if test="${sessionScope.user==null}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>

<div class="content col-md-8">
    <div class="post-padding">
        <div class="job-title nocover hidden-sm hidden-xs"><h5>Add Poject</h5></div>
        <form id="submit" class="submit-form" action="${pageContext.request.contextPath}/freelancerProject/add" method="post">

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <label class="control-label">Project Name<small>Enter Project Name</small></label>
                    <input type="text" name="projectName" class="form-control">
                    <br>
                    <label class="control-label">Project description <small>Enter Project Description</small></label>
                    <textarea name="projectDesc" class="form-control"></textarea>
                    <br>
                    <label class="control-label">Project Url<small>Enter Project Url</small></label>
                    <input type="text" name="projectUrl" class="form-control" placeholder="Eg. www.abc.com">
                    <br>
                    <label class="control-label">Time<small>Project Completed In</small></label>
                    <input type="text" name="time" class="form-control" placeholder="Eg. 1 year / 1 months">
                    <br>

                    <input type="text" name="profileId" value="${sessionScope.userId}">
                </div>
            </div><!-- end row -->
            <hr>
            <button class="btn btn-primary">Save</button>
        </form>
    </div><!-- end post-padding -->
</div><!-- end col -->
</div><!-- end row -->
</div><!-- end container -->
</div>

<%@include file="../../includes/front/footer.jsp"%>