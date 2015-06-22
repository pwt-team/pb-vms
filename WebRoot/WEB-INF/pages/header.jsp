<%@page import="com.vms.bean.base.User"%>
<%@page import="com.vms.bean.base.Company"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
	.header {width:100%; height:90px; position:relative; background:#09c; }
	.header .logo {width:100%; height:90px; }
	.header .logo .l-text ,.user {float:left;  }
	.header .logo .l-text {width:400px; height:90px; line-height:90px; display:block; 
	font-size:24px; text-decoration:none; color:#f3f3f3;  padding-left:50px; }
	
	.header .logo .user {width:350px; position:absolute; top:0px; right:0px; margin-top:10px;  }
	.header .logo .user .user-face,.user-info {float:left; }
	.header .logo .user .user-face { margin-top:5px; }
	.header .logo .user .user-face img {border:1px solid #ccc; box-shadow:2px 2px 15px #ccc; 
	border-radius:58px; width:58px; height:58px; }
	.header .logo .user .user-info {margin-top:5px; }
	.header .logo .user .user-info ul li {list-style:none; color:#f3f3f3; font-size:12px; }
	.header .logo .user .user-info ul li a {color:#f3f3f3;  }
	
	.header .nav {width:100%; height:30px; background:#ddd; position:relative; 
	border-top:1px solid #ccc; margin:0px; padding:0px; }
	.header .nav ul { margin:0; padding:0;}
	.header .nav ul li {list-style:none; float:left; font-size:12px;  line-height:30px;}
	.header .nav .nav-left {width:260px; text-align:center; font-size:14px; background:#222; color:#ccc; font-family:"微软雅黑"; 
	border-bottom:1px solid #999; }
	.header .nav .nav-right .place {padding-left:25px; }
	.header .nav .nav-right .place,.time,.skin {float:left;}
	.header .nav .nav-right .time {position:absolute; right:70px; }
	.header .nav .nav-right .place span {padding:0 5px; }
	.header .nav .nav-right .skin {width:45px; position:absolute; top:0px; right:5px; cursor:pointer; }
	.header .nav .nav-right .skin-list { width:45px; position:absolute; top:30px; right:5px; 
	border:1px solid #ccc; margin:0; padding:0; display:none;  }
	
	.header .nav .nav-right .skin-list ul { margin:0; padding:0; }
	.header .nav .nav-right .skin-list ul li {width:45px; list-style:none; border-top:1px solid #ccc; 
	text-align:center; line-height:25px; cursor:pointer; }
	
	.header .clear {clear:both; }
</style>
<div class="header">
	<div class="logo">
		<a class="l-text" href="${basePath}main" title="网站首页"><span>V</span>ehicle <span>M</span>anagement <span>S</span>ystem</a>
		<div class="user">
			<div class="user-face" >
				<img id="loginFace" src="${basePath}images/face.png" alt="pengbo-face" title="${user.nickName}" >
			</div>
			<div class="user-info" data-iid="${user.account}">
				<ul>
					<li>${user.nickName},欢迎回来！您是: ${user.role}用户</li>
					<li><a href="javascript:void(0);" class="u-set" title="个人中心">设置中心</a></li>
					<li><a href="${basePath }logout" class="u-set" title="注销登录">注销</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="nav">
		<ul>
			<li class="nav-left ">功能菜单</li>
			<li class="nav-right">
				<div class="place">当前位置<span>&gt;&gt;</span><a href="javascript:void(0);" id="location">首页</a></div>
				<div class="time"></div>
				<div class="skin"><i class="icon-leaf" title="更换皮肤"></i> 换肤</div>
				<div class="skin-list" >
					<ul>
						<li data-ys="#09c" style='color:#09c' >默认</li>
						<li data-ys="red" style='color:red'>红色</li>
						<li data-ys="blue" style='color:blue'>蓝色</li>
						<li data-ys="gray" style='color:gray'>灰色</li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="clear"></div>
</div>

<script type="text/javascript">
	/* 动态显示本地时间 */
	$(function(){
		setInterval(function(){
			$(".time").html(getCurrentTime());
		},1000);
	});
	
  	/* 更换皮肤 */
  	$(".skin").click(function(){
  		$(".skin-list").slideToggle();
  		return false; //防止事件冒泡
  	});
	$("body,html").bind("click",function(e){
		var evt = e || event;
		var key = evt.which ||evt.button;
		if(key==1){
			$(".skin-list").slideUp();
			e.stopPropagation(); //防止事件冒泡
		}
	});
	$(".skin-list").find("li").click(function(){
		var color = $(this).data("ys");
		$(".header,.footer").css({"background":color});
	});
</script>
