<%@include file="../../includes/front/header.jsp"%>
<%@include file="../../includes/front/sidebar.jsp"%>
<c:if test="${sessionScope.user==null}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>

<div class="content col-md-8">
    <div class="post-padding">
        <div class="job-title nocover hidden-sm hidden-xs"><h5>Edit Poject</h5></div>
        <form id="submit" class="submit-form" action="${pageContext.request.contextPath}/freelancerProject/edit" method="post">

                <div class="col-md-12 col-sm-12">
                    <label class="control-label">Project Name<small>Enter Project Name</small></label>
                    <input type="text" name="projectName" value="${fproject.projectName}" class="form-control">
                    <br>
                    <label class="control-label">Project description <small>Enter Project Description</small></label>
                    <textarea name="projectDesc" class="form-control">${fproject.projectDesc}</textarea>
                    <br>
                    <label class="control-label">Project Url<small>Enter Project Url</small></label>
                    <input type="text" name="projectUrl" value="${fproject.projectUrl}" class="form-control">
                    <br>
                    <label class="control-label">Time<small>Project Completed In</small></label>
                    <input type="text" name="time" value="${fproject.time}" class="form-control">
                    <br>

                    <input type="hidden" name="profileId" value="${fproject.profileId}">
                    <input type="hidden" name="id" value="${fproject.id}">
                </div>

            <!-- end row -->
            <hr>
            <button class="btn btn-primary">Update</button>
        </form>
    </div><!-- end post-padding -->
</div><!-- end col -->
</div><!-- end row -->
</div><!-- end container -->
</div>

<%@include file="../../includes/front/footer.jsp"%>