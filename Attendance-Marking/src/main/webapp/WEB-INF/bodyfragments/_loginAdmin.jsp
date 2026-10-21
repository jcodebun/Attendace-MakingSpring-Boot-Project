<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
	<div class="container">
		<br>
		<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="<c:url value="/welcome"/>">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Admin Login</li>
			</ol>
		</nav>
		<br>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card border-success mb-3" style="max-width: 40rem;">
					<div class="card-header bg-transparent border-success">Admin Login</div>
					<b><%@ include file="businessMessage.jsp"%></b>
					<div class="card-body text-success">
						<sf:form method="post"
							action="${pageContext.request.contextPath}/admin/login" modelAttribute="form"
							>
							
							<s:bind path="adminId">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Admin Id</label> 
								<sf:input path="${status.expression}" placeholder="Enter Admin Id"
										class="form-control" />
								<div class="form-text"><font color="red" style="font-size: 13px"><sf:errors path="${status.expression}"/></font></div>
							</div>
							</s:bind>
							<s:bind path="password">
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<sf:input type="password" path="${status.expression}"
									placeholder="Enter Password" class="form-control" />
									<div class="form-text"><font color="red" style="font-size: 13px"><sf:errors path="${status.expression}"/></font></div>
							</div>
							</s:bind>
							<input type="submit" name="operation" class="btn btn-primary pull-right"
								value="SignIn"> or
								<input type="submit" name="operation" class="btn btn-primary pull-right"
								value="SignUp"> 
							<a href="${pageContext.request.contextPath}/admin/forgetPassword">Forget Admin Id & Password ?</a>
						</sf:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>

	</div>