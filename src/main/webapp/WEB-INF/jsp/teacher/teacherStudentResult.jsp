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
			<div class="col-md-12">
				<!-- <h4>课题结果</h4> -->
				<ul class="list-inline">
					<li>学生管理</li>
					<li>/</li>
					<li>选择学生</li>
				</ul>
				<p><font color="red" size="2px">${thesisMessage }</font></p>
				
				<!-- 点击查看上传的课题 -->
				<%-- <form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/teacher/showAllThesisTitle"
					method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label class="control-label">&nbsp;</label>
								<div>
									<button type="submit" id="showButton" name="showButton" class="btn btn-primary">点击查看全部选题</button>
									<p><font color="red" size="2px">${thesisMessage }</font></p>
								</div>
							</div>
						</div>
						<div class="col-md-9"></div>
					</div>
				</form> --%>
				<div class="x_panel">
 				   <div class="x_content">
				<table class="table">
					<thead>
						<tr>
							<th>学生学号</th>
							<th>学生姓名</th>
							<th>学生性别</th>
							<th>学生电话</th>
							<th>学生邮箱</th>
							<th>所选课题</th>
							<th>课题难度</th>
							<th>课题工作量</th>
							<th>操作</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${zhiyuanList }" var="zhiyuanList">
							<tr>
								<td>${zhiyuanList.studentNo }</td>
								<td>${zhiyuanList.studentName }</td>
								<td>${zhiyuanList.sex }</td>
								<td>${zhiyuanList.phone }</td>
								<td>${zhiyuanList.email }</td>
								<td>${zhiyuanList.thesisName }</td>
								<td>${zhiyuanList.nandu }</td>
								<td>${zhiyuanList.liang }</td>
								<td>
									<a class="btn btn-info btn-xs" href="<c:url value="/teacher/selectStudent?id=${zhiyuanList.studentId }&topic=${zhiyuanList.thesisId }"/>"><i class="fa fa-check"></i>选择</a>
									<a class="btn btn-danger btn-xs" href="<c:url value="/teacher/noselectStudent?id=${zhiyuanList.studentId }&topic=${zhiyuanList.thesisId }"/>"><i class="fa fa-trash-o"></i>不选择</a>
								</td>
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