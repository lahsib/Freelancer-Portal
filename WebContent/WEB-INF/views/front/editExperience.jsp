<%@include file="../../includes/front/header.jsp"%>
<%@include file="../../includes/front/sidebar.jsp"%>
<c:if test="${sessionScope.user==null}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>

<div class="content col-md-8">
    <div class="post-padding">
        <div class="job-title nocover hidden-sm hidden-xs"><h5>Edit Experiences</h5></div>
        <form id="submit" class="submit-form" action="${pageContext.request.contextPath}/experience/edit" method="post">

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <label class="control-label">Company Name<small>Enter company Name</small></label>
                    <input type="text" name="companyName" class="form-control" value="${experience.companyName}">
                    <br>
                    <label class="control-label">Location <small>Company Location</small></label>
                    <input type="text" name="companyLocation" class="form-control" value="${experience.companyLocation}">
                    <br>
                    <label class="control-label">Job Title <small>Enter your position</small></label>
                    <input type="text" name="jobTittle" class="form-control" value="${experience.jobTittle}">
                    <br>
                    <label class="control-label">Start Date<small>Date you joined</small></label>
                    <input type="date" name="startDate" class="form-control" value="${experience.startDate}">
                    <br>
                    <label class="control-label">End Date<small>Date you Ended</small></label>
                    <input type="date" name="endDate" class="form-control" value="${experience.endDate}">
                    <br>
                    <label class="control-label">Description<small>Enter your job description</small></label>
                    <textarea class="form-control" name="description">${experience.description}</textarea>
                    <br>
                    <input type="text" name="profileId" value="${experience.profileId}">
                    <input type="text" name="id" value="${experience.id}">
                </div>
            </div><!-- end row -->
            <hr>
            <button class="btn btn-primary">Update</button>
        </form>
    </div><!-- end post-padding -->
</div><!-- end col -->
</div><!-- end row -->
</div><!-- end container -->
</div>

<%@include file="../../includes/front/footer.jsp"%>