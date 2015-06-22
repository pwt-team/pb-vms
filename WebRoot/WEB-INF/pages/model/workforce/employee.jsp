<%@page import="com.vms.util.YzUpload"%>
<%@page import="com.vms.util.YzUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 人员信息</title>
<%@include file="../../common.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${basePath}js/datetime/jquery.datetimepicker.css">
<script src="${basePath}js/datetime/jquery.js"></script>
<script src="${basePath}js/datetime/jquery.datetimepicker.js"></script>
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

.content .con-nav {
	font-size: 14px;
}

.content .emp-info {
	position: absolute;
	top: 50px;
	display: none;
}

.content .emp-info .input-boxs {
	float: left;
}

.content .emp-info .input-boxs .input-group {
	width: 300px;
	padding-right: 20px;
	float: left;
}

.content .emp-info .input-boxs .input-label {
	width: 70px;
	float: left;
	padding: 4px 10px;
	text-align: right;
}

.content .emp-info .input-boxs .input-box {
	width: 160px;
	height: 17px;
	font-size: 12px;
}

.content .emp-info .input-boxs select {
	width: 173px;
	height: 28px;
	font-size: 12px;
}

.content .emp-info .input-boxs select option {
	padding: 5px 0px;
}

.content .emp-info .input-boxs .btn {
	width: 60px;
	padding: 6px 8px;
}

#homeAddress {
	width: 190px;
}

.mTop-20 {
	margin-top: 20px;
}

.mLeft-100 {
	margin-left: 90px;
}

.content .emp-info .table-boxs {
	width: 1000px;
	margin-top: 100px;
}

.content .emp-info .table-boxs .table {
	border: 1px solid #ddd;
}

.content .emp-info .table-boxs .table thead {
	background: #f3f3f3;
}

