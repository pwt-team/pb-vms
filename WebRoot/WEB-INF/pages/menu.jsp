<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
	.menu{width:260px; background:#ccc;}
	.menu .m-group,.sysinfo {width:260px; background:#eee; }
	.menu .m-group .m-title {width:260px; height:35px; background:#222; border-bottom:1px solid #999; color:#ccc; 
	line-height:35px; cursor:pointer; font-family:"微软雅黑"; }
	.menu .m-group .m-title:hover {background:#666; color:#f3f3f3; }
	.menu .m-group .m-title i {margin-left:45px; }
	.menu .m-group .m-title span {margin-left:10px; }
	.menu .m-group .m-list {width:260px; background:#ccc; border-bottom:1px solid #ddd;  clear:both;  font-family:"微软雅黑"; }
	.menu .m-group .m-list {display:none;  }
	.menu .m-group .m-list i {padding:0 4px; margin-left:15px; }
	.menu .m-group .m-list a {width:225px; height:30px; display:block; color:#666; line-height:30px; cursor:pointer; 
	border-bottom:1px solid #ddd; padding-left:35px; }
	.menu .m-group .m-list a:hover {background:#f3f3f3; color:#666; }
	.menu .m-group .s-list ul li {width:260px; height:20px; font-size:12px; line-height:20px; 
	list-style:none; padding:4px 0; color:#666;}
	.menu .m-group .sysinfo span {padding-left:15px; }

</style>
<!-- 菜单开始 -->

<div class="menu">
	<div class="m-group">
		<div class="m-title" data-parent="menu1" data-tag="closed"><i class="icon-tasks"></i><span>车辆管理</span></div>
		<div class="m-list" id="menu1">
			<a href="${basePath }vehicle/info.jxp"><i class="icon-edit"></i>车辆信息</a>
			<a href="${basePath }vehicle/truck.jxp"><i class="icon-edit"></i>车辆调配</a>
			<a href="${basePath }vehicle/setting.jxp"><i class="icon-edit"></i>设置</a>
		</div>
	</div>
	
	<div class="m-group">
		<div class="m-title" data-parent="menu2" data-tag="closed"><i class="icon-tasks"></i><span>人事管理</span></div>
		<div class="m-list" id="menu2">
			<a href="${basePath }employee/info"><i class="icon-edit"></i>员工入职</a>
			<a href="javascript:void(0);"><i class="icon-edit"></i>工薪管理</a>
			<a href="javascript:void(0);"><i class="icon-edit"></i>员工培训</a>
			<a href="${basePath }department/setting"><i class="icon-edit"></i>设置</a>
		</div>
	</div>

	<div class="m-group">
		<div class="m-title" data-parent="menu3" data-tag="closed"><i class="icon-tasks"></i><span>运单管理</span></div>
		<div class="m-list" id="menu3">
			<a href="${basePath}bill/add.jxp"><i class="icon-edit"></i>运单统计</a>
			<a href="${basePath}bill/view.jxp"><i class="icon-edit"></i>运单查询</a>
			<a href="${basePath}bill/setting.jxp"><i class="icon-edit"></i>设置</a>
		</div>
	</div>
	
	<div class="m-group">
		<div class="m-title" data-parent="menu4" data-tag="closed"><i class="icon-tasks"></i><span>客户中心</span></div>
		<div class="m-list" id="menu4">
			<a href="${basePath}customer/info.jxp"><i class="icon-edit"></i>客户维护</a>
			<a href="${basePath}customer/setting.jxp"><i class="icon-edit"></i>设置</a>
		</div>
	</div>	
	<div class="m-group">
		<div class="m-title" data-parent="menu5" data-tag="closed"><i class="icon-tasks"></i><span>系统</span></div>
		<div class="m-list" id="menu5">
			<a href="${basePath}company/index/1"><i class="icon-edit"></i>公司信息</a>
			<a href="${basePath}permission.jxp"><i class="icon-edit"></i>系统权限</a>
			<a href="${basePath}user/index"><i class="icon-edit"></i>系统用户</a>
		</div>
	</div>	
	<div class="m-group">
		<div class="m-title sysinfo"><span>版本信息</span></div>
		<div class="s-list">
			<ul>
				<li>鹏博物流VMS v1.0</li>
				<li>版权所有 &copy 2015</li>
				<li>鹏万通信息科技  提供技术支持</li>
			</ul>
		</div>
	</div>
</div>
<!-- 菜单结束 -->
  	
    
 <script type="text/javascript">
 
 	$(function(){
 		var mid = getCookie("selmenu");
 		var text = getCookie("selmenu-name");
 		var index = getCookie("selmenu-index");
 		$("#"+mid).find("a").eq(index).css({"background":"#f3f3f3"});
 		if(mid === null || mid===""){
 			$("#menu1").show();
 		}else{
 			$("#"+mid).show();
 			$("#location").text(text);
 		}
 	});
	
 	/* 菜单选择效果  */
	$(".m-title").click(function(){
		var id = $(this).data("parent");
		var tag = $(this).data("tag");
		if(tag == "closed"){
			$(this).data("tag","opend");
			$("#"+id).slideDown();
		}else{
			$(this).data("tag","closed");
			$("#"+id).slideUp();
		}
	});
 	
 	/* 记录选择的菜单 */
 	$(".m-list").children("a").click(function(){
 		var id = $(this).parent("div").attr("id");
 		var text = $(this).text();
 		setCookie("selmenu",id);
 		setCookie("selmenu-name",text);
 		setCookie("selmenu-index",$(this).index());
 	});
 	
 </script>  
