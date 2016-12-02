
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/includes/header.jsp" %>



<c:if test="${userTypeAction!=null}">
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="${pageContext.request.contextPath}/userType/${userTypeAction}" method="post">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                        </button>

                        <h4 class="modal-title" id="myModalLabel2">

                            Add New User Type
                        </h4>
                    </div>

                    <div class="modal-body no-scroll">

                        <div class="row">

                            <c:if test="${userTypeAction=='edit'}"> <input type="hidden" name="userTypeId"
                                                                             value="${dataMap.userTypeId}"></c:if>

                            <div class="form-group col-md-6">
                                <label class="control-label">Name:</label> <input type="text" name="name" class="form-control"
                                                                                       value="${dataMap.name}" placeholder="User Type"
                                                                                       required="required"></div>
                            <div class="form-group col-md-6">
                                <label class="control-label">Description</label> <textarea class="form-control" name="description" placeholder="User Type Description">${dataMap.description}</textarea></div>


                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary btn-sm"><c:choose><c:when test="${userTypeAction=='edit'}">Update</c:when> <c:otherwise>Add</c:otherwise></c:choose></button>
                        <button type="button" class="btn btn-danger btn-sm"
                                data-dismiss="modal">Close
                        </button>

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
                    <a href="${pageContext.request.contextPath}/userType/add" class="btn btn-primary" id="modal">


                        <i class="fa fa-plus-square"></i> Add new

                    </a>
                    ${userTypeAction}

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
                                    <th>User Type</th>
                                    <th>Description</th>

                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${userTypeList}" var="user" varStatus="userCount">
                                    <tr>
                                    <td>${userCount.count}</td>
                                    <td>${user.name}</td>
                                    <td>${user.description}</td>

                                    <td><a
                                            style="text-decoration: none; color: inherit"
                                            href="${pageContext.request.contextPath}/userType/edit/${user.userTypeId}" title="edit this item"> <i
                                            class="fa fa-pencil" style="font-size: 18px"></i>
                                    </a></td>
                                        <td><a
                                                style="text-decoration: none; color: inherit"
                                                href="${pageContext.request.contextPath}/userType/delete/${user.userTypeId}" title="delete this item"> <i
                                                class="fa fa-trash" style="font-size: 18px"></i>
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
        $('#myModal').modal('show');



    });
</script>

</body>
</html>