.content .emp-info .table-boxs .table thead th,td {
	border-right: 1px solid #ddd;
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
				<!-- 导航选项卡 -->
				<div class="con-nav">
					<ul class="nav nav-tabs">
						<li class="active"><a href="javascript:void(0);">基本信息</a></li>
						<li><a href="javascript:void(0);">扩展信息</a></li>
						<li><a href="javascript:void(0);">附件管理</a></li>
					</ul>
				</div>
				<div class="emp-panel">
					<!-- 基本信息开始 -->
					<div class="emp-info">
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="code">员工编号</label> <input
									class="input-box" id="code" type="text" name="code"
									placeholder="系统生成" readOnly="true">
							</div>
							<div class="input-group">
								<label class="input-label" for="name">员工姓名</label> <input
									class="input-box" id="name" type="text" name="name"
									autofocus="autofocus">
							</div>
							<div class="input-group">
								<label class="input-label" for="">性别</label> <select>
									<option></option>
									<option value="1">男</option>
									<option value="0">女</option>
								</select>
							</div>
						</div>
						<!-- 第二行 -->
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label">民族</label> <select>
									<option></option>
									<option value="0">汉族</option>
									<option value="1">少数民族</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="">婚否</label> <select>
									<option value="0">未婚</option>
									<option value="1">已婚</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="">政治面貌</label> <select>
									<option></option>
									<option value="0">团员</option>
									<option value="1">党员</option>
								</select>
							</div>
						</div>
						<!-- 第三行 -->
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="idcard">身份证号</label> <input
									class="input-box" id="idcard" type="text" name="idcard"
									maxlength="18" placeholder="不超过18位">
							</div>
							<div class="input-group">
								<label class="input-label" for="native">籍贯</label> <input
									class="input-box" id="native" type="text" name="native">
							</div>
							<div class="input-group">
								<label class="input-label" for="homeAddress">家庭住址</label> <input
									class="input-box" id="homeAddress" type="text"
									name="homeAddress">
							</div>
						</div>
						<!-- 第四行 -->
						<div class="input-boxs mTop-20">
							<div class="input-group">
								<label class="input-label" for="edu">驾驶资格</label> <select
									name="driverType">
									<option value=""></option>
									<option value="a">A</option>
									<option value="b">B</option>
									<option value="c">C</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="paperDate">领证日期</label> <input
									class="input-box" id="paperDate" type="text" name="paperDate"
									placeholder="选择日期">
							</div>
							<div class="input-group">
								<label class="input-label" for="pagerAge">有效年限</label> <select
									name="driverType">
									<option value=""></option>
									<option value="3">三年</option>
									<option value="4">四年</option>
									<option value="5">五年</option>
									<option value="6">六年</option>
									<option value="7">七年</option>
									<option value="8">八年</option>
									<option value="9">九年</option>
									<option value="10">十年</option>
								</select>
							</div>
						</div>
						<!-- 第五行 -->
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="paperOffice">发证机关</label> <input
									class="input-box" id="paperOffice" type="text"
									name="paperOffice">
							</div>
							<div class="input-group">
								<label class="input-label" for="paperCode">证件编码</label> <input
									class="input-box" id="paperCode" type="text" name="paperOffice">
							</div>
							<div class="input-group"></div>
						</div>
						<!-- 第六行 -->
						<div class="input-boxs  mTop-20">
							<div class="input-group">
								<label class="input-label" for="department">部门</label> <select
									name="department">
									<option value=""></option>
									<option value="1">总经理室</option>
									<option value="2">行政后勤</option>
									<option value="3">客户关系</option>
									<option value="4">运输部</option>
									<option value="5">财务部</option>
									<option value="6">法务部</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="group">组别</label> <select
									name="group">
									<option value=""></option>
									<option value="1">总经理室</option>
									<option value="2">行政后勤</option>
									<option value="3">客户关系</option>
									<option value="4">运输部</option>
									<option value="5">财务部</option>
									<option value="6">法务部</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="position">岗位</label> <select
									name="position">
									<option value=""></option>
									<option value="1">总经理</option>
									<option value="2">经理</option>
									<option value="3">主管</option>
									<option value="4">组长</option>
									<option value="5">司机</option>
									<option value="6">临时工</option>
								</select>

							</div>
						</div>
						<!-- 第七行 -->
						<div class="input-boxs mTop-20 mLeft-100">
							<div class="btn" onclick="submit()">提交</div>
							<div class="btn" onclick="reset()">重置</div>
						</div>
					</div>
					<!-- 基本信息结束 -->
					<!-- 扩展信息开始 -->
					<div class="emp-info">
						<!-- 第一行 -->
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="status">在职状态</label> <select
									name="status">
									<option value=""></option>
									<option value="1">在职</option>
									<option value="2">离职</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="inTime">入职时间</label> <input
									class="input-box" id="inTime" type="text" name="inTime"
									placeholder="选择日期">
							</div>
							<div class="input-group">
								<label class="input-label" for="resource">来源/渠道</label> <input
									class="input-box" id="resource" type="text" name="resource">
							</div>
						</div>
						<!-- 第三行 -->
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="contract">合同/协议</label> <select
									name="contract">
									<option value=""></option>
									<option value="1">未签订</option>
									<option value="2">已签订</option>
								</select>
							</div>
							<div class="input-group">
								<label class="input-label" for="startDate">起始日期</label> <input
									class="input-box" id="startDate" type="text" name="startDate"
									placeholder="选择日期">
							</div>
							<div class="input-group">
								<label class="input-label" for="endDate">终止日期</label> <input
									class="input-box" id="endDate" type="text" name="endDate"
									placeholder="选择日期">
							</div>
						</div>
						<div class="input-boxs  mTop-20">
							<div class="input-group">
								<label class="input-label" for="code">紧急联络人</label> <input
									class="input-box" id="code" type="text" name="code">
							</div>
							<div class="input-group">
								<label class="input-label" for="name">联系电话</label> <input
									class="input-box" id="name" type="text" name="name">
							</div>
							<div class="input-group">
								<label class="input-label" for="">附属关系</label> <input
									class="input-box" id="name" type="text" name="name">
							</div>
						</div>
						<!-- 第六行 -->
						<div class="input-boxs mTop-20 mLeft-100">
							<div class="btn" onclick="submit()">提交</div>
							<div class="btn" onclick="reset()">重置</div>
						</div>
					</div>
					<!-- 扩展信息结束 -->
					<!-- 附件信息开始 -->
					<div class="emp-info">
						<!-- 第一行 -->
						<div class="input-boxs">
							<div class="input-group">
								<label class="input-label" for="name">附件名称</label> <input
									class="input-box" id="name" type="text" name="name"
									autofocus="autofocus">
							</div>
							<div class="input-group">
								<label class="input-label" for="">类型</label> <select>
									<option></option>
									<option value="1">图片</option>
									<option value="2">文件</option>
									<option value="3">其它</option>
								</select>
							</div>
							<div class="input-group"></div>

						</div>
						<!-- 第二行 -->
						<div class="input-boxs">
							<div class="btn mLeft-100" onclick="submit_upload()">提交附件</div>
							<div class="input-group"></div>
							<div class="input-group"></div>
						</div>
						<!-- 第三行 -->
						<div class="table-boxs">
							<table class="table table-hover" id="table-list">
								<thead>
									<tr>
										<th>#</th>
										<th>标题</th>
										<th>名称</th>
										<th>类型</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>身份证</td>
										<td>jpopopoppkpokp32.jpg</td>
										<td>身份证</td>
										<td><a href="javascript:void(0);">删除</a><a
											href="javascript:void(0);">下载</a></td>
									</tr>
									<tr>
										<td>1</td>
										<td>身份证</td>
										<td>jpopopoppkpokp32.jpg</td>
										<td>身份证</td>
										<td><a href="javascript:void(0);">删除</a><a
											href="javascript:void(0);">下载</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 附件信息结束 -->
				</div>
			</div>
		</div>
		<%@include file="../../footer.jsp"%>
	</div>

	<script type="text/javascript">
		/* 浏览器初始化  */
		$(function() {
			autoRigthWidth();
			autoLeftHeight();
			$("#paperDate,#inTime,#outTime,#endDate,#startDate")
					.datetimepicker({
						format : "Y-m-d",
						timepicker : false
					});

			$(".emp-info").eq(0).show();
			/* 监听窗口变化 */
			$(window).off("resize").resize(function() {
				autoRigthWidth();
				autoLeftHeight();
			});
		});

		$(".con-nav").find("li").click(
				function() {
					var index = $(this).index();
					var liDom = $(".con-nav").find("li");
					liDom.eq(index).addClass("active").siblings().removeClass(
							"active");
					$(".emp-info").eq(index).show().siblings().hide();
				});
	</script>
</body>
</html>
