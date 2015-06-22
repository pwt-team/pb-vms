<%@page import="com.vms.util.YzUpload"%>
<%@page import="com.vms.util.YzUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 人事设置</title>
<%@include file="../../common.jsp"%>
<style type="text/css">
	body {
		font-family: "微软雅黑";
		font-size: 12px;
	}
	
	.content {
		width: 1000px;
		margin: 20px auto;
		position: relative;
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
	
	.content .container {
		width: 1000px;
		position: absolute;
		border-top: transparent;
		margin-top: -20px;
	}
	
	.content .container {
		display: none;
	}
	
	.content .container .form-area {
		margin-top: 10px;
	}
	
	.content .container .form-area .control-group {
		margin-left: -60px;
		float: left;
	}
	
	.content .container .form-area .btn-group {
		margin-left: 120px;
		margin-top: 5px;
	}
	
	.content .container .form-area .btn-group>div {
		width: 60px;
	}
	
	.content .container .table-area {
		width: 1000px;
		margin-top: 30px;
	}
	
	.content .container .table-area table td,th {
		border-right: 1px solid #ddd;
	}
	
	.content .container .table-area .table-hover>thead {
		border-top: 1px solid #ddd;
		background: #f3f3f3;
	}
	
	.content .container .table-area table {
		border: 1px solid #ddd;
		padding: -5px;
		font-size:12px; 
	}
	
	.con-nav li a {
		font-size: 14px;
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
				<!-- 导航选项卡 -->
				<div class="con-nav">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#">部门设置</a></li>
						<li><a href="#">组别设置</a></li>
						<li><a href="#">岗位设置</a></li>
					</ul>
				</div>
				<!-- 部门区域开始 -->
				<div>
				<div class="container">
					<form action="" method="post" class="form-horizontal">
						<div class="form-area">
							<!-- 部门编码 -->
							<div class="control-group">
								<label class="control-label" for="depEmail">部门编码</label>
								<div class="controls">
									<input type="text" id="depEmail" placeholder="部门编码">
								</div>
							</div>
							<!-- 部门名称 -->
							<div class="control-group">
								<label class="control-label" for="depName">部门名称</label>
								<div class="controls">
									<input type="text" id="depName" placeholder="部门名称">
								</div>
							</div>
							<!-- 部门负责人 -->
							<div class="control-group">
								<label class="control-label" for="depAdmin">部门负责人</label>
								<div class="controls">
									<select>
										<option></option>
										<option>json</option>
										<option>smason</option>
									</select>
								</div>
							</div>
							<div class="btn-group">
								<div class="btn" onclick="submit_new()">提交</div>
								<div class="btn" onclick="reset_new()">重置</div>
							</div>
						</div>
					</form>
					<div class="table-area">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>#</th>
									<th>代码</th>
									<th>名称</th>
									<th>职责</th>
									<th>负责人</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>2</td>
									<td>GMO</td>
									<td>总经理室</td>
									<td>公司总总体运营管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>3</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>1</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>2</td>
									<td>GMO</td>
									<td>总经理室</td>
									<td>公司总总体运营管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>3</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 部门设置结束 -->
				<!-- 小组区域开始 -->
				<div class="container">
					<form action="" method="post" class="form-horizontal">

						<div class="form-area">
							<!-- 部门编码 -->
							<div class="control-group">
								<label class="control-label " for="depEmail">级别编码</label>
								<div class="controls">
									<input type="text" id="depEmail" placeholder="级别编码">
								</div>
							</div>
							<!-- 部门名称 -->
							<div class="control-group">
								<label class="control-label" for="depName">级别名称</label>
								<div class="controls">
									<input type="text" id="depName" placeholder="级别名称">
								</div>
							</div>
							<!-- 部门负责人 -->
							<div class="control-group">
								<label class="control-label" for="depAdmin">级别负责人</label>
								<div class="controls">
									<select>
										<option></option>
										<option>json</option>
										<option>smason</option>
									</select>
								</div>
							</div>
							<div class="btn-group">
								<div class="btn" onclick="submit_new()">提交</div>
								<div class="btn" onclick="reset_new()">重置</div>
							</div>
						</div>
					</form>
					<div class="table-area">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>#</th>
									<th>代码</th>
									<th>名称</th>
									<th>职责</th>
									<th>负责人</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>2</td>
									<td>GMO</td>
									<td>总经理室</td>
									<td>公司总总体运营管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>3</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>1</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>2</td>
									<td>GMO</td>
									<td>总经理室</td>
									<td>公司总总体运营管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>3</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
				<!-- 小组设置结束 -->
				<!-- 岗位区域开始 -->
				<div class="container">
					<form action="" method="post" class="form-horizontal">
						<div class="form-area">
							<!-- 部门名称 -->
							<div class="control-group">
								<label class="control-label" for="depName">岗位名称</label>
								<div class="controls">
									<input type="text" id="depName" placeholder="岗位名称">
								</div>
							</div>
							<!-- 岗位类别 -->
							<div class="control-group">
								<label class="control-label" for="depAdmin">岗位类型</label>
								<div class="controls">
									<select>
										<option></option>
										<option>json</option>
										<option>smason</option>
									</select>
								</div>
							</div>
							<div class="btn-group">
								<div class="btn" onclick="submit_new()">提交</div>
								<div class="btn" onclick="reset_new()">重置</div>
							</div>
						</div>
					</form>
					<div class="table-area">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>#</th>
									<th>代码</th>
									<th>名称</th>
									<th>职责</th>
									<th>负责人</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>2</td>
									<td>GMO</td>
									<td>总经理室</td>
									<td>公司总总体运营管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>3</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>1</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>2</td>
									<td>GMO</td>
									<td>总经理室</td>
									<td>公司总总体运营管理</td>
									<td>json</td>
								</tr>
								<tr>
									<td>3</td>
									<td>HR</td>
									<td>人事部</td>
									<td>负责公司人力资源管理</td>
									<td>json</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 岗位设置结束 -->
			</div>
			</div>
			<%@include file="../../footer.jsp"%>
		</div>
	</div>
	<script type="text/javascript">
		/* 浏览器初始化  */
		$(function() {
			autoRigthWidth();
			autoLeftHeight();
			$(".container").eq(0).show();
		});

		/* 监听窗口变化 */
		window.onresize = function() {
			autoRigthWidth();
			autoLeftHeight();
		};

		$(".con-nav").find("li").click(function() {
			var index = $(this).index();
			$(".con-nav").find("li").eq(index).addClass("active").siblings().removeClass("active");
			$(".container").eq(index).show().siblings().hide();
		});
		
	</script>
</body>
</html>
