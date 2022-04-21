<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>完成情况</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_student.jsp" />
	</div>
	
 	<div class="right_col" role="main" style="height:656px">
		<div class="row">
			<div class="col-md-8">
				<!-- <h4>完成情况</h4> -->
				<ul class="list-inline">
					<li>进度管理</li>
					<li>/</li>
					<li>各文档完成情况</li>
				</ul>
				<hr>
				<div align="center">
					<p><font color="red" size="5px">${message }</font></p>
				</div>
				<div class="x_panel">
                  <div class="x_content">
				<table class="table table-hover ">
					<thead>
						<tr>
							<th>文档名</th>
							<th>成绩</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>开题报告</td>
							<td><c:if test="${wendangList.open==null }">尚未提交或审核</c:if><c:if test="${wendangList.open!=null }"><c:out value="${wendangList.open }"/></c:if></td>
						</tr>
						<tr>
							<td>可行性分析报告</td>
							<td><c:if test="${wendangList.kexing==null }">尚未提交或审核</c:if><c:if test="${wendangList.kexing!=null }"><c:out value="${wendangList.kexing }"/></c:if></td>
						</tr>
						<tr>
							<td>需求分析报告</td>
							<td><c:if test="${wendangList.xuqiu==null }">尚未提交或审核</c:if><c:if test="${wendangList.xuqiu!=null }"><c:out value="${wendangList.xuqiu }"/></c:if></td>
						</tr>
						<tr>
							<td>概要设计报告</td>
							<td><c:if test="${wendangList.gaiyao==null }">尚未提交或审核</c:if><c:if test="${wendangList.gaiyao!=null }"><c:out value="${wendangList.gaiyao }"/></c:if></td>
						</tr>
						<tr>
							<td>数据库设计报告</td>
							<td><c:if test="${wendangList.shujuku==null }">尚未提交或审核</c:if><c:if test="${wendangList.shujuku!=null }"><c:out value="${wendangList.shujuku }"/></c:if></td>
						</tr>
						
					</tbody>
					
				</table>
				</div>
				</div>
				
			</div>
		</div>
	</div>
</body>