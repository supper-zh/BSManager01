<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>审核可行性分析报告</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_teacher.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:1200px">
		<div class="row">
			<div class="col-md-8">
				<!-- <h4>审核开题报告</h4> -->
				<ul class="list-inline">
					<li>进度管理</li>
					<li>/</li>
					<li>审核可行性分析报告</li>
				</ul>
				<div align="center">
					<p><font color="red" size="5px">${message }</font> </p>
				</div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>学生学号</th>
							<th>学生姓名</th>
							<th>文件下载</th>
							<th>当前状况</th>
							<th>完成情况</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${studentList }" var="student" varStatus="loop">
							<c:url value="/teacher/fileDownload" var="downUrl">
								<c:param name="fileName" value="${student.studentKexingName }"></c:param>
								<c:param name="filePath" value="${student.studentKexingPath }"></c:param>
							</c:url>
							<c:url value="/teacher/kexingPass" var="passUrl">
								<c:param name="studentNo" value="${student.studentNo }"></c:param>
								<c:param name="fileName" value="${student.studentKexingName }"></c:param>
								<c:param name="filePath" value="${student.studentKexingPath }"></c:param>
							</c:url>
							<tr>
								<td>${student.studentNo }</td>
								<td>${student.studentName }</td>
								<td><a href="${downUrl }">${student.studentKexingName }</a></td>
								<td>${student.kexingscore }</td>
								<td>
									<a class="btn btn-success btn-xs" href="${passUrl }&kexingscore=A"><i class="fa fa-check"></i>A</a>
									<a class="btn btn-info btn-xs" href="${passUrl }&kexingscore=B"><i class="fa fa-check"></i>B</a>
									<a class="btn btn-warning btn-xs" href="${passUrl }&kexingscore=C"><i class="fa fa-check"></i>C</a>
									<a class="btn btn-danger btn-xs" href="${passUrl }&kexingscore=D"><i class="fa fa-check"></i>D</a>
								</td>
								<%-- <td>
									<a href="${passUrl }">完成</a> &nbsp;&nbsp;&nbsp;
									<a href="${failUrl }">未完成</a>
								</td> --%>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>