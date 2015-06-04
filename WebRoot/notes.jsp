<%@ page language="java" import="java.util.*,com.bean.*,java.text.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>游记列表</title>
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
<script language ="JavaScript">
function checkSubmit(){
   if(form_search.Scenic_spots_name.value ==null || form_search.Scenic_spots_name.value==""){
      alert("请输入搜索内容!");
      return false;
   }
      return true;
}
</script>
</head>
<body style="background-image:url(Scenic_spots_image/wild_oliva_light_head.png)">
<div class="header_bg" style="background-image:url(Scenic_spots_image/wild_oliva_light_head.png)">
<div class="container">
	<div class="header">
		<a class="logo" href="index.jsp">
			<img width="215" height="90" src="Scenic_spots_image/logo2.png" alt=""/>
			<!--span class="logo_title"><strong>背包客</strong></span>-->
		</a>
		<div class="h_menu">
		<a id="touch-menu" class="mobile-menu" href="#">菜单</a>
		<nav>
		<ul class="menu list-unstyled">
			<li><a href="index.jsp">首页</a></li>
			<li class="activate"><a href="servlet/Travel_notesServlet?action=1&action1=1&index=0&keyword=">游记</a></li>
            <li><a href="servlet/Scenic_spotsServlet?action=1&index=0&keyword=" >景点</a>
			<ul class="sub-menu list-unstyled">
				<li><a href="www.baidu.com">浙江</a>
					<ul class="list-unstyled">
						<li><a href="www.baidu.com">杭州</a></li>
						<li><a href="www.baidu.com">嘉兴</a></li>
					</ul>
				</li>
				<li><a href="www.baidu.com">福建</a>
					<ul class="list-unstyled">
						<li><a href="www.baidu.com">厦门</a></li>
						<li><a href="www.baidu.com">武夷山</a></li>
					</ul>
				</li> 
				<li><a href="www.baidu.com">广西</a>
					<ul class="list-unstyled">
						<li><a href="www.baidu.com">桂林</a></li>
						<li><a href="www.baidu.com">阳朔</a></li>
					</ul>
				</li>
				<li><a href="www.baidu.com">云南</a>
                	<ul class="list-unstyled">
						<li><a href="www.baidu.com">丽江</a></li>
						<li><a href="www.baidu.com">大理</a></li>
   						<li><a href="www.baidu.com">西双版纳</a></li>
					</ul>
				</li>
				<li><a href="www.baidu.com">湖南</a>
					<ul class="list-unstyled">
						<li><a href="www.baidu.com">张家界</a></li>
						<li><a href="www.baidu.com">凤凰</a></li>
					</ul>
				</li> 
			</ul>
			</li>
			<% 
  User user= (User)request.getSession().getAttribute("User");
   if(user==null)
   {
   %>
			<li><a href="login.jsp">还没登陆？戳这里</a></li>   
    <% 
    }
    else
    {
          %>
        <li><a href="user-information.jsp">个人信息</a>
			<ul class="sub-menu list-unstyled">
				<li><a href="servlet/UserServlet?action=0">信息修改</a></li>
				<li><a href="user-addblog.jsp">添加游记</a></li>				
				<li><a href="servlet/Scenic_spots_CollectionServlet?action1=2&State=1&index=0">我的足迹</a></li>
				<li><a href="servlet/Travel_notesServlet?action=1&action1=2&index=0&keyword=">我的游记</a></li>
				
			</ul>
			</li>
    <% 
    }
%>
		</ul>
		</nav>
		<script src="js/menu.js" type="text/javascript"></script>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<div id="social_media_wrapper"> 
		<div class="menu-action">
		<form action="servlet/Travel_notesServlet?action=1&index=0&action1=1" method="post" name="form_search">
		<%
		String message = (String)request.getAttribute("message");
		if(message!=null){
			out.println(message);
			}
		%>
			<div class="menu-key-wrapper">
				<input id="search-key" class="menu-key" name="keyword" type="text" autocomplete="off" maxlength="100">
				<div id="menu-tip-show" class="menu-hint-list menu-tip-list"></div>
			</div>
			<p class="btn-menu-bg">
				<input id="search-submit" class="btn-menu" type="submit" value="搜 索" name="search" onclick="checkSubmit();">
			</p>
		</form>
		</div>

