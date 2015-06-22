<%@page import="com.vms.util.YzUpload"%>
<%@page import="com.vms.util.YzUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 客户设置</title>
<%@include file="../../common.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${basePath}js/datetime/jquery.datetimepicker.css">
<script src="${basePath}js/datetime/jquery.js"></script>
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

.content .con-nav {
	font-size: 14px;
}

.content .car-info {
	height: 150px;
	display: none;
}

.content .car-info .c_panel {
	height: 100px;
}

.content .car-info .input-boxs {
	float: left;
}

.content .car-info .input-boxs .input-group {
	width: 300px;
	padding-right: 20px;
	float: left;
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
	width:600px;
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
						<li class="active"><a href="javascript:void(0);">客户类型</a></li>
					</ul>
				</div>
				<!-- formArea 开始 -->
				<div class="panel">
					<!-- 基本信息开始 -->
					<div class="car-info">
						<DIV CLASS="c_panel">
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="name">类型名称</label> <input
										class="input-box" id="name" type="text" name="name">
								</div>
								<div class="input-group">
									<label class="input-label" for="status">状态</label> <select
										name="status" id="status">
										<option>请选择</option>
										<option value="0">启用</option>
										<option value="1">停用</option>
									</select>
								</div>
								<div class="input-group"></div>
							</div>
							<!-- 第五行 -->
							<div class="input-boxs mTop-10 mLeft-100">
								<div class="btn" onclick="add()">添加</div>
								<div class="btn" onclick="submit()">保存</div>
							</div>
						</div>
						<!-- Table Area Start -->
						<div class="table-boxs">
							<table class="table table-hover" id="table-list">
								<thead>
									<tr>
										<th>序号</th>
										<th>类型</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>企业</td>
										<td>启用</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>个体</td>
										<td>启用</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>政府</td>
										<td>启用</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>机构</td>
										<td>启用</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 查询调度开始 -->
					<div class="car-info"></div>
					<!-- formArea END -->
				</div>
				<%@include file="../../footer.jsp"%>
			</div>
		</div>
	</div>
	<script type="text/javascript">
			/* 浏览器初始化  */
			$(function() {
				autoRigthWidth();
				autoLeftHeight();
				$(".car-info").eq(0).show();
				$("#goTime1").datetimepicker({
					format : "Y-m-d",
					timepicker : false
				});

				$("#goTime").datetimepicker({
					format : "Y-m-d H:m:s",
					timepicker : false
				});
				/* 监听窗口变化 */
				$(window).off("resize").resize(function() {
					autoRigthWidth();
					autoLeftHeight();
				});
			});
			$(".con-nav").find("li").click(
					function() {
						var index = $(this).index();
						$(".con-nav").find("li").eq(index).addClass("active")
								.siblings().removeClass("active");
						$(".car-info").eq(index).show().siblings().hide();
					});
	</script>
</body>
</html>
