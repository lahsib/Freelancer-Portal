
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- SITE META -->
    <title>Freelancer Portal</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">

    <!-- FAVICONS -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="images/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="images/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="images/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="images/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="images/apple-touch-icon-152x152.png">

    <!-- BOOTSTRAP STYLES -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- TEMPLATE STYLES -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
    <!-- RESPONSIVE STYLES -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/responsive.css">
    <!-- COLORS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/colors.css">

    <!-- CUSTOM STYLES -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/custom.css">



</head>
<body>


    
    <!-- START SITE -->
        <div id="wrapper">


            <header class="header">
                <div class="container-fluid">
                    <nav class="navbar navbar-default yamm">
                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" title="" href="index-2.html"><img src="images/logo.png" alt="" class="img-responsive"></a>
                            </div>
                            <!-- end navbar header -->

                            <div id="navbar" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li><a title="" href="index-2.html">Home</a></li>
                                    <li class="dropdown yamm-half hasmenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Employers <span class="fa fa-angle-down"></span></a>
                                        <ul class="dropdown-menu">

                                        </ul>
                                    </li>
                                    <li class="dropdown yamm-half hasmenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Freelancers <span class="fa fa-angle-down"></span></a>
                                        <ul class="dropdown-menu">

                                        </ul>
                                    </li>
                                    <li class="dropdown yamm-half hasmenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="fa fa-angle-down"></span></a>
                                        <ul class="dropdown-menu">

                                        </ul>
                                    </li>
                                    <li><a title="" href="blog.html">Blog</a></li>
                                    <li><a title="" href="page-contact.html">Support</a></li>
                                </ul>



                                <ul class="nav navbar-nav navbar-right">
                                    <c:choose>
                                    <c:when test="${sessionScope.user != null}">
                                        <li class="dropdown yamm-half membermenu hasmenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="upload/testi_03.png" alt="" class="img-circle"> <span class="caret"></span></a>
                                            <ul class="dropdown-menu start-right">
                                                <li class="dropdown-header">Welcome ${sessionScope.user}</li>

                                                <li><a href="${pageContext.request.contextPath}/freelancer/dashboard"><span class="glyphicon glyphicon-off"></span> User Dashboard</a></li>
                                                <li><a href=""><span class="glyphicon glyphicon-refresh"></span> Change Password</a></li>
                                                <li><a href="${pageContext.request.contextPath}/login/logout"><span class="glyphicon glyphicon-lock"></span> Logout</a></li>
                                            </ul>

                                    </c:when>
                                        <c:otherwise>
                                            <li><a href="${pageContext.request.contextPath}/user/view" role="button" data-toggle="modal" title="">Sign in</a></li>
                                            </c:otherwise>
                                            </c:choose>


                                            </ul>





                               
                                <!-- end dropdown -->
                            </div>
                            <!--/.nav-collapse -->
                        </div>
                        <!--/.container-fluid -->
                    </nav>
                    <!-- end nav -->
                </div>
                <!-- end container -->
            </header>
            <!-- end header -->