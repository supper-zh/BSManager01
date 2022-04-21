<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_teacher.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:800px">
		<div class="row">
			<div class="col-md-8">
				<!-- <h4>管理的学生</h4> -->
				<ul class="list-inline">
					<li>学生管理</li>
					<li>/</li>
					<li>查看学生信息</li>
				</ul>
				<div align="center">
					<p><font color="red" size="5px">${message }</font> </p>
				</div>
				<div class="x_panel">
  				  <div class="x_content">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>学生学号</th>
							<th>学生姓名</th>
							<th>所选课题</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${studentList }" var="student" varStatus="loop">
							<tr>
								<td>${student.studentNo }</td>
								<td>${student.studentName }</td>
								<td>${student.thesisName }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>