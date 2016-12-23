<%@include file="../../includes/front/header.jsp"%>
<%@include file="../../includes/front/sidebar.jsp"%>
<c:if test="${sessionScope.user==null}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>

<div class="content col-md-8">
                <div class="post-padding">
                    <div class="job-title nocover hidden-sm hidden-xs"><h5>My Profile</h5></div>
                    <form id="submit" class="submit-form" action="${pageContext.request.contextPath}/freelancer/updateUser" method="post">
                        ${msg}
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
                               <input type="hidden" name="id" value="${user.id}">
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