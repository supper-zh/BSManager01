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
		<jsp:include page="_admin.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:656px">
		<div class="row">
			<div class="col-md-12">
				<!-- <h4>学生管理</h4> -->
				<ul class="list-inline">
					<li>学生管理</li>
					<li>/</li>
					<li>学生操作</li>
				</ul>
				
				<hr>
				
<%-- 				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/showAllStudent" method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label class="control-label">&nbsp;</label>
								<div>
									<button type="submit" id="showButton" name="showButton" class="btn btn-primary">点击查看全部学生</button>
								</div>
							</div>
						</div>
						<div class="col-md-9"></div>
					</div>
				</form> --%>
				
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/showStudentOne" method="post">
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<div >
									<input type="text" placeholder="学生学号" class="form-control" id="studentNo" name="studentNo">
								</div>
							</div>
						</div>
						<div class="col-md-0.5"></div>
						<div class="col-md-2">
							<div class="form-group">
								<div>
									<input type="text" placeholder="学生姓名" class="form-control" id="studentName" name="studentName">
								</div>
							</div>
						</div>
						<div class="col-md-0.5"></div>
						<div class="col-md-2">
							<div class="form-group">
								<div>
									<button type="submit" class="btn btn-primary">搜索学生</button>
									<p><font color="red" size="2px">${showMessage }</font></p>
								</div>
							</div>
						</div>
						<div class="col-md-5"></div>
					</div>

				</form>
				
				<table class="table">
					<thead>
						<tr>
							<th>学号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>专业</th>
							<th>年级</th>
							<th>联系电话</th>
							<th>邮箱</th>
							<th>操作</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${studentList }" var="student" varStatus="loop">
							<tr>
								<td>${student.studentNo }</td>
								<td>${student.studentName }</td>
								<td>${student.sex }</td>
								<td>${student.majorName }</td>
								<td>${student.grade }</td>
								<td>${student.phone }</td>
								<td>${student.email }</td>
								<td>
									<a class="btn btn-info btn-xs" href="<c:url value="/admin/modifyStudent?id=${student.id }"/>"><i class="fa fa-pencil"></i>修改</a>
									<a class="btn btn-danger btn-xs" href="<c:url value="/admin/deleteStudent?id=${student.id }"/>"><i class="fa fa-trash-o"></i>删除</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			
			</div>
		</div>

	</div>
</body>
</html>