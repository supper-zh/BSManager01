<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>审核课题</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_admin.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:656px">
		<div class="row">
			<div class="col-md-12">
				<!-- <h4>审核课题</h4> -->
				<ul class="list-inline">
					<li>选题管理</li>
					<li>/</li>
					<li>审核选题</li>
				</ul>
				<table class="table">
					<thead>
						<tr>
							<th width="12%">课题名</th>
							<th>课题难度</th>
							<th>课题工作量</th>
							<th>课题来源</th>
							<th>课题类型</th>
							<th width="25%">课题描述</th>
							<th>目前状态</th>
							<th>操作</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${thesis.list}" var="thesis">
							<tr>
								<td >${thesis.thesisName }</td>
								<td >${thesis.nandu }</td>
								<td >${thesis.liang }</td>
								<td >${thesis.from }</td>
								<td >${thesis.leixing }</td>
								<td >${thesis.description }</td>
								<td >${thesis.statusName }</td>
								<td>
									<a class="btn btn-info btn-xs" href="<c:url value="/admin/agreeThesis?id=${thesis.id }"/>"><i class="fa fa-check"></i>通过</a>
									<a class="btn btn-danger btn-xs" href="<c:url value="/admin/disagreeThesis?id=${thesis.id }"/>"><i class="fa fa-close"></i>未通过</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
						<span style="background-color: #0b99; padding: 3px;text-align:right; "  >
							<a style="font-size: 13px" href="<c:url value="/admin/checkThesis2?page=${thesis.pageNum-1}"/>">
								上一页
							</a>

							<a href="${pageContext.request.contextPath}/admin/checkThesis2?page=${thesis.pageNum+1}">
								下一页
							</a>
						</span>
		</div>

	</div>

</body>
</html>