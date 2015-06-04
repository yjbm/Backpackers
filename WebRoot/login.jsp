<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<head>
		<base href="<%=basePath%>">

		<title>登录</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<!-- biggernews powered by Bootstrap -->
		<!-- 开始必须带有的样式文件与页面宽度自动调整JS -->
		<link href="css/biggernews.min.css" rel='stylesheet' type='text/css' />
		<link href="css/biggernews.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href="css/blue.css" rel="stylesheet" type="text/css" media="all" />
		<!-- 结束必须带有的样式文件与页面宽度自动调整JS -->
		<!-- 开始主页新闻幻灯片 -->
		<!-- 使用jquery -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<!-- 结束jquery -->
		<link rel="stylesheet" href="css/fwslider.css" media="all">
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/fwslider.js"></script>
		<!-- 结束主页新闻幻灯片 -->
		<!-- 搜索检查 -->
	</head>
	<body
		style="background-image: url(Scenic_spots_image/wild_oliva_light_head.png)">
		<div class="header_bg"
			style="background-image: url(Scenic_spots_image/wild_oliva_light_head.png)">
			<div class="container">
				<div class="header">
					<a class="logo" href="index.jsp"> <img width="215" height="90"
							src="Scenic_spots_image/logo2.png" alt="" /> <!--span class="logo_title"><strong>背包客</strong></span>-->
					</a>
					<div class="h_menu">
						<a id="touch-menu" class="mobile-menu" href="#">菜单</a>
						<ul class="menu list-unstyled">
							<li>
								<a href="index.jsp">首页</a>
							</li>

							<li class="activate">
								<a href="login.jsp">登录</a>
							</li>
						</ul>
						<script src="js/menu.js" type="text/javascript"></script>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		<!--头 end-->


		<!--banner start-->
		<div class="box1"
			style="background-image: url(); background-repeat: repeat-x">

			<div class="box2" style="height: 387px;">
				<div class="login">




					<div class="main1-1" style="text-align: center">
						<div class="m1" style="font-size: 20px">
							登录/LOGIN
						</div>
						<div class="m2" style="font-size: 15px">
							<form action="servlet/UserServlet?action=1" method="post" name="">


								用户名：
								<input type="text" name="UserName" value=""></br>


								密&nbsp;&nbsp;&nbsp;码：
								<input type="Password" name="Password">


								<br />

									<input type="radio" name="" value="guanli">
									管理员

									<input type="radio" name="" value="viewer">
									用户
								
								<input type="submit" value="登陆">
							</form>
						</div>
						<div class="m3" >

							</div>
<div id="sign"><a href="register.jsp"><i class="icon icon-user"></i>没有账号？点这里注册 </a></div>
</div>
							<p>
								@背包客官方旅游工作室
							</p>
						</div>

					</div>



				</div>


			</div>
		</div>
		<!--banner end-->


		<div class="box2">



			<!--foot start-->

		</div>
		<!--foot end-->
	</body>
</html>
