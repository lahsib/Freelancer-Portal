<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 3/18/2016
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/includes/header.jsp" %>
<c:if test="${userAccessAction!=null}">
    <div class="modal fade" id="myModal_edit" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <form action="${sectionAction}" method="post">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>

                    <h4 class="modal-title" id="myModalLabel2">

                        <c:out value="${title }"></c:out>
                    </h4>
                </div>

                <div class="modal-body no-scroll">

                    <div class="row">

                        <c:if test="${userAccessAction=='edit'}"> <input type="hidden" name="userAccessId"
                                                                         value="${dataMap.userAccessId}"></c:if>


                        <div class="form-group col-md-6">
                            <label class="control-label">User Name:</label> <input type="text" name="loginUserName" class="form-control"
                                                                                   value="${dataMap.loginUserName}" placeholder="User Name"
                                                                                   required="required"></div>
                        <div class="form-group col-md-6">
                            <label class="control-label">Password:</label> <input type="text" name="password" class="form-control"
                                                                                  value="${dataMap.password}" placeholder="Password"
                                                                                  required="required"></div>

                        <div class="form-group col-md-6">
                            <label class="control-label">User Status:</label>
                            <select name="userStatus" class="form-control" required>
                                <option value="">Select</option>
                                <option value="1" <c:if test="${dataMap.userStatus=='1'}"> selected </c:if> >Active</option>
                                <option value="0" <c:if test="${dataMap.userStatus=='0'}"> selected </c:if>>Inactive</option>

                            </select>

                        </div>

                        <div class="form-group col-md-6">
                            <label class="control-label">UserDetail</label>
                            <select  name="userDetailId" class="form-control" required>
                                <option value="">Select</option>

                                <c:forEach items="${userDetailList}" var="userDetail">

                                    <option value="${userDetail.userDetailId}" <c:if test="${userDetail.userDetailId == dataMap.userDetailId}"> selected </c:if> >${userDetail.name}</option>

                                </c:forEach>

                            </select>
                        </div>
                        <c:choose><c:when
                                test="${userAccessAction=='edit'}">
                            <div class="form-group col-md-6">
                                <label class="control-label">Role</label>
                                <select name="roleId" class="form-control" required disabled>
                                    <option value="">Select</option>
                                    <c:forEach items="${roleModelList}" var="role">
                                        <option value="${role.roleId}" <c:if test="${role.roleId == dataMap.roleId}"> selected </c:if> >${role.roleDesc}</option>

                                    </c:forEach>
                                </select>
                            </div>
                        </c:when>
                            <c:otherwise><div class="form-group col-md-6">
                                <label class="control-label">Role</label>
                                <select name="roleId" class="form-control" required >
                                    <option value="">Select</option>
                                    <c:forEach items="${roleModelList}" var="role">
                                        <option value="${role.roleId}" <c:if test="${role.roleId == dataMap.roleId}"> selected </c:if> >${role.roleDesc}</option>

                                    </c:forEach>
                                </select>
                            </div></c:otherwise></c:choose>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-sm"
                            data-dismiss="modal">Close
                    </button>
                    <button type="submit" class="btn btn-warning btn-sm"><c:choose><c:when
                            test="${userAccessAction=='edit'}">Update</c:when>
                        <c:otherwise>Add</c:otherwise></c:choose></button>
                </div>
                    <%--<button type="submit" class="btn btn-warning btn-sm"><c:choose><c:when test="${action=='edit'}">Update</c:when> <c:otherwise>Add</c:otherwise></c:choose> </button>--%>

            </form>
        </div>
    </div>
    </div>
</c:if>
<div id="wrapper">
    <%@include file="/WEB-INF/includes/leftNavigation.jsp" %>
    <div id="page-wrapper" class="gray-bg">
        <%@include file="/WEB-INF/includes/topNavigation.jsp" %>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-sm-4">
                <h2>${title}</h2>
                <%--<ol class="breadcrumb">
                    <li>
                        <a href="index-2.html">This is</a>
                    </li>
                    <li class="active">
                        <strong>Breadcrumb</strong>
                    </li>
                </ol>--%>
            </div>

            <div class="col-sm-8">
                <div class="title-action" >
                    <a href="add" class="btn btn-primary">


                        <i class="fa fa-plus-square"></i> Add new

                    </a>
                </div>
            </div>
        </div>

        <div class="wrapper wrapper-content">




            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover dataTables">
                                <thead>
                                <tr>
                                    <th>SN</th>
                                    <th>User Name</th>
                                    <th>Password</th>
                                    <th>User Status</th>
                                    <th>User Detail</th>
                                    <th>Role</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${userAccessList}" var="user" varStatus="userCount">


                                    <tr>
                                        <td>${userCount.count}</td>
                                        <td>${user.loginUserName}</td>
                                        <td>${user.password}</td>
                                        <td><c:choose><c:when test="${user.userStatus=='1'}">Active</c:when>
                                            <c:when test="${user.userStatus=='0'}">Inactive</c:when>
                                            </c:choose> </td>

                                        <td>

                                            <c:choose>
                                                <c:when test="${user.userDetailId=='0'}">NA</c:when>
                                                <c:otherwise>${user.userDetail}</c:otherwise>
                                            </c:choose>


                                        </td>

                                        <td><c:choose><c:when test="${user.roleId=='0'}">NA</c:when>
                                            <c:otherwise>${user.roleDesc}</c:otherwise>

                                        </c:choose> </td>

                                        <td><a
                                                style="text-decoration: none; color: inherit"
                                                href="edit/${user.userAccessId}" title="edit this item"> <i
                                                class="fa fa-pencil" style="font-size: 18px"></i>
                                        </a></td>
                                        <td class="center"><a
                                                class=" open btn btn-danger btn-sm "
                                                title="delete this item" data-toggle="modal"
                                                data-target="#myModal_del" data-id="${user.userAccessId}" data-name="userAccessId"> <span
                                                class="glyphicon glyphicon-trash"></span> Delete
                                        </a></td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- ******  end of style included********* -->



<!-- ******script included********* -->

<%@include file="/WEB-INF/includes/script.jsp" %>
<script type="text/javascript">
    $(document).ready(function() {
        $('#eventOrganizer').hide();

        if($('#userType').val()!='A'){
            $('#eventOrganizer').hide();
            $('#eventOrganizer :input').attr("disabled", true);
        }else{
            $('#eventOrganizer').show();
            $('#eventOrganizer :input').attr("disabled", false);
        }

        $('#userType').change(function () {
            if($(this).val()=='A'){
                $('#eventOrganizer').show();
                $('#eventOrganizer :input').attr("disabled", false);
            }else{
                $('#eventOrganizer').hide();
                $('#eventOrganizer :input').attr("disabled", true);
            }

        });

    });
</script>

</body>
</html>

