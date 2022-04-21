<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师提交课题</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_teacher.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:800px">
		<div class="row">
			<div class="col-md-8">
				<!-- <h4>上传课题</h4> -->
				<ul class="list-inline">
					<li>课题管理</li>
					<li>/</li>
					<li>上传课题</li>
				</ul>
				<p><font color="red" size="4px">${message }</font> </p>
				<form action="${pageContext.request.contextPath}/teacher/uploadThesisTitle" method="post">
					<div class="form-group">
						<label>课题名称：</label>
						<input class="form-control" placeholder="课题名" id="thesisTitle" name="thesisTitle"/>
					</div>
					
					<div class="form-group">
						<label>课题难度：</label>
						<select class="form-control" placeholder="课题难度" id="nandu" name="nandu" >
							<option value="偏难">偏难</option>
							<option value="适中">适中</option>
							<option value="简单">简单</option>
						</select>
					</div>
					
					<div class="form-group">
						<label>课题工作量：</label>
						<select class="form-control" placeholder="课题工作量" id="liang" name="liang" >
							<option value="偏大">偏大</option>
							<option value="适中">适中</option>
							<option value="偏小">偏小</option>
						</select>
					</div>
					
					<div class="form-group">
						<label>课题来源：</label>
						<select class="form-control" placeholder="课题来源" id="from" name="from" >
							<option value="教师自拟">教师自拟</option>
							<option value="学生自拟">学生自拟</option>
							<option value="科研项目">科研项目</option>
							<option value="社会实践">社会实践</option>
						</select>
					</div>
					
					<div class="form-group">
						<label>课题类型：</label>
						<select class="form-control" placeholder="课题类型" id="leixing" name="leixing" >
							<option value="设计开发">设计开发</option>
							<option value="应用研究">应用研究</option>
							<option value="理论研究">理论研究</option>
							<option value="其他">其他</option>
						</select>
					</div>
					
					<div class="form-group">
						<label>课题描述：</label>
						<textarea class="form-control" placeholder="描述信息..." id="thesisDesc" name="thesisDesc"></textarea>
					</div>

					<div class="form-group">
						<div class="row">

							<div class="col-sm-5"></div>
							<button type="submit" class="btn btn-primary col-sm-2">确认上传</button>
						</div>
					</div>

				</form>
				
			</div>
		</div>

	</div>
</body>
</html>