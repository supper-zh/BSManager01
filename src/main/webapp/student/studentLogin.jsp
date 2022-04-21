<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>学生登录</title>
	<!-- CSS -->
	   <!-- <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"> -->
	   <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	   <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
	   <link rel="stylesheet" href="assets/css/form-elements.css">
	   <link rel="stylesheet" href="assets/css/style.css">
	
	<!-- Favicon and touch icons -->
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
                            <h1><strong>学生登录</strong> </h1>
                            <div class="description">
                            	
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>登录到系统</h3>
                            		<p>在下面输入学号和密码</p>
                        		</div>
                        		
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="${pageContext.request.contextPath}/student/login" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username"></label>
			                        	<input type="text" placeholder="学号：" class="form-username form-control" id="userNo" name="userNo" required>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password"></label>
			                        	<input type="password" placeholder="密码：" class="form-password form-control" id="password" name="password" required>
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
<!--         <script type="text/javascript">
        $("#login").click(function() {
			$.ajax({
				//url:"${APP_PATH}/depts",
				url:"${pageContext.request.contextPath}/student/login",
				type:"post",
				data:"userNo="+$("#userNo").val()+";password="+$("#password").val(),
				success:function(result){
					console.log(result);
					/* $("#deps_add_select").append("");
					$.each(result.extend.depts,function(){
						var optionEle = $("<option></option>").append(this.deptName).attr("value",this.deptId);
						optionEle.appendTo("#deps_add_select");
					}); */
				}
			});
		});
        </script> -->
</body>
</html>