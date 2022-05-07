<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师管理</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/autoJump.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="_admin.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:656px">
		<div class="row">
			<div class="col-md-12">
				<!-- <h4>教师管理</h4> -->
				<ul class="list-inline">
					<li>导师管理</li>
					<li>/</li>
					<li>导师操作</li>
				</ul>
				<hr>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/showTeacherOne" method="post">
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<div >
									<input type="text" placeholder="教师编号" class="form-control" id="teacherNo" name="teacherNo">
								</div>
							</div>
						</div>

						<div class="col-md-0.5">

						</div>

						<div class="col-md-2">
							<div class="form-group">
								<div>
									<input type="text" placeholder="教师姓名" class="form-control" id="teacherName" name="teacherName">
								</div>
							</div>
						</div>

						<div class="col-md-2">
							<div class="form-group">
								<div>
									<button type="submit" class="btn btn-primary">搜索导师</button>
								</div>
								<div>
									<label >&nbsp;</label>
									<p><font color="red" size="2px">${showMessage }</font></p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<div>
									<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/showAllStudent" method="post">
									<button type="submit" id="showButton" name="showButton" class="btn btn-primary">查看全部教师</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</form>


				<table class="table">
					<thead>
						<tr style="background-color: #0b99;">
							<th>教师编号</th>
							<th>教师姓名</th>
							<th>性别</th>
							<th>所在院系</th>
							<th>职称</th>
							<th>联系电话</th>
							<th>邮箱</th>
							<th>操作</th>
						</tr>
					</thead>

					<tbody>
						<%--		分页测试--%>
						<c:forEach items="${teachers.list}" var="teachers">
							<div>
								<tr>
									<td>${teachers.teacherNo }</td>
									<td>${teachers.teacherName }</td>
									<td>${teachers.sex }</td>
									<td>${teachers.departmentName}</td>
									<td>${teachers.zhicheng }</td>
									<td>${teachers.phone }</td>
									<td>${teachers.email }</td>
									<td>
										<a class="btn btn-info btn-xs" href="<c:url value="/admin/modifyTeacher?id=${teachers.id }"/>"><i class="fa fa-pencil"></i>修改</a>
										<a class="btn btn-danger btn-xs" href="<c:url value="/admin/deleteTeacher?id=${teachers.id }"/>"><i class="fa fa-trash-o"></i>删除</a>
									</td>
								</tr>
							</div>
						</c:forEach>
					</tbody>

					<tfoot>
					<tr>
							<span>
							<a href="<c:url value="/admin/showAllTeacher2?page=${teachers.pageNum-1}"/>">
								上一页
							</a>
						</span>
						<span>
							<a href="${pageContext.request.contextPath}/admin/showAllTeacher2?page=${teachers.pageNum+1}">
								下一页
							</a>
						</span>
					</tr>
					</tfoot>
				</table>

				</div>


			</div>
		</div>

	</div>
</body>
</html>