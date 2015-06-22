<%@page import="com.vms.util.YzUpload"%>
<%@page import="com.vms.util.YzUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 客户信息管理</title>
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
	height: 170px;
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
}

.pagination a {
	color: #666;
}

#address {
	width: 185px;
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
						<li class="active"><a href="javascript:void(0);">客户信息</a></li>
					</ul>
				</div>
				<!-- formArea 开始 -->
				<div class="panel">
					<!-- 基本信息开始 -->
					<div class="car-info">
						<div class="c_panel">
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="name">客户简称</label> <input
										class="input-box" id="name" type="text" name="name"
										maxlength="22"> <span class="x_tag">*</span>
								</div>
								<div class="input-group">
									<label class="input-label" for="code">客户编号</label> <input
										class="input-box" id="code" type="text" name="code"
										placeholder="系统生成" readOnly="true">
								</div>
								<div class="input-group">
									<label class="input-label" for="type">客户类型</label> <select
										name="type" id="type">
										<option>请选择</option>
										<option value="0">企业</option>
										<option value="1">个体</option>
										<option value="2">外包</option>
									</select> <span class="x_tag">*</span>
								</div>
							</div>
							<!-- 第二行 -->
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="contacts">联系人</label> <input
										class="input-box" id="contacts" type="text" name="contacts"
										maxlength="20"> <span class="x_tag">*</span>
								</div>
								<div class="input-group">
									<label class="input-label" for="callNumber">联系电话</label> <input
										class="input-box" id="callNumber" type="text"
										name="callNumber" maxlength="20">
								</div>
								<div class="input-group">
									<label class="input-label" for="phoneNumber">手机号码</label> <input
										class="input-box" id="phoneNumber" type="text"
										name="phoneNumber" maxlength="20">
								</div>
							</div>
							<!-- 第三行 -->
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="address">客户地址</label> <input
										class="input-box" id="address" type="text" name="address"
										maxlength="20">
								</div>
								<div class="input-group">
									<label class="input-label" for="status">状态</label> <select
										name="status" id="status">
										<option>请选择</option>
										<option value="0">正常</option>
										<option value="1">中止</option>
										<option value="2">锁定</option>
									</select>
								</div>
								<div class="input-group"></div>
							</div>
							<!-- 第五行 -->
							<div class="input-boxs mTop-10 mLeft-100">
								<div class="btn" onclick="add()">添加</div>
								<div class="btn" onclick="submit()">保存</div>
								<div class="btn" onclick="reset()">重置</div>
							</div>
						</div>
						<!-- Table Area Start -->
						<div class="table-boxs">
							<table class="table table-hover" id="table-list">
								<thead>
									<tr>
										<th>#</th>
										<th>客户编码</th>
										<th>客户名称</th>
										<th>客户类型</th>
										<th>联系人</th>
										<th>联系电话</th>
										<th>手机号码</th>
										<th>客户地址</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>C0001</td>
										<td>惠阳联想</td>
										<td>企业</td>
										<td>李长城</td>
										<td>+86-752-3500450-4343</td>
										<td>+86-13588888888</td>
										<td>广东惠州惠阳三和开发区联想科技园E栋</td>
										<td>正常</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>C0001</td>
										<td>惠阳联想</td>
										<td>企业</td>
										<td>李长城</td>
										<td>+86-752-3500450-4343</td>
										<td>+86-13588888888</td>
										<td>广东惠州惠阳三和开发区联想科技园E栋</td>
										<td>正常</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>C0001</td>
										<td>惠阳联想</td>
										<td>企业</td>
										<td>李长城</td>
										<td>+86-752-3500450-4343</td>
										<td>+86-13588888888</td>
										<td>广东惠州惠阳三和开发区联想科技园E栋</td>
										<td>正常</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>4</td>
										<td>C0001</td>
										<td>惠阳联想</td>
										<td>企业</td>
										<td>李长城</td>
										<td>+86-752-3500450-4343</td>
										<td>+86-13588888888</td>
										<td>广东惠州惠阳三和开发区联想科技园E栋</td>
										<td>正常</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="pagination">
							<ul>
								<li><a href="#">&laquo;</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>
					<!-- 查询调度开始 -->
					<div class="car-info">
						<div class="s_panel">暂未开发</div>
	
	
					</div>
				</div>
				<!-- formArea END -->
			</div>
		</div>
		<%@include file="../../footer.jsp"%>
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
