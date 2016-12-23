<%@include file="../../includes/front/header.jsp"%>
<%@include file="../../includes/front/sidebar.jsp"%>
<c:if test="${sessionScope.user==null}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>

<div class="content col-md-8">
    <div class="post-padding">
        <div class="job-title nocover hidden-sm hidden-xs"><h5>Edit Skill</h5></div>
        <form id="submit" class="submit-form" action="${pageContext.request.contextPath}/skill/edit" method="post">
            ${msg}
            <hr>
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <label class="control-label">Skill<small>Enter Skill Name</small></label>
                    <input type="text" name="name" value="${dataMap.name}" class="form-control">
                    <br>

                    <input type="text" name="profileId" value="${dataMap.profileId}">
                    <input type="text" name="id" value="${dataMap.id}">
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