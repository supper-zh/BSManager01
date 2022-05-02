<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>毕业设计管理系统</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        body{
            background-image: url(images/home.png);
            background-repeat:no-repeat;
            background-size:100% 100%;
            -moz-background-size:100% 100%;
            background-attachment: fixed;
        }

        *{
            border: 0px solid transparent !important;
        }

    </style>

</head>
<body>


<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand">毕业设计管理系统</a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">登录系统<span class="caret"></span></a>

                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/student/studentLogin.jsp">学生登录</a></li>
                        <li><a href="${pageContext.request.contextPath}/teacher/teacherLogin.jsp">教师登录</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/adminLogin.jsp">教学秘书登录</a></li>
                        <li><a href="${pageContext.request.contextPath}/super/superLogin.jsp">系主任登录</a></li>
                    </ul>
                </li>

                <li><a href="#">公告查看</a></li>
                <li><a href="#">文件下载</a></li>
                <li><a href="#">答疑解惑</a></li>

            </ul>
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="搜索你想要的内容">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
        </div>
    </div>
</nav>

<%--	<div class="bs-example" data-example-id="simple-table">--%>
<%--		--%>
<%--&lt;%&ndash;		<img src="images/home.jpg" width="1150" height="580">&ndash;%&gt;--%>

<%--		<table class="table">--%>
<%--			<caption>Optional table caption.</caption>--%>
<%--			<thead>--%>
<%--			<tr>--%>
<%--				<th>--%>
<%--					<font size="4px">内容简介</font>--%>
<%--				</th>--%>
<%--				<th>--%>
<%--					<font size="4px">发布时间</font>--%>
<%--				</th>--%>
<%--			</tr>--%>
<%--			</thead>--%>
<%--			<tbody>--%>
<%--			<c:forEach items="${announcementList }" var="announce">--%>
<%--				<c:url value="/admin/deleteAnnouncement" var="deleteUrl">--%>
<%--					<c:param name="id" value="${announce.id }"></c:param>--%>
<%--				</c:url>--%>
<%--				<tr>--%>
<%--					<td  scope="row" class="col-md-8" >${announce.context }</td>--%>
<%--					<td  scope="row" class="col-md-3">${announce.timeFormat }</td>--%>
<%--				</tr>--%>
<%--			</c:forEach>--%>
<%--			</tbody>--%>
<%--		</table>--%>
<%--	</div>--%>

</body>
</html>