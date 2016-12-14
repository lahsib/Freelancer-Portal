<%@include file="../../includes/front/header.jsp"%>
<c:if test="${sessionScope.user==null}">
    <jsp:forward page="../../views/front/login.jsp"/>
</c:if>
<div class="modal fade in" id="educationModal" tabindex="-1" role="dialog" style="display: block; padding-left: 0px;">
    <div class="modal-dialog">
        <div class="modal-content">
            <button type="button" class="btn btn-danger" data-dismiss="modal"><span aria-hidden="true">×</span></button>
            <div class="modal-body">
                <div class="widget clearfix">
                    <div class="post-padding item-price">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="content-title">
                                    <h4><i class="fa fa-lock"></i> Login Account</h4>
                                </div><!-- end widget-title -->

                                <form id="submit" class="submit-form">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12">
                                            <input type="text" class="form-control" placeholder="Username or Email">
                                            <input type="password" class="form-control" placeholder="*******">
                                            <button class="btn btn-primary">Login</button>
                                        </div>
                                    </div><!-- end row -->
                                </form>
                            </div><!-- end col -->

                            <div class="col-md-6">
                                <div class="content-title">
                                    <h4>No have account?</h4>
                                </div><!-- end widget-title -->

                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the</p>
                                <a href="#" class="btn btn-custom">Register Account</a>
                            </div><!-- end col -->
                        </div><!-- end row -->
                    </div><!-- end newsletter -->
                </div><!-- end post-padding -->
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<div class="parallax section parallax-off" style="background-color:black">
    <div class="container">
        <div class="page-title text-center">
            <img src="http://localhost:8080/img/bxal.jpg" alt="" class="profile-image img-circle img-responsive">
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
                        <h4 class="small-title">Why Choose Me?</h4>
                        ${detail.description}
                    </div>

                </div><!-- end post-padding -->

                <div class="post-padding">
                    <div class="single-content recentworks">
                        <h4 class="small-title">Education<a href="#" class="readmore" id="addStudent">Add New</a></h4>
                        <div id="row">
                            <table class="table-bordered">
                                <th>Institude Name</th>
                                <th>Degree</th>

                            </table>
                        </div>
                    </div><!-- end single-content -->
                </div>

                <div class="post-padding">
                    <div class="single-content recentworks">
                        <h4 class="small-title">Recent Completed Works <a href="#" class="readmore">View All</a></h4>
                        <div class="row">
                            <div class="col-sm-6 col-xs-12">
                                <div class="service-tab">
                                    <div class="post-media">
                                        <a href="#"><img src="upload/job_01.jpg" alt="" class="img-responsive"></a>
                                    </div>
                                    <div class="service-title">
                                        <h4><a href="#">Elements Envato - Redesign</a></h4>
                                        <small><a href="#">View Project</a></small>
                                    </div>
                                </div><!-- end service-tab -->
                            </div><!-- end col -->

                            <div class="col-sm-6 col-xs-12">
                                <div class="service-tab">
                                    <div class="post-media">
                                        <a href="#"><img src="upload/job_02.jpg" alt="" class="img-responsive"></a>
                                    </div>
                                    <div class="service-title">
                                        <h4><a href="#">EduPress - HTML to WordPress</a></h4>
                                        <small><a href="#">View Project</a></small>
                                    </div>
                                </div><!-- end service-tab -->
                            </div><!-- end col -->
                        </div><!-- end row -->
                    </div><!-- end single-content -->
                </div><!-- end post-padding -->

                <div class="post-padding">
                    <div class="single-content reviewwrapper">
                        <h4 class="small-title">Recent Reviews <a href="#" class="readmore">View All Feedbacks</a></h4>
                        <div class="testimonials">
                            <blockquote>
                                <div class="row">
                                    <div class="col-md-2">
                                        <a href="#"><img src="upload/job_02.jpg" alt="" class="img-responsive"></a>
                                    </div>
                                    <div class="col-md-10">
                                        <h4><a href="#">PHP Developer - Wordpress Error</a></h4>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <p class="clients-words">“Great freelancer. Fixed two complicated Wordpress issues in under 45 minutes as we had a deadline to meet. Very impressed and will use again. Highly recommended.”</p>
                                        <span class="clients-name text-primary">-wesleyberry 22.05.2016</span>
                                    </div>
                                </div>
                            </blockquote>

                            <blockquote>
                                <div class="row">
                                    <div class="col-md-2">
                                        <a href="#"><img src="upload/job_03.jpg" alt="" class="img-responsive"></a>
                                    </div>
                                    <div class="col-md-10">
                                        <h4><a href="#">Create a minimalist logo for me</a></h4>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <p class="clients-words">“Wonderful response from the team members here. Will definitely rehire”</p>
                                        <span class="clients-name text-primary">-martin 15.05.2016</span>
                                    </div>
                                </div>
                            </blockquote>

                            <blockquote>
                                <div class="row">
                                    <div class="col-md-2">
                                        <a href="#"><img src="upload/job_05.jpg" alt="" class="img-responsive"></a>
                                    </div>
                                    <div class="col-md-10">
                                        <h4><a href="#">Fix my WHMCS problem! Max Budge $20!!!</a></h4>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <p class="clients-words">“Thank you for the sense of urgency and taking care of most problems. Excellent work! Thank you very much! Would recommend."</p>
                                        <span class="clients-name text-primary">-Emanuella 22.04.2016</span>
                                    </div>
                                </div>
                            </blockquote>

                            <hr>

                            <p class="lead">If you want to review for this freelancer, please make sure you are <a href="#">Login your account</a> or order any <a href="#">service</a> from this freelancer.</p>

                        </div>
                    </div><!-- end single-content -->
                </div><!-- end post-padding -->
            </div><!-- end col -->

            <div class="sidebar col-md-4">
                <div class="widget clearfix">
                    <div class="customwidget item-price w40">
                        <span class="text-center">$${detail.price} / hr</span>

                        <hr>
                        <%--<div class="text-center">
                            <a href="#contactmodal" role="button" data-toggle="modal" class="btn btn-primary btn-lg">Contact Me</a>
                            <a href="#" class="btn btn-primary btn-lg">Download CV</a>
                        </div>--%>
                    </div><!-- end newsletter -->
                </div><!-- end widget -->

                <div class="widget post-padding clearfix">
                    <div class="widget-title">
                        <h4>Education</h4>
                    </div><!-- end widget-title -->

                    <div class="link-widget">
                        <ul class="check">
                            <li>Panjab University, India 2005 - 2010</li>
                            <li>SEO Teacher INC. India 2010 - 2013</li>
                        </ul><!-- end check -->
                    </div><!-- end link-widget -->

                </div><!-- end post-padding -->

                <div class="widget post-padding clearfix">
                    <div class="widget-title">
                        <h4>Experience</h4>
                    </div><!-- end widget-title -->

                    <div class="link-widget">
                        <ul class="check">
                            <li>Leopedia Web Solutions - 2009 - 2011 </li>
                            <li>WP Service U.S - 2011 - 2015 </li>
                            <li>PSD Convert HTML - Mar 2015 </li>
                        </ul><!-- end check -->
                    </div><!-- end link-widget -->
                </div><!-- end post-padding -->

                <div class="widget post-padding clearfix">
                    <div class="widget-title">
                        <h4>My Main Skils</h4>
                    </div><!-- end widget-title -->

                    <div class="link-widget">
                        <ul class="check">
                            <li><a href="#">WordPress</a></li>
                            <li><a href="#">HTML5</a></li>
                            <li><a href="#">Bootstrap</a></li>
                            <li><a href="#">PSD to HTML</a></li>
                            <li><a href="#">Material Design</a></li>
                            <li><a href="#">CSS</a></li>
                            <li><a href="#">SEO</a></li>
                        </ul><!-- end check -->
                    </div><!-- end link-widget -->
                </div><!-- end post-padding -->
            </div><!-- end col -->
        </div><!-- end row -->
    </div>
    </div><!-- end container -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>

<%@include file="../../includes/front/footer.jsp"%>