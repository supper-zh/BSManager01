<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/4/30 0030
  Time: 上午 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>系主任登录</title>

    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- Favicon and touch icons网站图标 触摸图标-->
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>

<div class="top-content">
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>管理员登录</strong> </h1>
                    <div class="description">
<%--                        //返回首页--%>
                        <a href="${pageContext.request.contextPath}/quit">退出登录页面</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>登录到系统</h3>
<%--                            //--%>
                            <p>请输入编号与密码：</p>
                        </div>

                    </div>
                    <div class="form-bottom">
                        <form role="form" action="${pageContext.request.contextPath}/super/login" method="post" class="login-form">
                            <div class="form-group">
<%----%>
                                <label class="sr-only">Username</label>
                                <input type="text" id="userNo" name="userNo" placeholder="编号：" class="form-username form-control">
                            </div>
                            <div class="form-group">
<%----%>
                                <label class="sr-only">Password</label>
                                <input type="password" id="password" name="password" placeholder="密码：" class="form-password form-control">
                            </div>
                            <div align="center">
                                <font size="4" color="red">${message}</font>
                            </div>
                            <button type="submit" class="btn">登录</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/scripts.js"></script>

</body>
</html>