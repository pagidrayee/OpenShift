<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Start Bootstrap - SB Admin Version 2.0 Demo</title>

<!-- Core CSS - Include with every page -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">

<!-- Page-Level Plugin CSS - Tables -->
<link href="css/plugins/dataTables/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- SB Admin CSS - Include with every page -->
<link href="css/sb-admin.css" rel="stylesheet">


<script type="text/javascript" src="js/contacts.js"></script>


    <!-- Page-Level Plugin CSS - Dashboard -->
    <link href="css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <link href="css/plugins/timeline/timeline.css" rel="stylesheet">
    
</head>

<body bgcolor="blue">

	<div id="wrapper">

		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
                  <font class="navbar-brand">
                  <c:out value="${loginUser}"></c:out></font>
				
<!-- 				<a class="navbar-brand" href="index.html">Gowthammuni Pagidirayee</a>
 -->			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i
						class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-messages">
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>Read
									All Messages</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-messages --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">
								<div>
									<p>
										<strong>Task 1</strong> <span class="pull-right text-muted">40%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 2</strong> <span class="pull-right text-muted">20%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
											style="width: 20%">
											<span class="sr-only">20% Complete</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 3</strong> <span class="pull-right text-muted">60%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%">
											<span class="sr-only">60% Complete (warning)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 4</strong> <span class="pull-right text-muted">80%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%">
											<span class="sr-only">80% Complete (danger)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Tasks</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-tasks --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> New Comment <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
										class="pull-right text-muted small">12 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> Message Sent <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> New Task <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Alerts</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
								Logout</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

		</nav>
		<!-- /.navbar-static-top -->

		<nav class="navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="side-menu">
				<li>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <img src="images/Gowtham.jpg" height="30%" width="50%" border="green">      
                  </li>
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>
					<li><a href="showContacts.jsp"><i class="fa fa-dashboard fa-fw"></i>
							Dashboard</a></li>                    <li>
                        <a href="#"><i class="fa fa-tasks fa-fw"></i>Employee information<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                            <a href="javascript:go('viewAllEmpContacts.do');">Employee Data Attendance</a>
                            </li>
                            <li>
                                <a href="javascript:go('viewAllEmprContacts.do');">Employeers Data</a>
                            </li>
                            <li>
                                <a href="javascript:go('viewAllEmpContacts.do');">Employyeer Feed Back</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-money fa-fw"></i>Soled Sarees<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Silik.html">Silik Sarees</a>
                            </li>
                            <li>
                                <a href="Pattu.html">Pattu Sarres</a>
                            </li>
                            <li>
                                <a href="Caton.html">Caton Sarres</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-warning fa-fw"></i>Damage Sarees<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Silik.html">Silik Sarees</a>
                                
                            </li>
                            <li>
                                <a href="Pattu.html">Pattu Sarres</a>
                            </li>
                            <li>
                                <a href="Caton.html">Caton Sarres</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-check"></i>Employee attendance<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Silik.html">Not Implemented</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
							
					<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
							Charts<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="flot.html">Flot Charts</a></li>
							<li><a href="morris.html">Morris.js Charts</a></li>
						</ul> <!-- /.nav-second-level --></li>
						
						<li>
                            <a href="javascript:go('viewAttendence.do');">Attendence</a>
                            </li>
					<!-- <li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
							Tables</a></li> -->
					<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>
							Forms</a></li>
					<li><a href="#"><i class="fa fa-wrench fa-fw"></i> UI
							Elements<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="panels-wells.html">Panels and Wells</a></li>
							<li><a href="buttons.html">Buttons</a></li>
							<li><a href="notifications.html">Notifications</a></li>
							<li><a href="typography.html">Typography</a></li>
							<li><a href="grid.html">Grid</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
							Multi-Level Dropdown<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">Second Level Item</a></li>
							<li><a href="#">Second Level Item</a></li>
							<li><a href="#">Third Level <span class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="#">Third Level Item</a></li>
									<li><a href="#">Third Level Item</a></li>
									<li><a href="#">Third Level Item</a></li>
									<li><a href="#">Third Level Item</a></li>
								</ul> <!-- /.nav-third-level --></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><i class="fa fa-files-o fa-fw"></i> Sample
							Pages<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="blank.html">Blank Page</a></li>
							<li><a href="login.html">Login Page</a></li>
						</ul> <!-- /.nav-second-level --></li>
				</ul>
				<!-- /#side-menu -->
			</div>
			<!-- /.sidebar-collapse -->
		</nav>
		<!-- /.navbar-static-side -->
		<div id="page-wrapper">
		<div class="row">
				<!-- /.col-lg-12 -->
				<div class="col-lg-12">
				
					<form:form action="searchContacts.do" method="post">

                        
						<font color="Green" size="5%">Save New Contact Details</font>
                         &nbsp;&nbsp;
						<input type="button" value="New Contact"
							onclick="javascript:go('saveContact.do');" />

					</form:form>
				</div>
				<!-- /.col-lg-12 -->
			</div>
		
				<br/><br/>	
			<div class="row">

				<div class="col-lg-12">
				<div class="col-lg-12">
					<div class="panel panel-default">
					<div class="panel-heading">Employee Contact Details</div>
				
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example123">
								<thead>
									<tr bgcolor="lightblue">
										<th>Id</th>
										<th>Date</th>
										<th>Name</th>
										<th>Monday</th>
										<th>Tuesday</th>
										<th>Wedday</th>
										<th>Thursday</th>										
										<th>Friday</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>									
								<c:forEach var="contact" items="${SEARCH_CONTACTS_RESULTS_KEY}">
										<tr>
											<td class="odd gradeX"><c:out value="${contact.id}"></c:out></td>
											<td class="odd gradeX"><c:out value="${contact.dob}"></c:out></td>											
											<td class="odd gradeX"><c:out value="${contact.name}"></c:out></td>
											<td class="odd gradeX"><c:out value="${contact.address}"></c:out>
											</td>
											<td class="odd gradeX"><c:out value="${contact.gender}"></c:out>
											</td>
											<td class="odd gradeX"><c:out value="${contact.mobile}"></c:out></td>
											<td class="odd gradeX"><c:out value="${contact.email}"></c:out></td>
											<td class="odd gradeX"><c:out value="${contact.phone}"></c:out></td>											

			
											<td bgcolor="white">
											  <a class="btn btn-primary btn-circle glyphicon glyphicon-pencil"
												href="updateContact.do?id=${contact.id}" data-toggle="modal" data-target="#myModal1"></a>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                 <div class="modal-dialog">
                                    <div class="modal-content">
                                        
                                        <div class="modal-body">
                                        </div>
                                        
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            </td>
											<%-- <a class="btn btn-primary btn-circle glyphicon glyphicon-pencil"
												href="updateContact.do?id=${contact.id}"></a></td>
												 --%>
												
											<td bgcolor="white">
                            <button class="btn btn-warning btn-circle fa fa-times" data-toggle="modal" data-target="#myModal">
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                               <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">Delete</h4>
                                        </div>
                                        
                                        <div class="modal-body">
                                        Are sure to delete ?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            
                                            <button type="button" class="btn btn-danger"
                                               onclick="javascript:deleteContact('deleteContact.do?id=${contact.id}');">Delete</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                        <%-- 
											<button type="button" class="btn btn-warning btn-circle fa fa-times"
												onclick="javascript:deleteContact('deleteContact.do?id=${contact.id}');" >
												</button> --%>
											</td>
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
			<div class="row"></div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	 
    <!-- Page-Level Plugin Scripts - Dashboard -->
    <script src="js/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="js/plugins/morris/morris.js"></script>

    <!-- Page-Level Demo Scripts - Dashboard - Use for reference -->
    <script src="js/demo/dashboard-demo.js"></script>
    
	<!-- Core Scripts - Include with every page -->
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>

	<!-- Page-Level Plugin Scripts - Tables -->
	<script src="js/plugins/dataTables/jquery.dataTables.js"></script>
	<script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

	<!-- SB Admin Scripts - Include with every page -->
	<script src="js/sb-admin.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
    $(document).ready(function() {
        $('#dataTables-example123').dataTable();
    });
    </script>

    <!-- Page-Level Demo Scripts - Dashboard - Use for reference -->
    <script src="js/demo/dashboard-demo.js"></script>
    
</body>

</html>
