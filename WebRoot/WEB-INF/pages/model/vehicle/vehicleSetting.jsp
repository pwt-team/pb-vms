<%@page import="com.vms.util.YzUpload"%>
<%@page import="com.vms.util.YzUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 车辆 设置</title>
<%@include file="../../common.jsp"%>
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

.center .rightArea {
	
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
						<li class="active"><a href="javascirpt:void(0);">车辆类型</a></li>
						<li><a href="javascirpt:void(0);">保养机构</a></li>
						<li><a href="javascirpt:void(0);">状态设置</a></li>
					</ul>
				</div>
				<!-- 车辆类型区域开始 -->
				<div>
					<div class="container">
						<form action="" method="post" class="form-horizontal">
							<div class="form-area">
								<!-- 部门编码 -->
								<div class="control-group">
									<label class="control-label" for="depEmail">类型名称</label>
									<div class="controls">
										<input type="text" id="depEmail" placeholder="">
									</div>
								</div>
								<!-- 部门名称 -->
								<div class="control-group">
									<label class="control-label" for="depName">类型描述</label>
									<div class="controls">
										<input type="text" id="depName" placeholder="描述类型用途">
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
										<th>序号</th>
										<th>编码</th>
										<th>类型名称</th>
										<th>类型描述</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>V0000001</td>
										<td>长车</td>
										<td>东风重卡12米长车</td>
										<td>正常</td>
										<td>修改  | 删除</td>
									</tr>
									<tr>
										<td>2</td>
										<td>V0000002</td>
										<td>长车</td>
										<td>东风重卡15米长车</td>
										<td>正常</td>
										<td>修改  | 删除</td>
									</tr>
									<tr>
										<td>3</td>
										<td>V0000003</td>
										<td>长车</td>
										<td>东风重卡9米长车</td>
										<td>正常 </td>
										<td>修改  | 删除</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 车辆类型设置结束 -->
					<!-- 机构区域开始 -->
					<div class="container">
						<form action="" method="post" class="form-horizontal">

							<div class="form-area">
								<!-- 部门编码 -->
								<div class="control-group">
									<label class="control-label " for="depEmail">机构名称</label>
									<div class="controls">
										<input type="text" id="depEmail" placeholder="">
									</div>
								</div>
								<!-- 部门名称 -->
								<div class="control-group">
									<label class="control-label" for="depName">机构地址</label>
									<div class="controls">
										<input type="text" id="depName" placeholder="">
									</div>
								</div>
								<!-- 部门负责人 -->
								<div class="control-group">
									<label class="control-label" for="depAdmin">机构电话</label>
									<div class="controls">
										<select>
											<option></option>
											<option>json</option>
											<option>smason</option>
										</select>
									</div>
								</div>
								<!-- 部门负责人 -->
								<div class="control-group">
									<label class="control-label" for="depAdmin">机构负责人</label>
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
										<th>序号</th>
										<th>编码</th>
										<th>名称</th>
										<th>地址</th>
										<th>联系人</th>
										<th>联系电话</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>J00001</td>
										<td>东风惠州4S店</td>
										<td>惠州市三栋数码工业园</td>
										<td>田总</td>
										<td>+86-752-99999999</td>
										<td>正常</td>
										<td>编辑 | 删除</td>
									</tr>
									<tr>
										<td>1</td>
										<td>J00001</td>
										<td>东风惠州4S店</td>
										<td>惠州市三栋数码工业园</td>
										<td>田总</td>
										<td>+86-752-99999999</td>
										<td>正常</td>
										<td>编辑 | 删除</td>
									</tr>
									<tr>
										<td>1</td>
										<td>J00001</td>
										<td>东风惠州4S店</td>
										<td>惠州市三栋数码工业园</td>
										<td>田总</td>
										<td>+86-752-99999999</td>
										<td>正常</td>
										<td>编辑 | 删除</td>
									</tr>
									<tr>
										<td>1</td>
										<td>J00001</td>
										<td>东风惠州4S店</td>
										<td>惠州市三栋数码工业园</td>
										<td>田总</td>
										<td>+86-752-99999999</td>
										<td>正常</td>
										<td>编辑 | 删除</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
					<!-- 机构设置结束 -->
					<!-- 状态区域开始 -->
					<div class="container">
						<form action="" method="post" class="form-horizontal">
							<div class="form-area">
								<!-- 部门名称 -->
								<div class="control-group">
									<label class="control-label" for="depName">状态名称</label>
									<div class="controls">
										<input type="text" id="depName" placeholder="">
									</div>
								</div>
								<!-- 岗位类别 -->
								<div class="control-group">
									<label class="control-label" for="depAdmin">状态描述</label>
									<div class="controls">
										<input type="text" id="depName" placeholder="">
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
										<th>序号</th>
										<th>编码</th>
										<th>名称</th>
										<th>描述</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>S0001</td>
										<td>正常</td>
										<td>正常使用中</td>
										<td>正常</td>
										<td>编辑 | 删除</td>
									</tr>
									<tr>
										<td>2</td>
										<td>S0002</td>
										<td>停用</td>
										<td>停止使用中</td>
										<td>正常</td>
										<td>编辑 | 删除</td>
									</tr>
									<tr>
										<td>3</td>
										<td>S0003</td>
										<td>报废</td>
										<td>报废待变卖</td>
										<td>正常</td>
										<td>编辑 | 删除</td>
									</tr>
									<tr>
										<td>4</td>
										<td>S0004</td>
										<td>保养</td>
										<td>正保养中</td>
										<td>正常</td>
										<td>编辑 | 删除</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 状态设置结束 -->
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
			/* 监听窗口变化 */
			$(window).off("resize").resize(function() {
				autoRigthWidth();
				autoLeftHeight();
			});
		});

		$(".con-nav").find("li").click(function() {
			var index = $(this).index();
			$(".con-nav").find("li").eq(index).addClass("active").siblings().removeClass("active");
			$(".container").eq(index).show().siblings().hide();
		});
  </script>
</body>
</html>
