<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>答辩资格</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_teacher.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:800px">
		<div class="row">
			<div class="col-md-9">
				<!-- <h4>答辩资格名单</h4> -->
				<ul class="list-inline">
					<li>毕业设计管理</li>
					<li>/</li>
					<li>答辩资格名单</li>
				</ul>
				<table class="table ">
					<thead>
						<tr>
							<th>学号</th>
							<th>姓名</th>
							<th>年级</th>
							<th>电话</th>
							<th>邮箱</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${studentList }" var="student">
							<tr>
								<td>${student.studentNo }</td>
								<td>${student.studentName }</td>
								<td>${student.grade }</td>
								<td>${student.phone }</td>
								<td>${student.email }</td>
							</tr>
								
						</c:forEach>
					</tbody>
					
				</table>
			</div>
		</div>
	</div>
</body>
</html>