<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看已上传的文档</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_student.jsp" />
	</div>
	
 	<div class="right_col" role="main" style="height:656px">
		<div class="row">
			<div class="col-md-8">
				<!-- <h4>文档列表</h4> -->
				<ul class="list-inline">
					<li>文档管理</li>
					<li>/</li>
					<li>查看已上传文档</li>
				</ul>
				<hr>
				<div class="x_panel">
               	<div class="x_content">
				<table class="table">
					<tr>
						<th>文件名</th>
						<th>操作</th>
					</tr>

					<c:forEach items="${fileList }" var="file">
						<c:url value="/student/fileDownload" var="downUrl">
							<c:param name="fileName" value="${file.key }"></c:param>
							<c:param name="filePath" value="${file.value }"></c:param>
						</c:url>
						<c:url value="/student/fileDelete" var="deleteUrl">
							<c:param name="fileName" value="${file.key }"></c:param>
							<c:param name="filePath" value="${file.value }"></c:param>
						</c:url>
						<tr>
							<td>${file.key }</td>
							<td>
								<a class="btn btn-info btn-xs" href="${downUrl }">下&nbsp;载</a>
								&nbsp;&nbsp;&nbsp;
								<a class="btn btn-danger btn-xs" href="${deleteUrl }">删&nbsp;除</a>
							</td>
						</tr>
					</c:forEach>
				</table>
				</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>