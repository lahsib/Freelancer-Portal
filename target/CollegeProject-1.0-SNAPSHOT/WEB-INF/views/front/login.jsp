
<%@include file="../../includes/front/header.jsp"%>
<div class="db section">
    <div class="container">
        <div class="page-title text-center">
            <div class="heading-holder">
                <h1>Login & Register</h1>
            </div>
            <p class="lead">Hello there, this is your custom login page tagline message.</p>
        </div>
    </div><!-- end container -->
</div><!-- end section -->

<div class="section wb">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <form class="submit-form customform loginform" action="${pageContext.request.contextPath}/login/check" method="post">
                    <h4>Login Account</h4>


                    <c:if test="${logstatus=='Unsuccess'}">
                        <span style="color:red">${logmsg}</span>
                    </c:if>
                    <br>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" class="form-control" name="userName" placeholder="User name">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <button class="btn btn-custom">Login Account</button>

                </form>
            </div><!-- end col -->

            <div class="col-md-6 col-sm-6 col-xs-12">
                <form class="submit-form customform loginform" action="${pageContext.request.contextPath}/user/add" method="post">
                    <h4>Create New Account</h4>
                    <c:if test="${msg.status=='Unsuccess'}">
                    <span style="color:red">${msg.msg}</span>
                    </c:if>
                    <c:if test="${msg.status=='Success'}">
                        <span style="color:green">${msg.msg}</span>
                    </c:if>
                    <div class="input-group">

                        <select class="form-control" id="type" name="userType" required>
                            <option disabled selected value> ---     I am   --- </option>
                            <c:forEach items="${userType}" var="userType">
                                <option value="${userType.userTypeId}">${userType.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="input-group">

                        <input type="text" name="userName" class="form-control" placeholder="User name">
                    </div>
                    <div class="input-group">

                        <input type="password" name="password" class="form-control" placeholder="Password">
                    </div>
                    <div class="input-group">

                        <input id="name" type="text" name="name" class="form-control" placeholder="">
                    </div>
                    <div class="input-group">

                        <input id="title" type="text" name="title" class="form-control" placeholder="">
                    </div>
                    <div class="input-group">

                        <input type="email" name="email" class="form-control" placeholder="Enter Email">
                    </div>
                    <div class="input-group">

                        <input type="text" name="address" class="form-control" placeholder="Enter Address">
                    </div>


                    <button class="btn btn-custom">Register Account</button>

                </form>
            </div><!-- end col -->

        </div><!-- end row -->
    </div><!-- end container -->
</div><!-- end section -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script>
    $('#type').change(
    function () {
    var type = $('option:selected').val();

    if (this.value == "11") {
        $('#name').attr('placeholder','Enter Full Name');
        $('#title').attr('placeholder','Enter Title [eg. Java developer]');
    } else if (this.value == "12") {
        $('#name').attr('placeholder','Company Name');
        $('#title').attr('placeholder','Company type [eg. Web Agency]');

    }
    });
</script>


<%@include file="../../includes/front/footer.jsp"%>