<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 下面对列表的操作是 找的分页项目中的 在PageTest 项目中可以找到 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改课题</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_teacher.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:800px">
		<div class="row">
			<div class="col-md-8">
				<h4>修改课题</h4>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/teacher/modifyThesisTitleToDb" method="post">
					<input type="hidden" name="id" id="id" value="${id }"/>
					<div class="form-group">
						<label>课题名:</label>
						<div>
							<input type="text" class="form-control" id="thesisTitle" name="thesisTitle" value="${thesisTitleName }">
						</div>
					</div>
					<div class="form-group">
						<label>课题难度：</label>
						<select class="form-control" id="nandu" name="nandu" >
							<option value="${nandu }">${nandu }</option>
							<option value="偏难">偏难</option>
							<option value="适中">适中</option>
							<option value="简单">简单</option>
						</select>
					</div>
					
					<div class="form-group">
						<label>课题工作量：</label>
						<select class="form-control" id="liang" name="liang" >
							<option value="${liang }">${liang }</option>
							<option value="偏大">偏大</option>
							<option value="适中">适中</option>
							<option value="偏小">偏小</option>
						</select>
					</div>
					
					<div class="form-group">
						<label>课题来源：</label>
						<select class="form-control" id="from" name="from" >
							<option value="${from }">${from }</option>
							<option value="教师自拟">教师自拟</option>
							<option value="学生自拟">学生自拟</option>
							<option value="科研项目">科研项目</option>
							<option value="社会实践">社会实践</option>
						</select>
					</div>
					
					<div class="form-group">
						<label>课题类型：</label>
						<select class="form-control" id="leixing" name="leixing" >
							<option value="${leixing }">${leixing }</option>
							<option value="设计开发">设计开发</option>
							<option value="应用研究">应用研究</option>
							<option value="理论研究">理论研究</option>
							<option value="其他">其他</option>
						</select>
					</div>
					<div class="form-group">
						<label>课题描述:</label>
						<div>
							<input type="text" class="form-control" id="thesisDesc" name="thesisDesc" value="${thesisTitleDesc }" >
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="col-sm-3"></div>
							<button type="submit" class="btn btn-primary col-sm-2">提交</button>
							<div class="col-sm-2"></div>
							<button type="reset" class="btn btn-danger col-sm-2">重置</button>
							<div class="col-sm-3"></div>
						</div>
					</div>

				</form>
				
			</div>
		</div>

	</div>

</body>
</html>