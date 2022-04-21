<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--  管理员信息主页  -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员主页</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_admin.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:656px">
		<div class="row">
			<div class="col-md-8">
				<div align="center">
					<p><font color="red" size="5px">${message }</font></p>
				</div>
				<!-- <h4>管理员信息</h4> -->
				<ul class="list-inline">
					<li>管理员信息</li>
				</ul>
				<br>
<%-- 				<p><font color="red" size="5px">${message }</font></p> --%>
				<table class="table table-bordered" >
					<tr>
						<th width="20%" align="center"><font size="4px">当前账号:</font></th>
						<td width="80%" align="center"><font size="4px">${sessionScope.currentUser.userNo }</font></td>
					</tr>

				</table>

			</div>
		</div>
	</div>



</body>
</html>