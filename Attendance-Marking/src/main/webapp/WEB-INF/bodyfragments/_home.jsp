<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!-- Begin page content -->
<br>



<div class="container">
	<div class="card">
		<div class="card-header">Notifications</div>
		<div class="card-body">
			<c:if test="${success!=null}">
				<div class="alert alert-primary" role="alert">${success}</div>
			</c:if>
			<c:if test="${error!=null}">
				<div class="alert alert-danger" role="alert">${error}</div>
			</c:if>
			
			<c:if test="${warning!=null}">
				<div class="alert alert-warning" role="alert">${warning}</div>
			</c:if>
			
		</div>
	</div>
</div>