<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
	<script type="text/javascript" src="js/contacts.js"></script>
	<title><spring:message code="App.Title"></spring:message> </title>
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
<body style="font-family: Arial; font-size: smaller;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Edit Contact Details</h4>
			</div>
			<div class="modal-body">
				<table>
					<tr valign="top" align="center">
						<td align="center"><form:form action="updateContact.do"
								method="post" commandName="editContact">
								<table>
									<tr>
										<td width="50" align="right">Id&nbsp;&nbsp;</td>
										<td width="90"><form:input path="id" readonly="true" /></td>
										<td align="left"><form:errors path="id"
												cssStyle="color:red"></form:errors></td>
									</tr>
									<tr>
										<td width="50" align="right">Name&nbsp;&nbsp;</td>
										<td><form:input path="name" /></td>
										<td align="left">
						<form:errors path="name" cssStyle="color:red"></form:errors> 
						</td> 
									</tr>

									<tr>
										<td width="50" align="right">DOB&nbsp;&nbsp;</td>
										<td><form:input path="dob" /></td>
										<td align="left"><form:errors path="dob"
												cssStyle="color:red"></form:errors></td>
									</tr>
									<tr>
										<td width="50" align="right">Gender&nbsp;&nbsp;</td>
										<td><form:select path="gender">
												<form:option value="M" label="Male" />
												<form:option value="F" label="Female" />
											</form:select></td>
										<td></td>
									</tr>
									<tr>
										<td width="50" align="right">Address&nbsp;&nbsp;</td>
										<td><form:input path="address" /></td>
										<td align="left"><form:errors path="address"
												cssStyle="color:red"></form:errors></td>
									</tr>
									<tr>
										<td width="50" align="right">Email&nbsp;&nbsp;</td>
										<td><form:input path="email" /></td>
										<td align="left"><form:errors path="email"
												cssStyle="color:red"></form:errors></td>
									</tr>
									<tr>
										<td width="50" align="right">Mobile&nbsp;&nbsp;</td>
										<td><form:input path="mobile" /></td>
										<td align="left"><form:errors path="mobile"
												cssStyle="color:red"></form:errors></td>
									</tr>
									<tr valign="bottom">
																											 									
										<td colspan="3" align="center"  class="modal-footer">
											&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" 
											class="btn btn-primary" name="" value="Save">	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;									
										<input type="button" class="btn btn-danger"
											value="Delete"
											onclick="javascript:deleteContact('deleteContact.do?id=${editContact.id}');">&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp; <input type="button" class="btn btn-default" value="close"
											onclick="javascript:go('viewAllContacts.do');"></td>
									</tr>
									

								</table>
							</form:form></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
