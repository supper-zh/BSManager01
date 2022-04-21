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
		<li><a href="${pageContext.request.contextPath}/student/main"><i class="glyphicon glyphicon-list"></i>学生信息管理</a></li>
			<li>
				<a href="#user" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-user"></i>
						信息管理 
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="user" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li><a href="${pageContext.request.contextPath}/student/modifyInfo">修改个人信息</a></li>
					<li><a href="${pageContext.request.contextPath}/student/modifyPassword">修改密码</a></li>
				</ul>
			</li>
			<li>
				<a href="#class" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-tags"></i>
						课题管理
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="class" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li><a href="${pageContext.request.contextPath}/student/thesis">选择课题</a></li>
					<li><a href="${pageContext.request.contextPath}/student/thesisResult">查看结果</a></li>
				</ul>
			</li>
			<li>
				<a href="#process" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-flag"></i>
						进度管理
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="process" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li><a href="${pageContext.request.contextPath}/student/openingResult">开题报告完成情况</a></li>
					<li><a href="${pageContext.request.contextPath}/student/viewTaskOpening">查看课题资料</a></li>
					<li><a href="${pageContext.request.contextPath}/student/sectionTask">查看阶段任务</a></li>
				</ul>
			</li>
			<li>
				<a href="#docx" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-folder-open"></i>
						文档管理
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="docx" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li>
						<a href="${pageContext.request.contextPath}/student/uploadFile">上传文档</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/student/resourcesDownload">查看已上传的文档</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#question" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-question-sign"></i>
						提问管理
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="question" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li>
						<a href="${pageContext.request.contextPath}/student/studentDoubt">提出疑惑</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/student/studentDoubtList">查看解答</a>
					</li>
				</ul>
			</li>
			
		</ul>
		</div>
		<div class="col-md-10">
</body>
</html>