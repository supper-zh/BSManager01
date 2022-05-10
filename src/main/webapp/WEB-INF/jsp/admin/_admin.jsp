<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="../images/favicon.ico" type="image/ico" />

    <title>教学秘书主页</title>

    <!-- Bootstrap -->
    <link href="/BSManager/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/BSManager/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/BSManager/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/BSManager/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="/BSManager/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="/BSManager/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="/BSManager/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/BSManager/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
<%--                新的--%>
              <a href="${pageContext.request.contextPath}/admin/main" class="site_title" style="font-size: medium"><span >大学生毕业设计管理系统</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
<%--                图标主页--%>
              <div class="profile_pic">
                <img src="${pageContext.request.contextPath}/images/home-3.png" alt="..." class="img-circle profile_img">
              </div>

              <div class="profile_info">
                <span>管理员主页</span>
<%--                小人图标--%>
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                <h2>用户名：${sessionScope.currentUser.userNo }</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>信息管理</h3>
                <ul class="nav side-menu">
                    <li><a href="${pageContext.request.contextPath}/admin/modifyPassword"><i class="fa fa-edit"></i> 修改资料 </a>

                    </li>
<%--                    //系主任添加--%>
                    <li><a><i class="fa fa-leaf"></i> 系主任管理 <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="${pageContext.request.contextPath}/admin/deanAdd">添加系主任</a></li>
                            <%--						<li><a href="${pageContext.request.contextPath}/admin/showAllTeacher">导师操作</a></li>--%>
                            <li><a href="${pageContext.request.contextPath}/admin/showAllDean">系主任操作</a></li>
                        </ul>
                    </li>

                  <li><a><i class="fa fa-leaf"></i> 导师管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    	<li><a href="${pageContext.request.contextPath}/admin/teacherAdd">添加导师</a></li>
<%--						<li><a href="${pageContext.request.contextPath}/admin/showAllTeacher">导师操作</a></li>--%>
                        <li><a href="${pageContext.request.contextPath}/admin/showAllTeacher2">导师操作</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-graduation-cap"></i> 学生管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    	<li><a href="${pageContext.request.contextPath}/admin/studentAdd">添加学生</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/showAllStudent2">学生操作</a></li>
                    </ul>
                  </li>
                    <li><a href="${pageContext.request.contextPath}/admin/checkThesis2"><i class="fa fa-tags"></i> 审核选题 </a>
                    </li>
                  <li><a><i class="fa fa-bullhorn"></i> 公告管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    	<li><a href="${pageContext.request.contextPath}/admin/announcement2">查看公告</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/publishAnnouncement">发布公告</a></li>
                    </ul>
                  </li>
                  <li><a href="${pageContext.request.contextPath}/admin/shujufenxi"><i class="fa fa-bar-chart"></i> 数据分析 </a>
                  </li>
                  <li><a href="${pageContext.request.contextPath}/admin/showThesisPaper"><i class="fa fa-folder-open"></i> 查看已上传论文 </a>
                  </li>
                </ul>
              </div>
              
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
<%--              <a data-toggle="tooltip" data-placement="top" title="Settings">--%>
<%--                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>--%>
<%--              </a>--%>
<%--              <a data-toggle="tooltip" data-placement="top" title="FullScreen">--%>
<%--                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>--%>
<%--              </a>--%>
<%--              <a data-toggle="tooltip" data-placement="top" title="Lock">--%>
<%--                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>--%>
<%--              </a>--%>

<%--              一键退出登录--%>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="${pageContext.request.contextPath}/quit">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
<%--                  全屏显示--%>
                <a id="menu_toggle"><span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
<%--                    加个笑脸--%>
<%--                      用户名直接显示--%>
                    <img src="${pageContext.request.contextPath}/images/emotion-happy-line.png" alt="">${sessionScope.currentUser.userNo }
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">

<%--                      //查看个人信息--%>
                    <li><a href="/BSManager/admin/main"> 个人信息</a></li>

<%--                    <li>--%>
<%--                      <a href="javascript:;">--%>
<%--                        <span class="badge bg-red pull-right">50%</span>--%>
<%--                        <span>设置</span>--%>
<%--                      </a>--%>
<%--                    </li>--%>

<%--                    还没有设置具体模块，先跳转到这里吧--%>
                    <li><a href="/BSManager/admin/announcement">帮助</a></li>
                    <li><a href="/BSManager/index.jsp"><i class="fa fa-sign-out pull-right"></i> 退出登录</a></li>
                  </ul>

                </li>

              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->



<%--      footer content--%>
<%--     <footer>--%>
<%--          <div class="pull-right">--%>
<%--            	anhui工程大学 - <a href="https://colorlib.com">计算机与信息学院</a>--%>
<%--          </div>--%>
<%--          <div class="clearfix"></div>--%>
<%--     </footer>--%>


    <!-- jQuery -->
    <script src="/BSManager/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/BSManager/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/BSManager/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/BSManager/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="/BSManager/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="/BSManager/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="/BSManager/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="/BSManager/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="/BSManager/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="/BSManager/vendors/Flot/jquery.flot.js"></script>
    <script src="/BSManager/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="/BSManager/vendors/Flot/jquery.flot.time.js"></script>
    <script src="/BSManager/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="/BSManager/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="/BSManager/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="/BSManager/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="/BSManager/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="/BSManager/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="/BSManager/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="/BSManager/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="/BSManager/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="/BSManager/vendors/moment/min/moment.min.js"></script>
    <script src="/BSManager/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="/BSManager/build/js/custom.min.js"></script>

  </body>
</html>
