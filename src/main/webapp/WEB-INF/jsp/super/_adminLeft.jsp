<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
 	body{        
 	    background-image: url(../images/background.jpg); 
 	    background-repeat:no-repeat; 
    	background-size:100% 100%;
    	-moz-background-size:100% 100%;
		background-color: #E0EEE0;
	    background-attachment: fixed;
	} 
	
	*{
     border: 0px solid transparent !important;
 	}
 	
	 	th,td{
	 		text-align: center
	 	}
    </style>
</head>
<body>
	<div class="col-md-2">
		<ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
		<li><a href="${pageContext.request.contextPath}/admin/main"><i class="glyphicon glyphicon-list"></i>管理员信息管理</a></li>
			<li>
				<a href="#user" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-user"></i>
						信息管理 
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="user" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li>
						<a href="${pageContext.request.contextPath}/admin/modifyPassword">修改密码</a>
					</li>
				</ul>
			</li>
			
			<li>
				<a href="#teacher" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-leaf"></i>
						导师管理
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="teacher" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li>
						<a href="${pageContext.request.contextPath}/admin/teacherAdd">添加导师</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/admin/teacherManage">导师操作</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#student" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-education"></i>
						学生管理
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="student" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li>
						<a href="${pageContext.request.contextPath}/admin/studentAdd">添加学生</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/admin/studentManage">学生操作</a>
					</li>
				</ul>
			</li>
			
			<li>
				<a href="#class" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-tags"></i>
						选题管理
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="class" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li>
						<a href="${pageContext.request.contextPath}/admin/checkThesis">审核选题</a>
					</li>
				</ul>
			</li>
			
		</ul>
		</div>
		<div class="col-md-10">
</body>
</html>