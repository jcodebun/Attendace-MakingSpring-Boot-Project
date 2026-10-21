<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page isELIgnored="false"%>

<c:url var="addUrl" value="/ctl/userFeedBack" />

<c:url var="addSearch" value="/ctl/userFeedBack/session/search" />

<c:url var="sesUrl" value="/ctl/userFeedBack/search?sid=" />


<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Session User Report</li>
		</ol>
	</nav>
	<br>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/ctl/userFeedBack/session/search"
		modelAttribute="form">
		<div class="card">
			<h5 class="card-header"
				style="background-color: #18334f; color: white;">Session User Report</h5>
			<div class="card-body">
				
				<b><%@ include file="businessMessage.jsp"%></b>
				<br>

				<sf:input type="hidden" path="pageNo" />
				<sf:input type="hidden" path="pageSize" />

				<sf:input type="hidden" path="listsize" />
				<sf:input type="hidden" path="total" />
				<sf:input type="hidden" path="pagenosize" />

				<table class="table table-bordered border-primary">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Session Id</th>
							<th scope="col">Session Date</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="us" varStatus="user">
							<tr>
								<td scope="row">${user.index+1}</td>
									<td scope="row"><a href="${sesUrl}${us.id}">${us.sessionId}</a></td>
								<td scope="row">${us.date}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>

		</div>
	</sf:form>
</div>