</div>
<% 
  user= (User)request.getSession().getAttribute("User");
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
        <% out.println("欢迎你！  "+  user.getUserName());  %>
        
     <a href="servlet/UserServlet?action=4" ><i class="icon icon-user"></i>注销</a>
     </div>
    <% 
    }
%>
</div>
<!-- 开始幻灯片 -->
<div class="main_bg"><!-- start main -->
<div class="container">
	<div class="main_grid1">
		<h3 class="style pull-left">游记</h3>
		<div class="clearfix"></div>
	</div>
</div>
</div>
<div class="main_btm1"><!-- start main_btm -->
<div class="container">
	<div class="blog"><!-- start blog -->
			<div class="blog_main col-md-9">
				<% 
				   List list=(List)request.getAttribute("Travel_noteslist");
   					int count= Integer.valueOf(String.valueOf(request.getAttribute("Travel_noteslistcount"))).intValue();
   					 List listImage=(List)request.getAttribute("Travel_noteslistImage");
   					int[] Imagecount=(int[])request.getAttribute("Travel_noteslistImagecount");
				      SimpleDateFormat sdf = new SimpleDateFormat("yyyy"); 
				       SimpleDateFormat sdf1 = new SimpleDateFormat("MM-dd");
				      
				       SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
				     int index=Integer.valueOf(String.valueOf(request.getAttribute("index"))).intValue();
				     //int index=0;]
				     int k=index*8+8;
				     if(index*8+8>count)
				     {
				         k=count;
				      }
				    for(int i=index*8;i<k;i++)
				    {
				       Travel_notes tn=(Travel_notes)list.get(i);
				       List l=(List)listImage.get(i);
				       int imagecount1= Imagecount[i];
   					%>
   					 <div class="blog_list">
					  <div class="col-md-2 blog_date">
				    	<span class="date" ><%out.print(sdf.format(tn.getDate())+"<br>");out.print(sdf1.format(tn.getDate()));%></span>
				     	</div>
					   <div class="col-md-10 blog_left">
					<% 
					  int a=1;
					   if(imagecount1<1)
					      a=0;
				       for(int t=0;t<a;t++)
				       {
				           Travel_notes_Image ll=(Travel_notes_Image)l.get(t);
				           %>
						<a href="servlet/Travel_notesServlet?action=4&index=0&action1=1
							<%
							 out.print("&Travel_notes_ID="+tn.getTravel_notes_ID());%>
							 "><img src="<%out.print(ll.getTravel_notes_image());%>" alt="" class="img-responsive"/></a>
						
				           <% 
				       }
				       %>
				       <h4><a href="servlet/Travel_notesServlet?action=4&index=0&action1=1
							<%
							 out.print("&Travel_notes_ID="+tn.getTravel_notes_ID()); %>
							 ">
							 <%out.print("帖子标题："+tn.getTravel_notes_name());%>
							 </a>
							 <br>
							 </h4>
							 <p class="para"><%out.print("发帖人："+tn.getUserName());%></p>
							<p class="para"><%out.print("发帖时间："+df.format(tn.getDate()));%></p>
						<p class="para">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%out.print("简介："+tn.getTravel_notes_Raiders());%></p>					
						<div class="read_btn">
							<a href="servlet/Travel_notesServlet?action=4&index=0&action1=1
							<%
							 out.print("&Travel_notes_ID="+tn.getTravel_notes_ID());%>
							 ">
							 <br>
							 <button class="btn">查看评论</button></a>
						</div>
						
					<div class="main1-1" style="font-size: 15px">
						<div class="m2" style="text-align: right">
						<dd class="operation">
							<a href="javascript:void(0)" rel="nofollow" class="ding" title="顶">	
							<a href="servlet/Travel_notesServlet?action=3&index=0&action1=1
							<%
							out.print("&keyword="+request.getParameter("keyword"));
							 out.print("&Travel_notes_ID="+tn.getTravel_notes_ID());%>
							 ">赞一个 </a><i><%out.print(tn.getTravel_notes_number_of_points());%></i></a>
						</dd>
												<% 
                              if(user!=null&&(user.getJurisdiction()!=0||user.getUserName().equals(tn.getUserName())))
                              {
                        %>
                        <dd class="operation">
							<a href="javascript:void(0)" rel="nofollow" class="ding" title="顶">	
							<a href="servlet/Travel_notesServlet?action=2&index=0&action1=1
							<%
							out.print("&keyword="+request.getParameter("keyword"));
							 out.print("&Travel_notes_ID="+tn.getTravel_notes_ID());%>
							 ">删除 </a></a>
						</dd>
						<%} %>
					</div>
				 </div>
					</div>
				 </div>
				       <% 
				    }
				   /* for (int i=0;i<count/8;i++)
				    {
				    
				    }*/
				    int m =(count+7)/8-1;        
				 if(index!=0) 
				 { 
				%>
				
                  <a href="servlet/Travel_notesServlet?action=1&action1=1&index=<%out.print(""+(index-1));out.print("&keyword="+request.getParameter("keyword"));%>">上一页</a>
                  <% 
                  }
                  if(index!=m&&count!=0)
                  {
                  %>
                  <a href="servlet/Travel_notesServlet?action=1&action1=1&index=<%out.print(""+(index+1));out.print("&keyword="+request.getParameter("keyword"));%>">下一页</a>
				
				<%
				 }
				
				%>

				<div class="clearfix"></div>
			</div>
			<div class="col-md-3 blog_right">
				<h4>精选旅游</h4>
				<ul class="ads_nav list-unstyled">
					<li><a href="#"><img src="Scenic_spots_image/ads_pic1.jpg" alt=""> </a></li>
					<li><a href="#"><img src="Scenic_spots_image/ads_pic2.jpg" alt=""> </a></li>
					<li><a href="#"><img src="Scenic_spots_image/ads_pic3.jpg" alt=""> </a></li>
					<li><a href="#"><img src="Scenic_spots_image/ads_pic4.jpg" alt=""> </a></li>
					<div class="clearfix"></div>
				</ul>
				<ul class="tag_nav list-unstyled">
					<h4>热点出发城市</h4>
						<li><a href="#">北京</a></li>
						<li><a href="#">上海</a></li>
						<li><a href="#">天津</a></li>
						<li><a href="#">青岛</a></li>
						<li><a href="#">南京</a></li>
					<!-- 	<li class="active"><a href="#"></a></li> -->
						<li><a href="#">杭州</a></li>
						<li><a href="#">厦门</a></li>
						<li><a href="#">成都</a></li>
						<li><a href="#">深圳</a></li>
						<li><a href="#">广州</a></li>
						<li><a href="#">沈阳</a></li>
						<li><a href="#">武汉</a></li>
						<li><a href="#">三亚</a></li>
						<li><a href="#">香港</a></li>
						<li><a href="#">澳门</a></li>
						<li><a href="#">台北</a></li>
						<div class="clearfix"></div>
				</ul>
				<div class="news_letter">
					<h4>私信我们</h4>
						<form>
							<input type="text" placeholder="有什么想吐槽">
							<input type="submit" value="提交">
						</form>
				</div>
			</div>
			<div class="clearfix"></div>
	</div><!-- end blog -->
</div>
</div>
<!--结束幻灯片 -->
<!-- 开始底栏 -->
<div class="footer1_bg">
<div class="container">
	<div class="footer1">
		<div class="copy pull-left">
			<p class="link">Copyright &copy; 2015.Tekker All rights reserved.</p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</div>
<!-- 结束底栏 -->
</body>
</html>