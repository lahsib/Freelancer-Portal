<%--
  Created by IntelliJ IDEA.
  User: Ganga
  Date: 2/16/2016
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/includes/header.jsp" %>
<c:if test="${userDetailAction!=null}">
    <div class="modal fade" id="myModal_edit" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="${userDetailAction}" method="post">
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

                            <c:if test="${userDetailAction=='edit'}"> <input type="hidden" name="userDetailId"
                                                                             value="${dataMap.userDetailId}"></c:if>

                            <div class="form-group col-md-6">
                                <label class="control-label">User Type:</label>
                                <select name="type" id="userType" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="S" <c:if test="${dataMap.type=='S'}"> selected </c:if> >Administrator</option>
                                    <option value="O" <c:if test="${dataMap.type=='O'}"> selected </c:if>>Organizer</option>
                                    <option value="A" <c:if test="${dataMap.type=='A'}"> selected </c:if>>Agent</option>
                                </select>

                            </div>

                            <div class="form-group col-md-6" id="eventOrganizer">
                                <label class="control-label">Event Organizer:</label>
                                <select name="eventOrganizerId" class="form-control" required>
                                    <option value="">Select</option>
                                    <c:forEach items="${eventOrganizerList}" var="eventOrganizer">
                                        <option value="${eventOrganizer.userDetailId}" <c:if test="${eventOrganizer.userDetailId == dataMap.eventOrganizerId}"> selected </c:if> >${eventOrganizer.name}</option>

                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="control-label">Name:</label> <input type="text" name="name" class="form-control"
                                                                                  value="${dataMap.name}" placeholder="Name"
                                                                                  required="required"></div>
                            <div class="form-group col-md-6">
                                <label class="control-label">Address:</label> <input type="text" name="address" class="form-control"
                                                                                     value="${dataMap.address}" placeholder="Address"
                                                                                     required="required"></div>
                            <div class="form-group col-md-6">
                                <label class="control-label">Phone Number:</label> <input type="text" name="phoneNumber" class="form-control"
                                                                                          value="${dataMap.phoneNumber}" placeholder="Phone Number"
                                                                                          required></div>
                            <div class="form-group col-md-6">
                                <label class="control-label">Email Id:</label> <input type="email" name="emailId" class="form-control"
                                                                                      value="${dataMap.emailId}" placeholder="Email Id"
                                                                                      required></div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-sm"
                                data-dismiss="modal">Close
                        </button>
                        <button type="submit" class="btn btn-warning btn-sm"><c:choose><c:when
                                test="${userDetailAction=='edit'}">Update</c:when>
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
                                    <th>Name</th>
                                    <th>Address</th>
                                    <th>Email Id</th>
                                    <th>Phone Number</th>
                                    <th>Type</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${userDetailList}" var="user" varStatus="userCount">
                                    <tr>
                                        <td>${userCount.count}</td>
                                        <td>${user.name}</td>
                                        <td>${user.address}</td>
                                        <td>${user.emailId}</td>
                                        <td>${user.phoneNumber}</td>
                                        <td><c:choose><c:when test="${user.type=='O'}">Organizer</c:when>
                                        <c:when test="${user.type=='A'}">Agent</c:when>
                                        <c:when test="${user.type=='S'}">Administrator</c:when></c:choose> </td>
                                        <td><a
                                                style="text-decoration: none; color: inherit"
                                                href="edit/${user.userDetailId}" title="edit this item"> <i
                                                class="fa fa-pencil" style="font-size: 18px"></i>
                                        </a></td>
                                        <td class="center"><a
                                                class=" open btn btn-danger btn-sm "
                                                title="delete this item" data-toggle="modal"
                                                data-target="#myModal_del" data-id="${user.userDetailId}" data-name="userDetailId"> <span
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

