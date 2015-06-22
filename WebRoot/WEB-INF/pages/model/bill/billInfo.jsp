<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 添加运单</title>
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
	height: 210px;
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
						<li class="active"><a href="javascript:void(0);">添加运单</a></li>
					</ul>
				</div>
				<!-- formArea 开始 -->
				<div class="panel">
					<!-- 基本信息开始 -->
					<div class="bill-info">
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="number">车牌号码</label> <select
									autofocus="autofocus">
									<option>请选择</option>
									<option value="0">粤L09808</option>
									<option value="1">粤L09809</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="code">车辆编号</label> <input
									class="input-box" id="code" type="text" name="code"
									placeholder="系统生成" readOnly="true">
							</div>
							<div class="input-group">
								<label class="input-label" for="name">车辆名称</label> <input
									class="input-box" id="name" type="text" name="name"
									readOnly="true">
							</div>

						</div>
						<!-- 第二行 -->
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="type">类型</label> <select
									name="type" id="type">
									<option>请选择</option>
									<option value="0">JIT转仓</option>
									<option value="1">长途运办理</option>
									<option value="2">保养</option>
									<option value="3">检修</option>
									<option value="4">加油</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="customer">客户</label> <select
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
								<label class="input-label" for="goTime">出发时间</label> <input
									class="input-box" id="goTime" type="text" name="goTime"
									placeholder="选择日期">
							</div>
						</div>
						<!-- 第三行 -->
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="startAddress">出发地点</label> <select
									name="startAddress" id="startAddress">
									<option>请选择</option>
									<option value="0">惠州TCL</option>
									<option value="1">惠阳三和</option>
									<option value="2">惠阳联想</option>
									<option value="3">惠阳淡水</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="endAddress">目的地点</label> <select
									name="endAddress" id="endAddress">
									<option>请选择</option>
									<option value="0">惠州TCL</option>
									<option value="1">惠阳三和</option>
									<option value="2">惠阳联想</option>
									<option value="3">惠阳淡水</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="driver">驾驶员</label> <select>
									<option>请选择</option>
									<option value="0">张有财</option>
									<option value="1">李有前</option>
								</select>
							</div>
						</div>
						<!-- 第四行 -->
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="gasolineQty">油量</label> <input
									class="input-box" id="gasolineQty" type="text"
									name="gasolineQty">
							</div>
							<div class="input-group">
								<label class="input-label" for="gasolineType">加油方式</label> <select
									name="gasolineType" id="gasolineType">
									<option>请选择</option>
									<option value="0">现金</option>
									<option value="1">加油卡</option>
									<option value="2">签单</option>
									<option value="3">其它</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="remark">特殊说明</label> <input
									class="input-box" id="remark" type="text" name="gasolineQty"
									value="可以考虑通过配置方案来减少输入">
							</div>
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
