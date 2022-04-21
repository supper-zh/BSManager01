<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--  教师信息主页  -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师主页</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_teacher.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:800px">
		<div class="row">
			<div class="col-md-8">
				<div align="center">
					<p><font color="red" size="5px">${deleteMessage }</font> </p>
					<p><font color="red" size="5px">${message }</font> </p>
				</div>
			</div>
				<div class="col-md-9">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>教师信息</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <table class="table table-bordered">
                      <tbody>
                        <tr>
                          <th scope="row">教师编号</th>
                          <td>${sessionScope.teacher.teacherNo }</td>
                        </tr>
                        <tr>
                          <th scope="row">姓名</th>
                          <td>${sessionScope.teacher.teacherName }</td>
                        </tr>
                        <tr>
                          <th scope="row">性别</th>
                          <td>${sessionScope.teacher.sex }</td>
                        </tr>
                        <tr>
                          <th scope="row">院系</th>
                          <td>${sessionScope.teacher.departmentName }</td>
                        </tr>
                        <tr>
                          <th scope="row">职称</th>
                          <td>${sessionScope.teacher.zhicheng }</td>
                        </tr>
                        <tr>
                          <th scope="row">联系电话</th>
                          <td>${sessionScope.teacher.phone }</td>
                        </tr>
                        <tr>
                          <th scope="row">邮箱</th>
                          <td>${sessionScope.teacher.email }</td>
                        </tr>
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>
             

			
		</div>
	</div>



</body>
</html>