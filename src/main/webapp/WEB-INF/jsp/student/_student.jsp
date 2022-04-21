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

    <title>学生主页</title>

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
              <a href="${pageContext.request.contextPath}/student/main" class="site_title"><i class="fa fa-paw"></i> <span>毕业设计管理系统</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="../images/stu.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>学生主页</span>
                <h2>${sessionScope.student.studentName }</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>信息管理</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-edit"></i> 修改资料 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/student/modifyInfo">修改个人信息</a></li>
                      <li><a href="${pageContext.request.contextPath}/student/modifyPassword">修改个人密码</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-tags"></i> 课题管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/student/thesis">选择课题</a></li>
                      <li><a href="${pageContext.request.contextPath}/student/thesisResult">查看结果</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-flag"></i> 进度管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
						<li><a href="${pageContext.request.contextPath}/student/wendangResult">各文档完成情况</a></li>
						<li><a href="${pageContext.request.contextPath}/student/viewTaskOpening">查看课题资料</a></li>
						<li><a href="${pageContext.request.contextPath}/student/sectionTask">查看阶段任务</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-folder-open"></i> 文档管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
						<li><a href="${pageContext.request.contextPath}/student/uploadFile">上传文档</a></li>
						<li><a href="${pageContext.request.contextPath}/student/resourcesDownload">查看已上传的文档</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-question-circle"></i> 提问管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
						<li><a href="${pageContext.request.contextPath}/student/studentDoubt">提出疑惑</a></li>
						<li><a href="${pageContext.request.contextPath}/student/studentDoubtList">查看解答</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-eye"></i> 查看信息 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
						<li><a href="${pageContext.request.contextPath}/student/announcement">查看公告</a></li>
						<li><a href="${pageContext.request.contextPath}/student/score">查看成绩</a></li>
						<li><a href="${pageContext.request.contextPath}/student/qualification">查看答辩资格</a></li>
                    </ul>
                  </li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
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
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="../images/stu.jpg" alt="">${sessionScope.student.studentName }
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> 个人信息</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>设置</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">帮助</a></li>
                    <li><a href="${pageContext.request.contextPath}/student/studentLogin.jsp"><i class="fa fa-sign-out pull-right"></i> 退出登录</a></li>
                  </ul>
                </li>

              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->



        <!-- footer content -->
<!--         <footer>
          <div class="pull-right">
            	成都信息工程大学 - <a href="https://colorlib.com">计算机学院</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        /footer content
      </div>
    </div> -->

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
