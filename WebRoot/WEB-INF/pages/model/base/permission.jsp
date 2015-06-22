<%@page import="com.vms.util.YzUpload"%>
<%@page import="com.vms.util.YzUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 权限管理</title>
<%@include file="../../common.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${basePath}js/datetime/jquery.datetimepicker.css">
<script src="${basePath}js/datetime/jquery.datetimepicker.js"></script>
<style type="text/css">
.center {
	width: 100% px;
	clear: both;
}

.center .leftArea,.rightArea {
	float: left;
}

.center .leftArea {
	width: 260px;
	background: #eee;
}

.center .clear {
	clear: both;
}

body {
	font-family: "微软雅黑";
}

.content {
	width: 1000px;
	margin: 20px auto;
	position: relative;
}

.content .con-nav {
	font-size: 14px;
}

.content .car-info {
	height: 150px;
	display: none;
}
#role_panel {
	height:100px;
}

#pre_panel {
	height:145px;
}

#admin_panel{
	height:90px;
}

.content .car-info .input-boxs {
	float: left;
}

.content .car-info .input-boxs .input-group {
	width: 300px;
	padding-right: 20px;
	float: left;
}

.input-group .navbar .navbar-radio label {
	padding:0 9px;
	display:block;	
	float:left;
}
.input-group .navbar .navbar-radio {
	margin-top:14px; 
}

.input-group .navbar .navbar-radio input[type="radio"] {
	margin-bottom:6px;
}
.input-group .navbar {
	width:900px;
	margin-left:50ppx;
	margin-top:20px; 
}

.input-group .navbar .navbar-type,.navbar-btn {
	margin-top:10px; 
}

.input-group .navbar .navbar-btn {
	margin-top:3px; 
	margin-left:30px; 
}

#navbar-selmodel {
	line-height:25px; 
	margin-bottom:-5px;
}

.content .car-info .input-boxs .input-label {
	width: 70px;
	float: left;
	padding: 4px 10px;
	text-align: right;
}

.content .car-info .input-boxs .input-box {
	width: 160px;
	height: 17px;
	font-size: 12px;
}

.content .car-info .input-boxs select {
	width: 173px;
	height: 28px;
	font-size: 12px;
	readonly:readonly;
}

.content .car-info .input-boxs select option {
	padding: 5px 0px;
}

.content .car-info .input-boxs .btn {
	width: 60px;
	padding: 4px 8px;
}

.mTop-10 {
	margin-top: 10px;
}

.mLeft-100 {
	margin-left: 90px;
}

.table-boxs table td,th {
	border-right: 1px solid #ddd;
}

.table-boxs table th {
	border-right: 1px solid #ddd;
	text-align: center;
}

.table-boxs .table-hover>thead {
	border-top: 1px solid #ddd;
	background: #f3f3f3;
}

.table-boxs table {
	border: 1px solid #ddd;
	padding: -5px;
	font-size: 12px;
	width:90%;
}

.pagination a {
	color: #666;
}

/* 响应式布局 */
@media screen and (max-width: 800px) {
	.rightArea {
		display: none;
	}
	.header .logo .l-text,.header .nav .nav-right {
		display: none;
	}
}
</style>


