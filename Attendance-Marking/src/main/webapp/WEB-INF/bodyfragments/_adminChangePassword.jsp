<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/welcome"/>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Change Password</li>
		</ol>
	</nav>
	<br>

<div class="card">
		<h5 class="card-header"
			style="background-color: #18334f; color: white;">Change Password
			</h5>
		<div class="card-body">
			<b><%@ include file="businessMessage.jsp"%></b>
			<sf:form method="post"
				action="${pageContext.request.contextPath}/admin/changepassword"
				modelAttribute="form">
			
				<div class="col-md-6">
					<s:bind path="oldPassword">
						<label for="inputEmail4" class="form-label">Old Password</label>
							<sf:input path="${status.expression}" placeholder="Enter Old Password"
										class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors path="${status.expression}"/></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="newPassword">
						<label for="inputEmail4" class="form-label">New Password</label>
							<sf:input path="${status.expression}" placeholder="Enter New Password"
										class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors path="${status.expression}"/></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="confirmPassword">
						<label for="inputEmail4" class="form-label">Confirm Password</label>
							<sf:input path="${status.expression}" placeholder="Enter Confirm Password"
										class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors path="${status.expression}"/></font>
					</s:bind>
				</div>
				
				
		<br>
				<div class="col-12">
					<input type="submit" name="operation" class="btn btn-primary pull-right"
								value="Save">
				</div>
			</sf:form>
		</div>
	</div>
</div>