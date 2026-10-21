<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/welcome"/>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Skill Set</li>
		</ol>
	</nav>
	<br>

	<div class="card">
		<h5 class="card-header"
			style="background-color: #18334f; color: white;">Skill Set
			</h5>
		<div class="card-body">
			<b><%@ include file="businessMessage.jsp"%></b>
			<sf:form method="post"
				action="${pageContext.request.contextPath}/ctl/skill"
				modelAttribute="form">
				<sf:hidden path="id"/>
				<sf:hidden path="skillId"/>
			
				<div class="col-md-6">
					<s:bind path="type">
						<label for="inputEmail4" class="form-label">Type</label>
							<sf:input path="${status.expression}" placeholder="Enter type"
										class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors path="${status.expression}"/></font>
					</s:bind>
				</div>
				<div class="col-md-6">
					<s:bind path="description">
						<label for="inputEmail4" class="form-label">Description</label>
							<sf:textarea path="${status.expression}" rows="4" cols="4" placeholder="Enter Decription"
										class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors path="${status.expression}"/></font>
					</s:bind>
				</div>
				
		<br>
				<div class="col-12">
					<input type="submit" name="operation" class="btn btn-primary pull-right"
								value="Save"> or
								<input type="submit" name="operation" class="btn btn-primary pull-right"
								value="Reset"> 
				</div>
			</sf:form>
		</div>
	</div>
</div>