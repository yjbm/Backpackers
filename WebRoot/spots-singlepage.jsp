<%@ page language="java" import="java.util.*,com.bean.*,java.text.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>景点</title>
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
		<a class="logo" href="index.html">
			<img width="215" height="90" src="Scenic_spots_image/logo2.png" alt=""/>
			<!--span class="logo_title"><strong>背包客</strong></span>-->
		</a>
		<div class="h_menu">
		<a id="touch-menu" class="mobile-menu" href="#">菜单</a>
		<nav>
		<ul class="menu list-unstyled">
			<li><a href="index.jsp">首页</a></li>
			<li><a href="servlet/Travel_notesServlet?action=1&action1=1&index=0&keyword=">游记</a></li>
            <li class="activate"><a href="servlet/Scenic_spotsServlet?action=1&index=0&keyword=" >景点</a>
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
		<form action="" method="post" name="form_search">
		<%
		String message = (String)request.getAttribute("message");
		if(message!=null){
			out.println(message);
			}
		%>
			<div class="menu-key-wrapper">
				<input id="search-key" class="menu-key" name="Scenic_spots_name" type="text" autocomplete="off" maxlength="100">
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
        <% out.println("欢迎你！  "+user.getUserName());%>
        
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
		<a href="servlet/Scenic_spotsServlet?action=1&index=0"><h3 class="style pull-left">﹤返回列表</h3></a>
		<div class="clearfix"></div>
	</div>
</div>
</div>
<div class="main_btm1"><!-- start main_btm -->
<% 
   //HttpSession hsession=request.getSession();
	List list=(List)request.getAttribute("Scenic_spotslistImage");
	Scenic_spots ss=(Scenic_spots)request.getAttribute("Scenic_spots");
   	int count= Integer.valueOf(String.valueOf(request.getAttribute("Scenic_spotslistImagecount"))).intValue();
    Scenic_spots_Image a=(Scenic_spots_Image)list.get(0);   
    int index=Integer.parseInt(request.getParameter("index")); 
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<div class="container">
		<div class="details">
			<h2><%out.print(ss.getScenic_spots_name()); %></h2>
			<img src="<%out.print(a.getScenic_spots_image()); %>" alt="" class="img-responsive"/>
			<p class="para"><%out.print(ss.getProvince()); %></p>
			<p class="para"><%out.print(ss.getCity()); %></p>
			<p class="para"><%out.print(ss.getScenic_spots_Address()); %></p>
			<p class="para"><%out.print(ss.getScenic_spots_Price()); %></p>
			<p class="para"><%out.print(ss.getScenic_spots_Introduction()); %></p>
            <% 
               List ssCollectionlist=(List)request.getSession().getAttribute("ssCollectionList");
               int ssCollectioncount= Integer.valueOf(String.valueOf(request.getSession().getAttribute("Listcount"))).intValue();
                int i;
             if(user!=null)
             {
               for( i=0;i<ssCollectioncount;i++)
               { 
                  Scenic_spots_Collection ssCollection=(Scenic_spots_Collection)ssCollectionlist.get(i);
                 if(ssCollection.getScenic_spots_ID()==ss.getScenic_spots_ID())
                 {
                     break;
             
                 }
                }
                if(i>=ssCollectioncount)
                {
            %>
			<a href="servlet/Scenic_spots_CollectionServlet?action=1&action1=1&State=2&index=0<%out.print("&Scenic_spots_ID="+ss.getScenic_spots_ID());
							 %>">收藏</a>
			<%
			} 
			
			else
			{
			%>
			<a href="servlet/Scenic_spots_CollectionServlet?action=1&action1=1&State=3&index=0<%out.print("&Scenic_spots_ID="+ss.getScenic_spots_ID());
							 %>">取消收藏</a>
			<% 
			}
			}
			%>
		</div>
	
<% 

List list1=(List)request.getAttribute("Scenic_spots_Commentlist");
 int count1= Integer.valueOf(String.valueOf(request.getAttribute("Scenic_spots_Commentcount"))).intValue();	
 int m=(index+1)*10;
 if(m>count1)
 	 m=count1;    
for(i=index*10;i<m;i++)
{
   Scenic_spots_Comments ssc=(Scenic_spots_Comments) list1.get(i);
%>	
<div class="liuyan">
<p>
    <%  out.print(ssc.getUserName()); %></p>
<textarea rows="2" cols="80%">
<%  out.print(ssc.getScenic_spots_Comments_string());%>
</textarea>
<br>
<%  out.print(df.format(ssc.getDate()));%>
<br>
<a href="servlet/Scenic_spots_CommentsServlet?action=4&index=0&Scenic_spots_Comments_ID=<%out.print(ssc.getScenic_spots_Comments_ID()); 
							  out.print("&Scenic_spots_ID="+ss.getScenic_spots_ID());
							 %>">赞一个</a>
<%  out.print(ssc.getScenic_spots_Comments_number_of_points());%>
<br>
<% 
       if(user!=null&&(user.getJurisdiction()!=0||user.getUserName().equals(ssc.getUserName())))
       {
          %>
          <a href="servlet/Scenic_spots_CommentsServlet?action=3&&index=0&Scenic_spots_Comments_ID=<%out.print(ssc.getScenic_spots_Comments_ID());%>							<%
							 out.print("&Scenic_spots_ID="+ss.getScenic_spots_ID());
				              %>">删除</a>
          
</div>
<%} 
}
				    int m1 =(count1+9)/10-1;
				 if(index!=0) 
				 { 
				%>
				
                  <a href="servlet/Scenic_spots_CommentsServlet?action=1&index=<%out.print(""+(index-1));%>&Scenic_spots_ID=<%out.print(ss.getScenic_spots_ID());%>">上一页</a>
                  <% 
                  }
                  if(index!=m1&&count1!=0)
                  {
                  %>
                  <a href="servlet/Scenic_spots_CommentsServlet?action=1&index=<%out.print(""+(index+1));%>&Scenic_spots_ID=<%out.print(ss.getScenic_spots_ID()); %>">下一页</a>
				
				<%
				 }
				
				%>
<div class="liuyan">
<div class="zhuti">
<p>发表评论</p>


<form action="servlet/Scenic_spots_CommentsServlet?action=2&index=0<% out.print("&Scenic_spots_ID="+ss.getScenic_spots_ID());%>" method="post">

<input type="text" name="scenic_spots_Comments_string" size="80" />
<input type="submit" name="" value="发表" align="right"/>
</form>
</div>

</div>
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