<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加成绩</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/student4Pass.js"></script>
<body>
	<div class="container">
		<jsp:include page="_teacher.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:800px">
		<div class="row">
			<div class="col-md-8">
				<!-- <h4>添加成绩</h4> -->
				<ul class="list-inline">
					<li>成绩管理</li>
					<li>/</li>
					<li>添加成绩</li>
				</ul>
				<p><font color="red" size="4px">${message }</font> </p>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/teacher/addStudentScore" method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label>学生姓名:</label>
								<div>
									<select class="form-control" id="studentList" name="studentList">
										<option value="">请选择...</option>
									</select>
								</div>
								<div class="col-sm-5"></div>
							</div>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3">
							<div class="form-group">
								<label>添加学生成绩：</label>
								<input class="form-control" id="score" name="score" onkeyup="value=value.replace(/[^\d]/g,'')" placeholder="成绩" />
							</div>
						</div>
						<div class="col-md-5"></div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-6">
							<button type="submit" class="btn btn-primary" id="submitButton" name="submitButton">确认添加</button>
						</div>
						<div class="col-md-6"></div>
					</div>
					
					<table class="table table-hover ">
					<thead>
						<tr>
							<th>学生</th>
							<th>文档名</th>
							<th>成绩</th>
						</tr>
					</thead>
					
					<tbody>
					<c:forEach items="${allScores }" var="scores" varStatus="loop">
						<tr>
							<td>${scores.studentName }</td>
							<td>开题报告</td>
							<td>${scores.openscore }</td>
						</tr>
						<tr>
							<td></td>
							<td>可行性分析报告</td>
							<td>${scores.kexingscore }</td>
						</tr>
						<tr>
							<td></td>
							<td>需求分析报告</td>
							<td>${scores.xuqiuscore }</td>
						</tr>
						<tr>
							<td></td>
							<td>概要设计报告</td>
							<td>${scores.gaiyaoscore }</td>
						</tr>
						<tr>
							<td></td>
							<td>数据库设计报告</td>
							<td>${scores.shujukuscore }</td>
						</tr>
					</c:forEach>
					</tbody>
					
				</table>

					
					
					
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>