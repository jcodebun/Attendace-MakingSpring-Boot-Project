<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/welcome"/>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Detail</li>
		</ol>
	</nav>
	<br>

	<div class="card">
		<h5 class="card-header"
			style="background-color: #18334f; color: white;">Session Detail
			</h5>
		<div class="card-body">
			<b><%@ include file="businessMessage.jsp"%></b>
			<sf:form method="post"
				action="${pageContext.request.contextPath}/ctl/session"
				modelAttribute="form">
				<sf:hidden path="id"/>
				<sf:hidden path="sessionId"/>
			
				<div class="col-md-6">
						<label for="inputEmail4" class="form-label"><b>Session Id :</b></label>
							<p>${form.sessionId}</p>
				</div>
				<div class="col-md-6">
						<label for="inputEmail4" class="form-label"><b> Date :</b></label>
							<p>${form.date}</p>
				</div>
				
				<div class="col-md-6">
						<label for="inputEmail4" class="form-label"><b>Slot : </b></label>
							<p>${form.slot}</p>
				</div>
				
				<div class="col-md-6">
						<label for="inputEmail4" class="form-label"><b> Time : </b></label>
							<p>${form.time}</p>
				</div>
				
				<div class="col-md-6">
						<label for="inputEmail4" class="form-label"><b> Description : </b></label>
							<p>${form.description}</p>
				</div>
				
				<div class="col-md-6">
						<label for="inputEmail4" class="form-label"><b> SkillSet Id : </b></label>
							<p>${form.skills.skillId}</p>
				</div>
				
				<div class="col-md-6">
						<label for="inputEmail4" class="form-label"><b> SkillSet Type: </b></label>
							<p>${form.skills.type}</p>
				</div>
				<div class="col-md-6">
						<label for="inputEmail4" class="form-label"><b> SkillSet Description: </b></label>
							<p>${form.skills.description}</p>
				</div>
				
				<div class="col-md-6">
							<a class="btn btn-info" href="<c:url value="/ctl/enroll/add?operation=Enroll&sId=${form.id}"/>">Enroll</a>
				</div>
				
				
			</sf:form>
		</div>
	</div>
</div>