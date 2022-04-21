<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--  学生信息主页  -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生主页</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
	
	<div class="container">
		<jsp:include page="_student.jsp" />
	</div>
	
 	<div class="right_col" role="main" style="height:656px">
 		<div class="row">
			<div class="col-md-8">
				<div align="center">
					<p><font color="red" size="5px">${message }</font></p>
					<p><font color="red" size="5px">${topicMessage }</font></p>
					<p><font color="red" size="5px">${Message }</font></p>
				</div>
			</div>
		</div>
 		     <div class="col-md-9">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>学生信息</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <table class="table table-bordered">
                      <tbody>
                        <tr>
                          <th scope="row">学号</th>
                          <td>${sessionScope.student.studentNo }</td>
                        </tr>
                        <tr>
                          <th scope="row">姓名</th>
                          <td>${sessionScope.student.studentName }</td>
                        </tr>
                        <tr>
                          <th scope="row">性别</th>
                          <td>${sessionScope.student.sex }</td>
                        </tr>
                        <tr>
                          <th scope="row">专业</th>
                          <td>${sessionScope.student.majorName }</td>
                        </tr>
                        <tr>
                          <th scope="row">年级</th>
                          <td>${sessionScope.student.grade }</td>
                        </tr>
                        <tr>
                          <th scope="row">联系电话</th>
                          <td>${sessionScope.student.phone }</td>
                        </tr>
                        <tr>
                          <th scope="row">邮箱</th>
                          <td>${sessionScope.student.email }</td>
                        </tr>
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>
		<div class="row">

		</div>

	</div>



</body>
</html>