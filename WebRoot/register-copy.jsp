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
		<base href="<%=basePath%>">

		<title>My JSP 'index.jsp' starting page</title>
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
								<a href="register.jsp">注册</a>
							</li>
						</ul>
						<script src="js/menu.js" type="text/javascript"></script>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div id="social_media_wrapper">
				<div class="menu-action">
					<form action="" method="post" name="form_search">
						<%
							String message = (String) request.getAttribute("message");
							if (message != null) {
								out.println(message);
							}
						%>
						<div class="menu-key-wrapper">
							<input id="search-key" class="menu-key" name="Scenic_spots_name"
								type="text" autocomplete="off" maxlength="100">
							<div id="menu-tip-show" class="menu-hint-list menu-tip-list"></div>
						</div>
						<p class="btn-menu-bg">
							<input id="search-submit" class="btn-menu" type="submit"
								value="搜 索" name="search" onclick="checkSubmit();">
						</p>
					</form>
				</div>
			</div>
		<!--banner start-->
		<div class="box1"
			style="background-image: url(); background-repeat: repeat-x">

			<div class="box2" style="height: 387px;">
				<div class="login">




					<div class="main1-1" style="font-size: 20px">
						<div class="m2" style="text-align: center">
							<form action="servlet/UserServlet?action=2" method="post" name="">

								<p style="margin-right: 15px">
									用户名:&nbsp;&nbsp;&nbsp;
									<input type="text" name="UserName" value="">
								</p>
								<br />
								<br />
								<p style="margin-right: 15px">
									密&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;&nbsp;
									<input type="password" name="Password">
								</p>
								<br />
								<br />
								<p style="margin-right: 15px">
									昵&nbsp;&nbsp;&nbsp;称:&nbsp;&nbsp;&nbsp;
									<input type="text" name="Name">
								</p>
								<br />
								<br />
								<p style="margin-right: 15px">
									性&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;
									<select name="Gender">
										<option value="famale">
											女
										</option>
										<option value="male">
											男
										</option>
									</select>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<br />
									<br />
								<p style="margin-right: 15px">
									地&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;&nbsp;
									<input type="text" name="Address">
								</p>
								<br />
								<br />
								<p style="margin-right: 15px">
									手&nbsp;&nbsp;&nbsp;机:&nbsp;&nbsp;&nbsp;
									<input type="text" name="Telephone">
								</p>
								<br />
								<br />
						<!--			<p style="margin-right: 15px">
									个性签名:
									<input type="password" name="">
									<br />
								</p>
								<br />
								<br />
				    			<p style="margin-right: 15px">
									上传头像
									<input type="file" name="uploadFile" />
								</p>  -->
								<br />
								<br />
								<input type="submit" name="" value="注&nbsp;&nbsp;&nbsp;&nbsp;册">
							</form>

							<br />


						
						</div>

						<div class="m3">
							<p>
								&nbsp;
							</p>
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
