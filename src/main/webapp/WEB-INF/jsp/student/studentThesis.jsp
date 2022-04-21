<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>选择课题</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/topicManage.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/getThesisDesc.js"></script> --%>
</head>
<body>
	<div class="container">
		<jsp:include page="_student.jsp" />
	</div>
	
 	<div class="right_col" role="main" style="height:656px">
		<div class="col-md-12">
			<!-- <h4>选择课题</h4> -->
			<ul class="list-inline">
					<li>课题管理</li>
					<li>/</li>
					<li>选择课题</li>
				</ul>
			<hr>
			<div class="x_panel">
               <div class="x_content">
				<table class="table">
					<thead>
						<tr>
							<th width="12%">课题名</th>
							<th>课题难度</th>
							<th>课题工作量</th>
							<th>课题来源</th>
							<th>课题类型</th>
							<th width="25%">课题描述</th>
							<th>指导教师</th>
							<th>操作</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${thesisTitleList }" var="thesis" varStatus="loop">
							<tr>
								<td >${thesis.thesisName }</td>
								<td >${thesis.nandu }</td>
								<td >${thesis.liang }</td>
								<td >${thesis.from }</td>
								<td >${thesis.leixing }</td>
								<td >${thesis.description }</td>
								<td >${thesis.inputMan }</td>
								<td>
									<a class="btn btn-info btn-xs" href="<c:url value="/student/selectThesis?id=${sessionScope.student.id }&thesis=${thesis.id }"/>"><i class="fa fa-check"></i>选择</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
				</div>
			<%-- <form action="${pageContext.request.contextPath}/student/selectTopic" method="post">
				<input type="hidden" name="id" id="id" value="${sessionScope.student.id }" />
				
				<div class="col-md-5">
					<select class="form-control" id="topic" name="topic">
						<option value="">请选择...</option>
					</select>
				</div>

				<div class="col-md-6">
					
					<textarea class="form-control" style="width: 350px;height: 120px" placeholder="点击查看课题描述" id="thesisDesc" name="thesisDesc" onclick="show();"></textarea>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<button class="btn btn-primary" type="submit">提交</button>
					</div>
				</div>

			</form> --%>
		</div>
	</div>
</body>
</html>