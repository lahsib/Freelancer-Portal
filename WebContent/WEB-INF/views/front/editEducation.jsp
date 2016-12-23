<%@include file="../../includes/front/header.jsp"%>
<%@include file="../../includes/front/sidebar.jsp"%>
<c:if test="${sessionScope.user==null}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>

<div class="content col-md-8">
    <div class="post-padding">
        <div class="job-title nocover hidden-sm hidden-xs"><h5>Edit Education</h5></div>
        <form id="submit" class="submit-form" action="${pageContext.request.contextPath}/education/edit" method="post">

            <div class="row">

                <div class="col-md-12 col-sm-12">
                    <label class="control-label">Institute Name<small>Enter institute Name</small></label>
                    <input type="text" name="name" class="form-control" value="${education.name}">
                    <br>
                    <label class="control-label">Degree <small>Degree You Got</small></label>
                    <input type="text" name="degree" class="form-control" value="${education.degree}">
                    <br>
                    <label class="control-label">Start Date<small>Date you joined</small></label>
                    <input type="date" name="startDate" class="form-control" value="${education.startDate}">
                    <br>
                    <label class="control-label">End Date<small>Date you Ended</small></label>
                    <input type="date" name="endDate" class="form-control" value="${education.endDate}">
                    <br>
                    <input type="hidden" name="profileId" value="${education.profileId}">
                    <input type="hidden" name="id" value="${education.id}">
                </div>
            </div><!-- end row -->
            <hr>
            <button class="btn btn-primary">Update</button>
        </form>
    </div><!-- end post-padding -->
</div><!-- end col -->s
</div><!-- end row -->
</div><!-- end container -->
</div>

<%@include file="../../includes/front/footer.jsp"%>