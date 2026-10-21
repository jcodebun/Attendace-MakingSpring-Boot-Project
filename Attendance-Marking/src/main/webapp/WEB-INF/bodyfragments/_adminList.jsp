<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page isELIgnored="false"%>

<c:url var="addUrl" value="/ctl/admin/au-admin" />

<c:url var="addSearch" value="/ctl/admin/search" />

<c:url var="editUrl" value="/ctl/admin/au-admin?id=" />


<div class="container">
		<br>
		<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Admin Report</li>
			</ol>
		</nav>
		<br>
<sf:form method="post"
			action="${pageContext.request.contextPath}/ctl/admin/search"
			modelAttribute="form">
		<div class="card">
			<h5 class="card-header"
				style="background-color: #18334f; color: white;">Admin Report</h5>
			<div class="card-body">
				<div class="row g-3">
				<s:bind path="firstName">
					<div class="col">
						<sf:input  path="${status.expression}" class="form-control" placeholder="Search By First name"/>
					</div>
					</s:bind>
				<s:bind path="email">
					<div class="col">
						<sf:input  path="${status.expression}" class="form-control" placeholder="Search By Email"/>
					</div>
					</s:bind>
					
					<div class="col">
						<input type="submit"
									class="btn btn-primary btn btn-info" name="operation"
									value="Search">or<input type="submit"
									class="btn btn-primary btn btn-info" name="operation"
									value="Reset">
					</div>
				</div>
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
						<th scope="col"><input type="checkbox" id="selectall">Select
										All</th>
							<th scope="col">#</th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Email Id</th>
							<th scope="col">Contact No</th>
							<th scope="col">Age </th>
							<th scope="col">Gender</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="adm" varStatus="admin">
						<tr>
							<td scope="row"><input type="checkbox" class="case" name="ids"
										value="${adm.id}"></td>
							<td scope="row">${admin.index+1}</td>
							<td scope="row">${adm.firstName}</td>
							<td scope="row">${adm.lastName}</td>
							<td scope="row">${adm.emailId}</td>
							<td scope="row">${adm.contactNo}</td>
							<td scope="row">${adm.age}</td>
							<td scope="row">${adm.gender}</td>
							<td scope="row">${adm.status}</td>
							<td><a href="${editUrl} ${adm.id}"
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
						class="btn  btn-primary btn-sm"
						<c:if test="${total == pagenosize  || listsize < pageSize   }">disabled="disabled"</c:if>
						value="Next"></li>
						</ul>
			</div>
			
		</div>
		</sf:form>
	</div>