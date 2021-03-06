<%@include file="../../includes/front/header.jsp"%>
<c:if test="${sessionScope.user==null}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>



<div class="parallax section parallax-off" style="background-color:black">
    <div class="container">
        <div class="page-title text-center">
            <img src="http://localhost:8080/img/na.jpg" alt="" class="profile-image img-circle img-responsive">
            <div class="heading-holder">
                <h1>${user.name}</h1>
            </div>
            <p class="lead">${user.title}</p>
            <p class="lead">${user.address}</p>

        </div>
    </div><!-- end container -->
</div><!-- end section -->

<div class="section lb">
    <div class="container">
        <div class="row">
            <div class="content col-md-8">
                <div class="post-padding">
                    <div class="single-content">
                        <h4 class="small-title">About Us</h4>

                    </div>

                </div><!-- end post-padding -->

                <div class="post-padding">
                    <div class="single-content recentworks">
                        <h4 class="small-title">Education <a href="${pageContext.request.contextPath}/education/add" class="readmore">Add New</a></h4>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive job-table">
                                    <table id="mytable" class="table table-bordred table-striped">

                                        <thead>
                                        <tr>
                                            <th>Institute Name</th>
                                            <th>Degree</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                         <%--<c:forEach items="${education}" var="education">--%>
                                            <tr>
                                                <td>
                                                    <h4><br>
                                                        <small></small> <small>End date : </small>
                                                    </h4>
                                                </td>
                                                <td></td>

                                                <td>
                                                    <a href="${pageContext.request.contextPath}/education/edit/1" class="btn btn-success btn-xs "> <i class="glyphicon glyphicon-pencil"></i></a>
                                                    <a href="${pageContext.request.contextPath}/education/delete/1" class="btn btn-danger btn-xs" onclick="return confirm('Are you sure you want to delete this item?');"> <i class="glyphicon glyphicon-trash"></i></a>

                                                </td>
                                            </tr>
                                        <%--</c:forEach>--%>
                                        </tbody>
                                    </table>
                                </div><!-- end table -->
                            </div><!-- end col -->
                        </div>
                    </div><!-- end single-content -->
                </div>

                <div class="post-padding">
                    <div class="single-content reviewwrapper">
                        <h4 class="small-title">Experiences <a href="${pageContext.request.contextPath}/experience/add" class="readmore">Add New</a></h4>
                        <div class="testimonials">
                            <%--<c:forEach items="${experience}" var="experience">--%>
                                <blockquote>

                                    <div class="row">
                                        <div class="col-md-10">
                                            <div class="pull-right">
                                                <a href="${pageContext.request.contextPath}/experience/edit/1" class="btn btn-success btn-xs "><i class="glyphicon glyphicon-pencil"></i> </a>
                                                <a href="${pageContext.request.contextPath}/experience/delete/1" class="btn btn-danger btn-xs " onclick="return confirm('Are you sure you want to delete this item?');"><i class="glyphicon glyphicon-trash"></i> </a>
                                            </div>

                                            <h4><a href="#"></a></h4>
                                            <p><h5></h5></p>

                                            <p class="clients-words"></p>
                                            <span class="clients-name text-primary"></span>
                                        </div>
                                    </div>
                                </blockquote>
                            <%--</c:forEach>--%>

                        </div>
                    </div><!-- end single-content -->
                </div><!-- end post-padding -->
            </div><!-- end col -->

            <div class="sidebar col-md-4">
                <div class="widget clearfix">
                    <div class="customwidget item-price w40">
                        <span class="text-center"></span>

                        <hr>
                        <%--<div class="text-center">
                            <a href="#contactmodal" role="button" data-toggle="modal" class="btn btn-primary btn-lg">Contact Me</a>
                            <a href="#" class="btn btn-primary btn-lg">Download CV</a>
                        </div>--%>
                    </div><!-- end newsletter -->
                </div><!-- end widget -->


                <div class="widget post-padding clearfix">
                    <div class="widget-title">
                        <h4>My Skills <a href="" class="pull-right"><i class="glyphicon glyphicon-plus"></i> </a></h4>
                    </div><!-- end widget-title -->

                    <div class="link-widget">
                        <ul class="check">
                            <%--<c:forEach items="${skill}" var="skill">--%>
                                <li>
                                    <a href="${pageContext.request.contextPath}/skill/edit/1" class="btn btn-success btn-xs pull-right"><i class="glyphicon glyphicon-pencil"></i> </a>
                                    <a href="${pageContext.request.contextPath}/skill/delete/1" class="btn btn-danger btn-xs pull-right" onclick="return confirm('Are you sure you want to delete this item?');"><i class="glyphicon glyphicon-trash"></i> </a>
                                </li>
                            <%--</c:forEach>--%>

                        </ul><!-- end check -->
                    </div><!-- end link-widget -->
                </div>
                <div class="widget post-padding clearfix">
                    <div class="widget-title">
                        <h4>Projects Done <a href="${pageContext.request.contextPath}/freelancerProject/add" class="pull-right"><i class="glyphicon glyphicon-plus"></i> </a></h4>
                    </div><!-- end widget-title -->

                    <div class="link-widget">
                        <%--<c:forEach items="${fproject}" var="fproject">--%>
                            <div class="row">
                                <div class="service-tab">
                                    <div class="pull-right">
                                        <a href="${pageContext.request.contextPath}/freelancerProject/edit/1" class="btn btn-success btn-xs "><i class="glyphicon glyphicon-pencil"></i> </a>
                                        <a href="${pageContext.request.contextPath}/freelancerProject/delete/1" class="btn btn-danger btn-xs " onclick="return confirm('Are you sure you want to delete this item?');"><i class="glyphicon glyphicon-trash"></i> </a>
                                    </div>
                                    <div class="service-title">
                                        <h4><a href="#"></a></h4>
                                    </div>

                                    <div>
                                        <p></p>
                                    </div>
                                    <div class="service-title">
                                        <a href="#"></a><br>
                                        Completed In -
                                    </div>

                                </div>
                            </div>
                            <hr>
                        <%--</c:forEach>--%>

                    </div><!-- end link-widget -->
                </div><!-- end post-padding -->
            </div><!-- end col -->
        </div><!-- end row -->
    </div>
</div><!-- end container -->


<%@include file="../../includes/front/footer.jsp"%>