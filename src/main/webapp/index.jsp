<%--防止中文乱码--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/html">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>大学生毕业设计管理系统</title>
	<link media="all" type="text/css" rel="stylesheet" href="bootstrap-demo/bootstrap3.1.1/css/bootstrap.min.css">
	<link media="all" type="text/css" rel="stylesheet" href="bootstrap-demo/css/loginstyle.css">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
	.active{
		/*border-color: #0b97c4;*/
		/*background-color: #f0f0f0;*/
		background-color: #daf1e8;
	}

</style>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<form class="form-horizontal" action="${pageContext.request.contextPath}/login" method="post">
				<span class="heading">大学生毕业设计管理系统</span>
				<div class="btn-group form-check" data-toggle="buttons" style="margin: 7px; color: #0b97c4" >
					<label class="btn btn-secondary" >
						<span type="radio" class="join-btn"><p style="vertical-align: inherit;">账户类型：</p>
						</span>
					</label>
					<lebal class="btn btn-secondary active">
						<input type="radio" name="permission" class="join-btn" id="user1" value="1">
						学生
					</lebal>
					<label class="btn btn-secondary">
						<input type="radio" name="permission" class="join-btn" id="user2" value="2">
						教师
					</label>
					<label class="btn btn-secondary">
						<input type="radio" name="permission" class="join-btn" id="user3" value="3">
						管理员
					</label>
				</div>

				<div class="form-group">
					<input name="userNo" type="text" class="form-control" id="userNo" value="" placeholder="请输入用户名："/>
				</div>
				<div class="form-group">
					<input name="password" type="password" class="form-control" id="password" value="" alt="密码" placeholder="请输入密码："/>
				</div>

<%--				前端验证码的显示实现--%>
				<div class="form-inline">
					<label for="password">验证码：</label>
					<input class="form-control" type="text" name="check"  id="check" placeholder="请输入验证码"/>
					<a href="javascript:refreshCode()">
						<%--   这里需要注意src的路径，为controller层指定的路径@RequestMapping(value = "/checkCode")的路径--%>
						<%--   Reload()方法实现点击一次请求一次后台controller--%>
<%--						<img src="${pageContext.request.contextPath}/checkCode" title="看不清点击刷新" id="vcode">--%>
						<img id="CreateCheckCode" src="checkCode.do" onclick="Reload()" title="看不清点击刷新"/>
					</a>
				</div>
				<hr>
				<div class="form-group">
					<li class="li4">
						<input class="submit" type="submit" id="btnSubmit" value="登录">
					</li>
					<div class="form-group">
<%--						<input type="checkbox" name="rememenber" id="rememenber"><a class="label_1">记住密码</a><br/>--%>
						<a href="#">忘记密码?</a>
					</div>
					<label class="btn btn-secondary">
						<div align="center" style="font-size: 18px; color: red" >
							<p>${message}</p>
						</div>

					</label>

				</div>
			</form>
		</div>
	</div>
</div>
</body>

<script src="bootstrap-demo/js/jquery.min.js" type="text/javascript"></script>
<!--动态背景-->
<script src="bootstrap-demo/js/jquery.gradientify.min.js"></script>

<script>
	$(document).ready(function() {
		$("body").gradientify({
			gradients: [
				{ start: [49,76,172], stop: [242,159,191] },
				{ start: [255,103,69], stop: [240,154,241] },
				{ start: [33,229,241], stop: [235,236,117] }
			]
		});
	});
</script>


<!--登录验证-->
<script>

	//切换验证码
	<!-- 验证码图片点击切换 -->
	<!-- 通过Date来改变每次访问的url不同 -->
		function Reload() {
		document.getElementById("CreateCheckCode").src =
				// 获取当前时间使其请求不重复
				document.getElementById("CreateCheckCode").src + "?nocache=" + new Date().getTime() + ".do";
	}

	$('#userNo').focus(function () {
		$('#userNo').val('');
	})
	$('#password').focus(function () {
		$('#password').val('');
	})
	$('#check').focus(function () {
		$('#check').val('');
	})

	$('#userNo').blur(function () {
		if ($('#userNo').val() =='') {
			$('#userNo').val('用户名不能为空');
			$('#userNo').css({'color':'red'});
		}
	})
	$('#check').blur(function () {
		if ($('#check').val() =='') {
			$('#check').val('验证码不能为空');
			$('#check').css({'color':'red'});
		}
	})

	$('#userNo').focus(function () {
		$('#userNo').css({'color':'#ADADAD'});
	});

	// $('#password').blur(function () {
	// 	if ($('#password').val() == '') {
	// 		// $('#password').val('密码不能为空');
	// 		$('#password').css({'color':'red'});
	// 	}
	// })

	$('#password').focus(function () {
		$('#password').css({'color':'#ADADAD'});
	});
</script>
</html>
