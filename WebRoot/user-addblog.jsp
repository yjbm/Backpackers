<%@ page language="java" import="java.util.*,com.bean.*" pageEncoding="UTF-8"%>
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

		<title>游记添加</title>
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
							<li>
								<a href="servlet/Travel_notesServlet?action=1&action1=1&index=0&keyword=">游记</a>
							</li>
							<li>
								<a href="servlet/Scenic_spotsServlet?action=1&index=0&keyword=" >景点</a>
								<ul class="sub-menu list-unstyled">
									<li>
										<a href="www.baidu.com">浙江</a>
										<ul class="list-unstyled">
											<li>
												<a href="www.baidu.com">杭州</a>
											</li>
											<li>
												<a href="www.baidu.com">嘉兴</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="www.baidu.com">福建</a>
										<ul class="list-unstyled">
											<li>
												<a href="www.baidu.com">厦门</a>
											</li>
											<li>
												<a href="www.baidu.com">武夷山</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="www.baidu.com">广西</a>
										<ul class="list-unstyled">
											<li>
												<a href="www.baidu.com">桂林</a>
											</li>
											<li>
												<a href="www.baidu.com">阳朔</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="www.baidu.com">云南</a>
										<ul class="list-unstyled">
											<li>
												<a href="www.baidu.com">丽江</a>
											</li>
											<li>
												<a href="www.baidu.com">大理</a>
											</li>
											<li>
												<a href="www.baidu.com">西双版纳</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="www.baidu.com">湖南</a>
										<ul class="list-unstyled">
											<li>
												<a href="www.baidu.com">张家界</a>
											</li>
											<li>
												<a href="www.baidu.com">凤凰</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
        <li><a href="user-information.jsp">个人信息</a>
			<ul class="sub-menu list-unstyled">
				<li><a href="servlet/UserServlet?action=0">信息修改</a></li>
				<li><a href="user-addblog.jsp">添加游记</a></li>				
				<li><a href="servlet/Scenic_spots_CollectionServlet?action1=2&State=1&index=0">我的足迹</a></li>
				<li><a href="servlet/Travel_notesServlet?action=1&action1=2&index=0&keyword=">我的游记</a></li>
				
			</ul>
			</li>
		</ul>
		</nav>
						<script src="js/menu.js" type="text/javascript"></script>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
</div>
<% 
  User user= (User)request.getSession().getAttribute("User");
   if(user==null)
   {
   %>
     <div id="sign"><a href="login.jsp"><i class="icon icon-user"></i>登 录</a></div>
    <% 
    }
    else
    {
          %>
     <div id="sign">
        <% out.println("欢迎你！  "+ user.getUserName());  %>
        
     <a href="servlet/UserServlet?action=4" ><i class="icon icon-user"></i>注销</a>
     </div>
    <% 
    }
%>
</div>
		</div>
		<div class="main_bg"><!-- start main -->
<div class="container">
	<div class="main_grid1">
		<h3 class="style pull-left">个人信息-添加游记</h3>
		<div class="clearfix"></div>
	</div>
</div>
</div>
		
		<!-- 开始幻灯片 -->
		<table width="100%" border="0" cellspacing="0" cellpadding="0">

			<colgroup>
				<col width="140" />
				<col />
			</colgroup>
		<form action="servlet/Travel_notesServlet?action=5&action1=1" method="post" enctype="multipart/form-data" name="as" >
		
			<tr>
				<th width="20%">
					&nbsp;
				</th>
				<th width="8%">
					文章标题
				</th>
				<td width="53%">
					<label>
						<input autocomplete="off" class="required" id="topic_title"
							maxlength="80" name="Travel_notes_name" size="60" type="text" />
						<span id="title_count_notice" class="red">可以输入80个字符</span>
					</label>
				</td>
			</tr>
			<tr>
				<th valign="top">
					&nbsp;
				</th>
				<th valign="top">
					文章内容
				</th>
				<td>
					<textarea class="required" cols="80" id="topic_body"
						name="Travel_notes_Raiders" rows="20">
</textarea>
					<div class="body_count">
						<span id="topic_body_count_notice">你还可以输入10000个字符</span>
					</div>
				</td>
			</tr>

			<tr>
				<th>
					&nbsp;
				</th>
			</tr>
			<tr>
				<th>
					&nbsp;
				</th>
				<th>
					上传图片
				</th>
				<td>
					<p style="margin-right: 15px">
						<input type="file" name="uploadFile" />
					</p>

				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
				<td>
					<div class="btn_area">

						<input class="btn_b submit_load_icon" name="commit" type="submit"
							value="发表帖子" />
					</div>

				</td>

			</tr>
		</form>
		</table>

		<!--结束幻灯片 -->
		<!-- 开始底栏 -->
		<div class="footer1_bg">
			<div class="container">
				<div class="footer1">
					<div class="copy pull-left">
						<p class="link">
							Copyright &copy; 2015.Tekker All rights reserved.
						</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!-- 结束底栏 -->

	</body>
</html>