</head>
<body>
	<%@include file="../../header.jsp"%>
	<div class="center">
		<!-- 左侧开始 -->
		<div class="leftArea">
			<%@include file="../../menu.jsp"%>
		</div>
		<!-- 左侧结束 -->
		<!-- 右侧开始 -->
		<div class="rightArea">
			<div class="content">
				<!-- cardArea -->
				<div class="con-nav">
					<ul class="nav nav-tabs">
						<li class="active"><a href="javascript:void(0);">角色列表</a></li>
						<li><a href="javascript:void(0);">权限列表</a></li>
						<li><a href="javascript:void(0);">授权中心</a></li>
					</ul>
				</div>
				<!-- formArea 开始 -->
				<div class="panel">
					<!-- 角色列表 开始 -->
					<div class="car-info">
						<div id="role_panel">
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="r_name">角色名称</label> <input
										class="input-box" id="r_name" type="text" name="r_name"
										placeholder="不超过20个字符">
								</div>
								<div class="input-group">
									<label class="input-label" for="r_des">角色描述</label> <input
										class="input-box" id="r_des" type="text" name="r_des"
										placeholder="不超达40个字符">
								</div>								
								<div class="input-group">
									<label class="input-label" for="r_type">类型</label> <select
										name="r_type" id="r_type">
										<option>请选择</option>
										<option value="0">系统</option>
										<option value="1">管理</option>
										<option value="2">业务</option>
										<option value="3">其它</option>
									</select>
								</div>
								<!-- 第五行 -->
								<div class="input-boxs mTop-10 mLeft-100">
									<div class="btn" >新增</div>
									<div class="btn btn-info" onclick="r_submit()">保存</div>
								</div>
							</div>
						</div>
						<!-- Table Area Start -->
						<div class="table-boxs">
							<table class="table table-hover" id="table-list">
								<thead>
									<tr>
										<th>编号</th>
										<th>名称</th>
										<th>类型</th>
										<th>状态</th>
										<th>创建时间</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>JS00001</td>
										<td>超级管理员</td>
										<td>系统</td>
										<td>正常</td>
										<td>2015-01-01 12：12：12 </td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>JS00002</td>
										<td>系统管理员</td>
										<td>系统</td>
										<td>正常</td>
										<td>2015-01-01 12：12：12 </td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>JS00003</td>
										<td>董事长</td>
										<td>系统</td>
										<td>正常</td>
										<td>2015-01-01 12：12：12 </td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>JS00004</td>
										<td>总经理</td>
										<td>系统</td>
										<td>正常</td>
										<td>2015-01-01 12：12：12 </td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>JS00005</td>
										<td>人事经理</td>
										<td>系统</td>
										<td>正常</td>
										<td>2015-01-01 12：12：12 </td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- table end -->
						<!-- paging start -->
						<div class="pagination">
							<ul>
								<li><a href="#">&laquo;</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
						<!-- paging end -->
					</div>
					<!-- 角色列表 结束 -->
					<!-- 权限列表 开始 -->
					<div class="car-info">
						<div id="pre_panel">
							<!-- 第一行 -->
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="p_type">类别</label>
									<select name="p_status" id="p_status">
										<option>请选择</option>
										<option value="0">系统</option>
										<option value="1">人事</option>
										<option value="2">行政</option>
										<option value="3">车辆</option>
										<option value="4">运单</option>
									</select>
								</div>
								<div class="input-group">
									<label class="input-label" for="p_name">权限名称</label>
									<input class="input-box" id="p_name" type="text" name="p_name"
										placeholder="不超过30个字符">
								</div>
								<div class="input-group">
									<label class="input-label" for="p_des">权限描述</label>
									<input class="input-box" id="p_des" type="text" name="p_des"
										placeholder="不超过30个字符">
								</div>
							</div>
							<!-- 第二行 -->
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="p_status">状态</label> <select
										name="p_status" id="p_status">
										<option>请选择</option>
										<option value="0">正常</option>
										<option value="1">停用</option>
									</select>
								</div>	
								<div class="input-group">
									<label class="input-label" for="pe_Date">失效日期</label> <input
										class="input-box" id="pe_Date" type="text" name="pe_Date"
										placeholder="选择日期">
								</div>
								<div class="input-group">
								</div>								
							</div>
							<!-- 按钮行 开始 -->
							<div class="input-boxs mTop-10 mLeft-100">
								<div class="btn">新增</div>
								<div class="btn btn-info" onclick="p_submit()">保存</div>
							</div>
							<!-- 按钮行 结束 -->
						</div>
						<!-- Table Area Start -->
						<div class="table-boxs">
							<table class="table table-hover" id="table-list">
								<thead>
									<tr>
										<th>编号</th>
										<th>类别</th>
										<th>名称</th>
										<th>描述</th>
										<th>状态</th>
										<th>失效日期</th>
										<th>创建日期</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息</td>
										<td>正常</td>
										<td>2015-11-02</td>
										<td>2015-01-01</td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息</td>
										<td>正常</td>
										<td>2015-11-02</td>
										<td>2015-01-01</td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>3</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息</td>
										<td>正常</td>
										<td>2015-11-02</td>
										<td>2015-01-01</td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>4</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息</td>
										<td>正常</td>
										<td>2015-11-02</td>
										<td>2015-01-01</td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>5</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息</td>
										<td>正常</td>
										<td>2015-11-02</td>
										<td>2015-01-01</td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>6</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息</td>
										<td>正常</td>
										<td>2015-11-02</td>
										<td>2015-01-01</td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>7</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息</td>
										<td>正常</td>
										<td>2015-11-02</td>
										<td>2015-01-01</td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>8</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息</td>
										<td>正常</td>
										<td>2015-11-02</td>
										<td>2015-01-01</td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>
									<tr>
										<td>9</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息</td>
										<td>正常</td>
										<td>2015-11-02</td>
										<td>2015-01-01</td>
										<td><a href="javascript:void(0);">编辑</a>
											<a href="javascript:void(0);">删除</a>
										</td>
									</tr>																																																																																																									
								</tbody>
							</table>
						</div>
						<!-- table end -->
						<!-- paging start -->
						<div class="pagination">
							<ul>
								<li><a href="#">&laquo;</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
						<!-- paging end -->
					</div>
					<!-- 权限列表 结束 -->
					<!-- 授权中心 开始 -->
					<div class="car-info">
						<div id="admin_panel">
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="m_name">选择角色</label>
									<select name="type" id="m_name">
										<option>请选择</option>
										<option value="0">超级管理员</option>
										<option value="1">系统管理员</option>
										<option value="2">董事长</option>
										<option value="3">总经理</option>
									</select>
								</div>
								<div class="input-group">
									<div class="btn" >查询</div>
								 </div>
								<div class="input-group"> </div>
								<!-- 第五行 -->

							</div>
							<div class="input-boxs">
								<div class="input-group">
									<!-- 搜索权限 开始 -->
									<div class="navbar">
										  <div class="navbar-inner">
										  	<div class="navbar-radio pull-left" >
											   <label class="checkbox-inline">
											      <input type="radio" name="m_area" id="m_area1" 
											         value="1" checked> 已添加的权限
											   </label>
											   <label class="checkbox-inline">
											      <input type="radio" name="m_area" id="m_area2" 
											         value="2"> 未添加的权限
											   </label>
											   <label class="checkbox-inline">
											      <input type="radio" name="m_area" id="m_area3" 
											         value="3"> 所有权限
											   </label>											   
										  	</div>
										  	
										  	<div class="navbar-type pull-left">
												<label class="input-label" for="m_model">选择模块</label>
												<select name="m_model" id="m_model">
													<option>请选择</option>
													<option value="0">系统</option>
													<option value="1">人事</option>
													<option value="2">车辆</option>
													<option value="3">运单</option>
												</select>
										  	</div>	
										  	<div class="navbar-btn pull-left">
										  		<div class="btn" >查询</div>	
										  		<div class="btn btn-info" onclick="save()">保存</div>	
										  	</div>								  	
										 </div>
									</div>
									<!-- 搜索权限 结束 -->
								</div>
								<div class="input-group"></div>
								<div class="input-group"></div>
								<!-- 第五行 -->

							</div>							
						</div>
						<!-- Table Area Start -->
						<div class="table-boxs">
							<table class="table table-hover" id="m_table_list">
								<thead>
									<tr>
										<th>编号</th>
										<th>模块名称</th>
										<th>权限名称</th>
										<th>描述</th>
										<th>状态</th>
										<th><input type="checkbox">&nbsp;&nbsp; 授权</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>1</td>
										<td>系统</td>
										<td>修改公司信息</td>
										<td>修改公司基础信息 - 保存</td>
										<td>正常</td>
										<td><input type="checkbox"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- table end -->
					</div>
					<!-- 授权中心 结束 -->
				</div>
				<!-- formArea END -->

			</div>
			<%@include file="../../footer.jsp"%>
		</div>
	</div>
	<script type="text/javascript">
		/* 浏览器初始化  */
		$(function() {
			autoRigthWidth();
			autoLeftHeight();
			$(".car-info").eq(0).show();
			$("#ps_Date,#pe_Date").datetimepicker({
				format : "Y-m-d",
				timepicker : false
			});

			/* 监听窗口变化 */
			$(window).off("resize").resize(function() {
				autoRigthWidth();
				autoLeftHeight();
			});
		});
		
		/* 保存修改的权限 */
		function save(){
			msgBox();
		}
		
		$(".con-nav").find("li").click(
			function() {
				var index = $(this).index();
				$(".con-nav").find("li").eq(index).addClass("active")
						.siblings().removeClass("active");
				$(".car-info").eq(index).show().siblings().hide();
			});
		
		/* 角色信息保存方法 */
		function r_submit(){
			var value = $("#r_type option:selected").val();
			alert(value);
			msgBox(null,"恭喜您,角色创建成功！",null);
		}
		
		/* 权限信息保存方法 */
		function p_submit(){
			msgBox(null,"恭喜您,权限信息创建成功！",null);
		}		
		
		
	</script>
</body>
</html>
