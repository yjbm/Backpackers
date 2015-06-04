<%@ page language="java" import="java.util.*,com.bean.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户收藏</title>
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
			<li><a href="servlet/Travel_notesServlet?action=1&action1=1&index=0&keyword=">游记</a></li>
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
           <li class="activate"><a href="user-information.jsp">个人信息</a>
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
<div class="main_bg"><!-- start main -->
<div class="container">
	<div class="main_grid1">
		<h3 class="style pull-left">个人信息-我的足迹</h3>
		<div class="clearfix"></div>
	</div>
</div>
</div>
<% 
	 List list=(List)request.getSession().getAttribute("ssCollectionList");
      int count=Integer.parseInt(request.getSession().getAttribute("Listcount").toString());
   		int index=Integer.parseInt(request.getParameter("index"));			

 %>

<div class="用户" align="center">
<table>
<td>
<% int m=(index+1)*10;
 if(m>count)
 	 m=count;    
for(int i=index*10;i<m;i++)
{
   Scenic_spots_Collection ssc=(Scenic_spots_Collection)list.get(i);
%>
<tr>
<a href="servlet/Scenic_spotsServlet?action=4&index=0<%
		out.print("&Scenic_spots_ID="+ssc.getScenic_spots_ID());%>">
<h2><%out.print(ssc.getScenic_spots_Name());%></h2> 
</a>
<a href="servlet/Scenic_spots_CollectionServlet?action1=2&index=0&State=3<%
		out.print("&Scenic_spots_ID="+ssc.getScenic_spots_ID());%>">取消收藏</a>
</tr>

<%
}
%>

</td>
</table>
<% 				    int m1 =(count+9)/10-1;
				 if(index!=0) 
				 { 
				%>
				
                  <a href="servlet/Scenic_spots_CollectionServlet?action1=2&State=1&index=<%out.print(""+(index-1));%>">上一页</a>
                  <% 
                  }
                  if(index!=m1&&count!=0)
                  {
                  %>
                  <a href="servlet/Scenic_spots_CollectionServlet?action1=2&State=1&index=<%out.print(""+(index+1));%>">下一页</a>
				
				<%
				 }
				
				%>
</div>


</div>
</div>




</div><!-- end blog -->
</div>
</div>

<!-- 代码 开始 -->
<div class="actGotop"><a href="javascript:;" title="Top"></a></div>
<script type="text/javascript">
$(function(){	
	$(window).scroll(function() {		
		if($(window).scrollTop() >= 100){ //向下滚动像素大于这个值时，即出现小火箭~
			$('.actGotop').fadeIn(300); //火箭淡入的时间，越小出现的越快~
		}else{    
			$('.actGotop').fadeOut(300); //火箭淡出的时间，越小消失的越快~
		}  
	});
	$('.actGotop').click(function(){$('html,body').animate({scrollTop: '0px'}, 800);}); //火箭动画停留时间，越小消失的越快~
});
</script>
<!-- 代码 结束 -->
<div class="footer1_bg"><!-- start footer1 -->
<div class="container">
	<div class="footer1">
		<div class="copy pull-left">
			<p class="link">Copyright &copy; 2015.b All rights reserved.</p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</div>
</body>
</html>