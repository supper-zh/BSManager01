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
		<li><a href="${pageContext.request.contextPath}/teacher/main"><i class="glyphicon glyphicon-list"></i>教师信息管理</a></li>
			<li>
				<a href="#user" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-user"></i>
						信息管理 
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="user" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li><a href="${pageContext.request.contextPath}/teacher/modifyInfo">修改个人信息</a></li>
					<li><a href="${pageContext.request.contextPath}/teacher/modifyPassword">修改密码</a></li>
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
					<li><a href="${pageContext.request.contextPath}/teacher/uploadThesisTitle">上传课题</a></li>
					<li><a href="${pageContext.request.contextPath}/teacher/thesisResult">课题结果</a></li>
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
					<li>
						<a href="${pageContext.request.contextPath}/teacher/uploadTaskBook">发布任务书</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/teacher/uploadOpening">发布开题报告</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/teacher/checkOppening">审核开题报告</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/teacher/publishProgress">发布阶段任务</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/teacher/checkProgress">审核阶段任务</a>
					</li>
				</ul>
			</li>
			
			<li>
				<a href="#question" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-question-sign"></i>
						疑问管理
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="question" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li>
						<a href="${pageContext.request.contextPath}/teacher/checkDoubt">提出的疑问</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/teacher/answeredDoubt">解决的方案</a>
					</li>
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
						<a href="${pageContext.request.contextPath}/teacher/uploadFile">上传文档</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/teacher/uploadFileResult">查看已上传文档</a>
					</li>
				</ul>
			</li>
			
			<li>
				<a href="#grade" class="nav-header collapsed" data-toggle="collapse"> 
					<i class="glyphicon glyphicon-text-background"></i>
						成绩管理
					<span class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul id="grade" class="nav nav-list collapse secondmenu"
					style="height: 0px;">
					<li>
						<a href="${pageContext.request.contextPath}/teacher/scoreAdd">添加成绩</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/teacher/scoreModify">查看成绩</a>
					</li>
				</ul>
			</li>
		</ul>
		</div>
		<div class="col-md-10">
</body>
</html>