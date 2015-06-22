<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 添加查询</title>
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

.content .bill-info {
	height: 150px;
	display: none;
}

.content .bill-info .s_panel {
	height: 130px;
}

.content .bill-info .input-boxs {
	float: left;
}

.content .bill-info .input-boxs .input-group {
	width: 300px;
	padding-right: 20px;
	float: left;
}

.content .bill-info .input-boxs .input-label {
	width: 70px;
	float: left;
	padding: 4px 10px;
	text-align: right;
}

.content .bill-info .input-boxs .input-box {
	width: 160px;
	height: 17px;
	font-size: 12px;
}

.content .bill-info .input-boxs select {
	width: 173px;
	height: 28px;
	font-size: 12px;
}

.content .bill-info .input-boxs select option {
	padding: 5px 0px;
}

.content .bill-info .input-boxs .btn {
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
						<li class="active"><a href="javascript:void(0);">查询运单</a></li>
					</ul>
				</div>
				<!-- formArea 开始 -->
				<div class="panel">
					<!-- 查询调度开始 -->
					<div class="bill-info">
						<div class="s_panel">
							<!-- 第一行 -->
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="s_number">车牌号</label> <select
										name="s_number" id="s_number">
										<option>请选择</option>
										<option value="0">JIT转仓</option>
										<option value="1">长途运办理</option>
										<option value="2">保养</option>
										<option value="3">检修</option>
										<option value="4">加油</option>
									</select>
								</div>
								<div class="input-group">
									<label class="input-label" for="s_customer">客户</label> <select
										name="customer" id="customer">
										<option>请选择</option>
										<option value="0">联想</option>
										<option value="1">中外运</option>
										<option value="2">中石油</option>
										<option value="3">DELL</option>
										<option value="4">华为</option>
									</select>
								</div>
								<div class="input-group">
									<label class="input-label" for="s_driver">驾驶员</label> <select
										name="s_driver" id="s_driver">
										<option>请选择</option>
										<option value="0">联想</option>
										<option value="1">中外运</option>
										<option value="2">中石油</option>
										<option value="3">DELL</option>
										<option value="4">华为</option>
									</select>
								</div>
							</div>
							<!-- 第二行 -->
							<div class="input-boxs">
								<div class="input-group">
									<label class="input-label" for="s_Date">开始日期</label> <input
										class="input-box" id="s_Date" type="text" name="s_Date"
										placeholder="选择日期">
								</div>
								<div class="input-group">
									<label class="input-label" for="e_Date">结束日期</label> <input
										class="input-box" id="e_Date" type="text" name="e_Date"
										placeholder="选择日期">
								</div>
								<div class="input-group">
									<label class="input-label" for="s_status">状态</label> <select
										name="s_driver" id="customer">
										<option>请选择</option>
										<option value="0">进行中</option>
										<option value="1">完成</option>
									</select>
								</div>
							</div>
							<!-- 第三行 -->
							<div class="input-boxs mTop-10 mLeft-100">
								<div class="btn" onclick="search()">查询</div>
								<div class="btn" onclick="reset()">重置</div>
							</div>
						</div>
						<!-- Table Area Start -->
						<div class="table-boxs">
							<table class="table table-hover" id="table-list">
								<thead>
									<tr>
										<th>#</th>
										<th>车牌号</th>
										<th>车辆名称</th>
										<th>客户名称</th>
										<th>出车路线</th>
										<th>出车时间</th>
										<th>驾驶员</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>粤L232323</td>
										<td>东风12米长车</td>
										<td>联想</td>
										<td>惠阳联想 - 深圳海关</td>
										<td>2015-01-01 12：12：12 - 2015-01-02 11:11:11</td>
										<td>刘老车</td>
										<td>完成</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>粤L232323</td>
										<td>东风12米长车</td>
										<td>联想</td>
										<td>惠阳联想 - 深圳海关</td>
										<td>2015-01-01 12：12：12 - 2015-01-02 11:11:11</td>
										<td>刘老车</td>
										<td>完成</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>粤L232323</td>
										<td>东风12米长车</td>
										<td>联想</td>
										<td>惠阳联想 - 深圳海关</td>
										<td>2015-01-01 12：12：12 - 2015-01-02 11:11:11</td>
										<td>刘老车</td>
										<td>完成</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>粤L232323</td>
										<td>东风12米长车</td>
										<td>联想</td>
										<td>惠阳联想 - 深圳海关</td>
										<td>2015-01-01 12：12：12 - 2015-01-02 11:11:11</td>
										<td>刘老车</td>
										<td>完成</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>粤L232323</td>
										<td>东风12米长车</td>
										<td>联想</td>
										<td>惠阳联想 - 深圳海关</td>
										<td>2015-01-01 12：12：12 - 2015-01-02 11:11:11</td>
										<td>刘老车</td>
										<td>完成</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>粤L232323</td>
										<td>东风12米长车</td>
										<td>联想</td>
										<td>惠阳联想 - 深圳海关</td>
										<td>2015-01-01 12：12：12 - 2015-01-02 11:11:11</td>
										<td>刘老车</td>
										<td>完成</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>粤L232323</td>
										<td>东风12米长车</td>
										<td>联想</td>
										<td>惠阳联想 - 深圳海关</td>
										<td>2015-01-01 12：12：12 - 2015-01-02 11:11:11</td>
										<td>刘老车</td>
										<td>完成</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>粤L232323</td>
										<td>东风12米长车</td>
										<td>联想</td>
										<td>惠阳联想 - 深圳海关</td>
										<td>2015-01-01 12：12：12 - 2015-01-02 11:11:11</td>
										<td>刘老车</td>
										<td>完成</td>
										<td><a href="javascript:void(0);">删除</a> <a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>粤L232323</td>
										<td>东风12米长车</td>
										<td>联想</td>
										<td>惠阳联想 - 深圳海关</td>
										<td>2015-01-01 12：12：12 - 2015-01-02 11:11:11</td>
										<td>刘老车</td>
										<td>完成</td>
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
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>
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
			$(".bill-info").eq(0).show();
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
	</script>
</body>
</html>
