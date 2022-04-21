<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>选题结果</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<% 
	String ss = (String)request.getAttribute("realTimeTopicMessage"); 
	application.setAttribute("realMessage", ss);
%>
<body>
	<div class="container">
		<jsp:include page="_student.jsp" />
	</div>
	
 	<div class="right_col" role="main" style="height:656px">
		<div class="row">
			<div class="col-md-9">
				<!-- <h4>选题结果</h4> -->
				<ul class="list-inline">
					<li>课题管理</li>
					<li>/</li>
					<li>查看结果</li>
				</ul>
				<hr>
				<font></font>
				<div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>选题结果</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
				<table class="table table-bordered" >
					<tr>
						<th width="20%" align="right">学号:</th>
						<td width="80%">${sessionScope.student.studentNo }</td>
					</tr>
					<tr>
						<th align="right">选择课题:</th>
						<td >${topicName }</td>
					</tr>
					<tr>
						<th align="right">指导老师:</th>
						<td >${inputMan }</td>
					</tr>
					<tr>
						<th align="right">课题难度:</th>
						<td >${nandu }</td>
					</tr>
					<tr>
						<th align="right">课题工作量:</th>
						<td >${liang }</td>
					</tr>
					<tr>
						<th align="right">课题来源:</th>
						<td >${from }</td>
					</tr>
					<tr>
						<th align="right">课题类型:</th>
						<td >${leixing }</td>
					</tr>
					<tr>
						<th align="right">课题描述:</th>
						<td >${description }</td>
					</tr>
					<%-- <tr>
						<td align="right">操作:</td>
						<td >
							<a href="${pageContext.request.contextPath}/student/deleteChosenTopic?studentId=${sessionScope.student.id }">退选当前课题</a>
						</td>
					</tr> --%>
				</table>
				</div>
				</div>
				</div>
				
			</div>
		</div>

	</div>

</body>
</html>