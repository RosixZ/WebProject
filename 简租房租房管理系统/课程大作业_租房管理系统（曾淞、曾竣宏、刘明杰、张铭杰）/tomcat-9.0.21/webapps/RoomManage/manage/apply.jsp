<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>Manage</title>      
    <base href="<%=basePath%>">
    <meta name="description" content="">
    <meta name="author" content="">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
	<link href="source/css/dashboard.css" rel="stylesheet">
	<script type="text/javascript" src="source/js/jquery-3.4.0.js"></script>
	<script type="text/javascript" src="source/js/vue.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <style type="text/css">
	  body{

	  }
	  #logininfo{
		  color: aliceblue;
		  float: right;
	  }
	  /* !important 表示此样式优先于内置样式*/
	  .nav-1{
		  font-size: 15px !important;
	  }
	    /*鼠标浮动*/
	  .nav-1 a:hover{
		  background-color:#353333 !important;
	  }
	    /*已访问*/
	  .nav-1 a:visited{
		  background-color:#353333 !important;
	  }
	  .active-1 a:focus{
		  color:aliceblue !important;
	  }
	</style>	
  <body onLoad="load()">
	<!--状态判断  -->
	  <%
	  	String msg = request.getParameter("msg");
	  	
	  	if(msg !=null && msg.equals("3")){
	  %>
		<script type="text/javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-0" data-genuitec-path="/RoomManage/WebRoot/index.jsp">
			alert("成功删除");
		</script>
	  <%
	  	}else if(msg !=null && msg.equals("-3")){
	  %>
		<script type="text/javascript">
			alert("删除失败");
		</script>
	  <%
	  	}
	  %>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand">Manage</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse" >
          <ul class="nav navbar-nav"style="float: left">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#contact">Help</a></li>
          </ul>
			
		  <ul class="nav navbar-nav"style="float: right">
            <li class="active dropdown"><a class="dropdown-toggle" data-toggle="dropdown"><%=session.getAttribute("user") %><span class="caret"></a>
				<ul class="dropdown-menu" role="menu">
					<li class="dropdown-header">Account</li>
					<li><a href="servlet\exit">Logout</a></li>
					<li class="divider"></li>
				</ul>
				</li>
            <li><a>About</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

     <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
			<p style="color:cornsilk; font-size: 25px;">ManageCenter</p>
          <ul class="nav nav-1 nav-sidebar">
            <li><a href="manage/manage.jsp#">Main</a></li>
            <li><a href="manage/search.jsp#">Search</a></li>
            <li><a href="manage/inport.jsp#">MoveIn</a></li>
            <li><a href="manage/export.jsp#">MoveOut</a></li>
          </ul>
          <ul class="nav nav-1 nav-sidebar">
				<li><a href="manage/apply.jsp#">申请处理</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header" id="C1"><i class="fa fa-cog fa-spin"></i>&nbsp;预约申请处理<small><small id="C2"></small></h1>
          <!--<h2 class="sub-header">Section title</h2>-->
		  <div id="content">
			  	<div class="col-sm-12" style="height: 600px; overflow: auto">
					<table class="table table-fixed table-hover" id="t1">
					  <thead>
						<tr>
						  <th>申请房间</th>
						  <th>姓名</th>
						  <th>性别</th>
						  <th>预约手机</th>
						  <th>预约时间</th>
						  <th>操作</th>
						</tr>
					  </thead>
					  <tbody>
						<tr v-for="rm in room">		<!-- v-for vue方法,把数组对应为一组元素-->
						
						  <td>{{rm.room}}</td>
						  <td>{{rm.name}}</td>
						  <td>{{rm.sex}}</td>
						  <td>{{rm.tel}}</td>
						  <td>{{rm.intime}}</td>
						  <td><form action="servlet/apply?3" method="post"><input type="submit" class="btn btn-danger" value="删除">
								<input type="hidden" name="applyid" :value="rm.applyid" style="width: 1px;"></form>
							</td>
						
						</tr>
					  </tbody>
					</table>
				</div>
		  </div>
			  
        </div>
      </div>
    </div>
	<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	<script type="text/javascript">
		function load(){
			if(<%=session.getAttribute("user")%>==null){
				window.location.href="index.jsp";
				alert("登录已过期！请重新登录");
			}
		}
	</script>
	<script type="text/javascript">
		$(function(){
			$.ajax({
				type:'get',
				url:'servlet/apply?1',
				success:function(json){
					show(json);
				},
				error:function(){
					alert("error");
				}
			})
			
			function show(json){
				// vue 进行渲染
				var obj=JSON.parse(json);
				//使用JSON.parse把传回的String类型转位json类型
				new Vue({
					el: '#t1',
					data:{
							room:obj
						 }
				});
			}
		})
	</script>
  </body>
</html>
