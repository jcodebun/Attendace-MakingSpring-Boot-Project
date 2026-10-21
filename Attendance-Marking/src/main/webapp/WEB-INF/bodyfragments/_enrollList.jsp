<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page isELIgnored="false"%>

<c:url var="addUrl" value="/ctl/enroll" />

<c:url var="addSearch" value="/ctl/enroll/search" />

<c:url var="editUrl" value="/ctl/enroll?id=" />


<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Enroll
				Report</li>
		</ol>
	</nav>

	<br>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/ctl/enroll/search"
		modelAttribute="form">
		<div class="card">
			<h5 class="card-header"
				style="background-color: #18334f; color: white;">Enroll Report</h5>
			<div class="card-body">
				<%-- <div class="row g-3">
					<s:bind path="type">
						<div class="col">
							<sf:input path="${status.expression}" class="form-control"
								placeholder="Search By Type" />
						</div>
					</s:bind>
					<div class="col">
						<input type="submit" class="btn btn-primary btn btn-info"
							name="operation" value="Search">or<input type="submit"
							class="btn btn-primary btn btn-info" name="operation"
							value="Reset">
					</div> --%>

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
							<th scope="col">User Name</th>
							<th scope="col">Session Id</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="en" varStatus="enroll">
							<tr>
								<td scope="row">${enroll.index+1}</td>
								<td scope="row">${en.user.firstName}${en.user.lastName}</td>
								<td scope="row">${en.session.sessionId}</td>
								<td scope="row">${en.status}</td>
								<td><a href="${editUrl} ${en.id}"
									class="btn btn-primary btn btn-info">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="clearfix"></div>
				<ul class="pagination pull-right">
					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm"
						<c:if test="${form.pageNo == 1}">disabled="disabled"</c:if>
						value="Previous"></li>
					<li></li>
					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm"
						<c:if test="${listsize == 0}">disabled="disabled"</c:if>
						value="Delete"></li>
					<li></li>

					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm" value="New"></li>
					<li></li>


					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm"
						<c:if test="${total == pagenosize  || listsize < pageSize   }">disabled="disabled"</c:if>
						value="Next"></li>
				</ul>
			</div>

		</div>
	</sf:form>
</div>