<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/welcome"/>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Trainer</li>
		</ol>
	</nav>
	<br>

	<div class="card">
		<h5 class="card-header"
			style="background-color: #18334f; color: white;">Trainer</h5>
		<div class="card-body">
			<b><%@ include file="businessMessage.jsp"%></b>
			<sf:form method="post"
				action="${pageContext.request.contextPath}/ctl/trainer"
				modelAttribute="form">
				<sf:hidden path="id" />
				<sf:hidden path="trainerId" />

				<div class="col-md-6">
					<s:bind path="sessionId">
						<label for="inputEmail4" class="form-label">Session</label>
						<sf:select style="margin-bottom: 10px" class="form-control"
							path="${status.expression}">
							<sf:option value="-1" label="Select" />
							<sf:options itemLabel="sessionId" itemValue="id"
								items="${sessionList}" />
						</sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<div class="col-md-6">
					<s:bind path="skillId">
						<label for="inputEmail4" class="form-label">Skill Set</label>
						<sf:select style="margin-bottom: 10px" class="form-control"
							path="${status.expression}">
							<sf:option value="-1" label="Select" />
							<sf:options itemLabel="skillId" itemValue="id"
								items="${skillList}" />
						</sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<div class="col-md-6">
					<s:bind path="name">
						<label for="inputEmail4" class="form-label">Name</label>
						<sf:input path="${status.expression}" placeholder="Enter Name"
							class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<div class="col-md-6">
					<s:bind path="email">
						<label for="inputEmail4" class="form-label">Email</label>
						<sf:input path="${status.expression}" placeholder="Enter Email"
							class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<div class="col-md-6">
					<s:bind path="contactNo">
						<label for="inputEmail4" class="form-label">Contact No</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Contact No" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<br>
				<div class="col-12">
					<input type="submit" name="operation"
						class="btn btn-primary pull-right" value="Save"> or <input
						type="submit" name="operation" class="btn btn-primary pull-right"
						value="Reset">
				</div>
			</sf:form>
		</div>
	</div>
</div>