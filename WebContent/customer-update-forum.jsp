<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ include file="navbar-customer.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Venus Pet System</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="style.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

      

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

              

                <!-- Begin Page Content -->
                <div class="container-fluid">

                     <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col mb-4">

                            <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Update Forum</h6>
                                </div>
                                <div class="card-body">
                                     <form class="user" action="updateForumCustomerController" method="post">
                                <div class="form-group">
                                <div class="form-group">
                                    <input type="hidden" class="form-control form-control-user" name="custID" id="custID" placeholder="Customer's Name"  value="<%= session.getAttribute("custID") %>" />
                                </div>
                                    <input type="text" class="form-control form-control-user" name="forumID" id="forumID" placeholder="Forum ID" value="<c:out value="${forum.forumID}"/>" >
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="forumTitle" id="forumTitle" placeholder="Forum Title" value="<c:out value="${forum.forumTitle}"/>" >
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="forumDescription" id="forumDescription" placeholder="Forum Description" value="<c:out value="${forum.forumDescription}"/>" >
                                </div>
                                <div class="form-group">
                                    <input type="hidden" class="form-control form-control-user" name="staffID" id="staffID" placeholder="Staff ID" value="1" >
                                </div>
                                <input type="submit" value="Update" class="btn btn-primary btn-user btn-block" onclick="ConfirmUpdate()"><br>
                                <a href="customer-forum.jsp">
                                <input type="submit" value="Cancel" class="btn btn-primary btn-user btn-block">
                                </a>
                            </form>
                                </div>
                            </div>

                            
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

           

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <script src="js.js"></script>
<script>
    function ConfirmUpdate()
    {
      var x = confirm("Are you sure you want to update?");
      if (x)
          return true;
      else
        return false;
    }

    </script>
</body>
</html>