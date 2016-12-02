<%--
  Created by IntelliJ IDEA.
  User: Ganga
  Date: 3/15/2016
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/ss.jpg" />
                             </span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Bishal Lama</strong>
                             </span> <span class="text-muted text-xs block">Java Developer <b class="caret"></b></span> </span> </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a href="profile.html">Profile</a></li>
                        <li><a href="contacts.html">Contacts</a></li>
                        <li><a href="mailbox.html">Mailbox</a></li>
                        <li class="divider"></li>
                        <li><a href="login.html">Logout</a></li>
                    </ul>
                </div>
                <div class="logo-element">
                    IN+
                </div>
            </li>
            <li>
                <a href="index-2.html"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span> <span class="fa arrow"></span></a>

            </li>
            <li>
                <a href="#"><i class="fa fa-user"></i> <span class="nav-label">User Detail</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <li><a href="${pageContext.request.contextPath}/eventOrganizer/view">Event Organizer</a></li>
                    <li><a href="${pageContext.request.contextPath}/agent/view">Agent</a></li>
                    <li><a href="${pageContext.request.contextPath}/userDetail/view">User Detail</a></li>
                    <li><a href="${pageContext.request.contextPath}/role/view">Role</a></li>
                    <li><a href="${pageContext.request.contextPath}/userAccess/view">User Access</a></li>

                </ul>
            </li>
           <li>
                <a href="${pageContext.request.contextPath}/eventSummary/view"><i class="fa fa-diamond"></i> <span class="nav-label">Create Event</span></a>
            </li>





       </li>
        </ul>

    </div>
</nav>

