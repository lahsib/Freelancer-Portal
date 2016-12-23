<%@include file="../../includes/front/header.jsp"%>
<%@include file="../../includes/front/sidebar.jsp"%>
<c:if test="${sessionScope.user==null}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>

<div class="content col-md-8">
    <div class="post-padding">
        <div class="job-title nocover hidden-sm hidden-xs"><h5>Add Experiences</h5></div>
        <form id="submit" class="submit-form" action="${pageContext.request.contextPath}/experience/add" method="post">

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <label class="control-label">Company Name<small>Enter company Name</small></label>
                    <input type="text" name="companyName" class="form-control">
                    <br>
                    <label class="control-label">Location <small>Company Location</small></label>
                    <input type="text" name="companyLocation" class="form-control">
                    <br>
                    <label class="control-label">Job Title <small>Enter your position</small></label>
                    <input type="text" name="jobTittle" class="form-control">
                    <br>
                    <label class="control-label">Start Date<small>Date you joined</small></label>
                    <input type="date" name="startDate" class="form-control">
                    <br>
                    <label class="control-label">End Date<small>Date you Ended</small></label>
                    <input type="date" name="endDate" class="form-control">
                    <br>
                    <label class="control-label">Description<small>Enter your job description</small></label>
                    <textarea class="form-control" name="description"></textarea>
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