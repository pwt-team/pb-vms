<%@page import="com.vms.util.YzUpload"%>
<%@page import="com.vms.util.YzUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 车辆信息</title>
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
	height:150px; 
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

.content .table-area {
	width: 1000px;
	margin-top: 20px;
}

.content .table-area table td,th {
	border-right: 1px solid #ddd;
}

.content .table-area table th {
	border-right: 1px solid #ddd;
	text-align:center; 
}

.content .table-area .table-hover>thead {
	border-top: 1px solid #ddd;
	background: #f3f3f3;
}

.content .table-area table {
	border: 1px solid #ddd;
	padding: -5px;
	font-size:12px; 
}

.textAlignCenter {
	text-align:center; 
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
						<li class="active"><a href="javascript:void(0);">基本信息</a></li>
					</ul>
				</div>
				<!-- formArea -->
				<!-- 基本信息开始 -->
				<div class="car-info">
					<div class="input-boxs">
						<div class="input-group">
							<label class="input-label" for="code">车辆编号</label> <input
								class="input-box" id="code" type="text" name="code"
								placeholder="系统生成" readOnly="true">
						</div>
						<div class="input-group">
							<label class="input-label" for="name">车辆信息</label> <input
								class="input-box" id="name" type="text" name="name"
								autofocus="autofocus">
						</div>
						<div class="input-group">
							<label class="input-label" for="number">车牌号码</label> <input
								class="input-box" id="number" type="text" name="number"
								autofocus="autofocus">
						</div>
					</div>
					<!-- 第二行 -->
					<div class="input-boxs">
						<div class="input-group">
							<label class="input-label">车型</label> <select>
								<option>请选择</option>
								<option value="0">9米长车</option>
								<option value="1">12米长车</option>
							</select>
						</div>
						<div class="input-group">
							<label class="input-label" for="buyDate">购车日期</label> <input
								class="input-box" id="buyDate" type="text" name="buyDate"
								placeholder="选择日期">
						</div>
						<div class="input-group">
							<label class="input-label" for="worth">购车金额</label> <input
								class="input-box" id="worth" type="text" name="worth">
						</div>
					</div>
					<!-- 第三行 -->
					<div class="input-boxs">
						<div class="input-group">
							<label class="input-label" for="driver">驾驶员</label> <select>
								<option>请选择</option>
								<option value="0">张有财</option>
								<option value="1">李有前</option>
							</select>
						</div>
						<div class="input-group">
							<label class="input-label" for="status">车辆状态</label> <input
								class="input-box" id="status" type="text" name="native">
						</div>
						<div class="input-group"></div>
					</div>
					<!-- 第四行 -->
					<!-- 第五行 -->
					<div class="input-boxs mTop-10 mLeft-100">
						<div class="btn" onclick="add()">添加</div>
						<div class="btn" onclick="submit()">保存</div>
						<div class="btn" onclick="reset()">重置</div>
					</div>
				</div>
				<!-- TableArea -->
				<div class="table-area">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>序号</th>
								<th>编码</th>
								<th>名称</th>
								<th>车型</th>
								<th>车牌</th>
								<th>价格</th>
								<th>购车日期</th>
								<th>停用日期</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>V323201</td>
								<td>大奔A3232</td>
								<td>12米长拖</td>
								<td>粤L88888</td>
								<td>230万</td>
								<td>2015-01-01</td>
								<td>2015-01-01</td>
								<td>正常</td>
								<td>修改 | 删除</td>
							</tr>
							<tr>
								<td>1</td>
								<td>V323201</td>
								<td>大奔A3232</td>
								<td>12米长拖</td>
								<td>粤L88888</td>
								<td>230万</td>
								<td>2015-01-01</td>
								<td>2015-01-01</td>
								<td>正常</td>
								<td>修改 | 删除</td>
							</tr>
							<tr>
								<td>1</td>
								<td>V323201</td>
								<td>大奔A3232大奔A3232大奔</td>
								<td>12米长拖</td>
								<td>粤L88888</td>
								<td>230万</td>
								<td>2015-01-01</td>
								<td>2015-01-01</td>
								<td>正常</td>
								<td>修改 | 删除</td>
							</tr>
							<tr>
								<td>1</td>
								<td>V323201</td>
								<td>大奔A3232</td>
								<td>12米长拖</td>
								<td>粤L88888</td>
								<td>230万</td>
								<td>2015-01-01</td>
								<td>2015-01-01</td>
								<td>正常</td>
								<td>修改 | 删除</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- tableArea END -->
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
			<%@include file="../../footer.jsp"%>
		</div>
	</div>
	<script type="text/javascript">
		/* 浏览器初始化  */
		$(function() {
			autoRigthWidth();
			autoLeftHeight();
			$(".car-info").eq(0).show();
			$("#buyDate").datetimepicker({
				format : "Y-m-d",
				timepicker : false
			});
		});

		/* 监听窗口变化 */
		window.onresize = function() {
			autoRigthWidth();
			autoLeftHeight();
		};

	</script>
</body>
</html>
