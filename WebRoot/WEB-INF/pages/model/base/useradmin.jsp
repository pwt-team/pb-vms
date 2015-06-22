<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 管理平台</title>
<%@include file="../../common.jsp"%>
<link rel="stylesheet" type="text/css" href="${basePath}js/uploadify/uploadify.css">
<script type="text/javascript" src="${basePath}js/uploadify/jquery.uploadify.js"></script>
<script type="text/javascript" src="${basePath}js/uploadify/jquery.uploadify.min.js"></script>
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

#sysuser-edit,#sysuser-face {
	margin-left: 5px;
}

#verifypng {
	width: 100px;
	border-radius: 5px;
	border: 1px solid #ccc;
	height: 30px;
	cursor: pointer;
}

.content .sysuser-list {
	width: 600px;
	position: absolute;
	top: 40px;
}

.content .sysuser-list .sysuser-item {
	width: 600px;
	margin-top: 15px;
	display:none;
}

.content .sysuser-list .sysuser-item .form-text {
	width: 100px;
	float: left;
	text-align: right;
	line-height: 30px;
}

.content .sysuser-list .sysuser-item input[type="file"] {
	width: 65px;
}

.content .sysuser-list .sysuser-item .badge {
	margin-left: 10px;
}

.sysuser-item input {
	font-size: 12px;
}

.sysuser-item .face_box .uploadbox{
	margin-top:10px; 
}
.content .sysuser-list .sysuser-item .submit-btn,.reset-btn {
	width: 50px;
	margin: 10px;
}

.content .sysuser-list .sysuser-item .submit-btn {
	margin-left: 100px;
}

.content .sysuser-list .sysuser-item .file-btn {
	width: 70px;
	margin: 5px 0px;
}

#fileName {
	width: 400px;
	height: 19px;
}

.sysuser-sel {
	color: red;
	font-weight: bold;
}

.content .sysuser-list .sysuser-item .face_box {
	width: 260px;
	height: 260px;
	margin-left: 30px;
}

.content .sysuser-list .sysuser-item .face_box img {
	display: block;
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
				<div class="con-nav">
					<ul class="nav nav-tabs">
						<li class="active" id="sysuser-new"><a href="javascript:void(0);">注册用户</a></li>
						<li id="sysuser-edit"><a href="javascript:void(0);">帐号管理</a></li>
						<li id="sysuser-face"><a href="javascript:void(0);">头像管理</a></li>
					</ul>
				</div>
				<div class="sysuser-list">
					<!-- 创建新用户 -->
					<div class="sysuser-item">
						<%
							response.setHeader("Pragma", "no-cache");
							response.setHeader("chache-control", "no-cache");
							response.setDateHeader("expires", 0);
							String verifyCode = (String) session.getAttribute("verifyCode");
							pageContext.setAttribute("verifyCode", verifyCode);
						%>
						<form id="form-new">
							<div>
								<div class="form-text">帐号：</div>
								<input type="text" name="account" maxlength="20" id="account"
									placeHolder="请输入20个以内的字符"> <i
									class="badge badge-important"></i>
							</div>
							<div>
								<div class="form-text">妮称：</div>
								<input type="text" name="nickname" maxlength="20" id="nickName"
									placeHolder="请输入20个以内的字符"> <i
									class="badge badge-important"></i>
							</div>
							<div>
								<div class="form-text">密码：</div>
								<input type="password" name="password" maxlength="20"
									id="password" placeHolder="请输入20个以内的字符"> <i
									class="badge badge-important"></i>
							</div>
							<div>
								<div class="form-text">重复密码：</div>
								<input type="password" name="password2" maxlength="20"
									id="password2" placeHolder="请重复输入密码"> <i
									class="badge badge-important"></i>
							</div>
							<div>
								<div class="form-text">验证码：</div>
								<input type="text" name="verifyCode" maxlength="10"
									id="verifyCode" placeHolder="验证码不区分大小写"> <i
									class="badge badge-important"></i>
							</div>
							<div>
								<div class="form-text">验证图片：</div>
								<img src="${basePath}user/verify.jxp" id="verifypng">
							</div>
							<div>
								<div class="btn submit-btn" onclick="submit_new()">提交</div>
								<div class="btn reset-btn" onclick="reset_new()">重置</div>
							</div>
						</form>
					</div>
					<!-- 修改用户 -->
					<div class="sysuser-item">
						<div>
							<div class="form-text">帐号：</div>
							<input type="text" id="account_edit" readOnly="true" value="${user.account}">
						</div>
						<div>
							<div class="form-text">妮称：</div>
							<input type="text" id="nickName_edit" maxlength="20" value="${user.nickName}">
						</div>
						<div>
							<div class="form-text">密码：</div>
							<input type="password" id="password_edit" maxlength="20">
							<i class="badge badge-success"></i>
						</div>
						<div>
							<div class="form-text">重复密码：</div>
							<input type="password" id="password2_edit" maxlength="20" /> <i
								class="badge badge-important"></i>
						</div>
						<div>
							<div class="btn submit-btn" onclick="submit_edit()">提交</div>
							<div class="btn reset-btn" onclick="reset_edit()">重置</div>
						</div>
					</div>
					<!-- 头像管理 -->
					<div class="sysuser-item">
						<div class="face_box">
							<img class="img-polaroid" id="userFace" src="../images/default/user/face_unknown.png" width="128px" height="128px" alt="头像" title="乐凡头像">
							<div class="uploadbox">
								<%--用来作为文件队列区域--%>
								<div id="fileQueue"></div>
								<input type="file" name="uploadify" id="uploadify" />
<!-- 								<p>
									<a href="javascript:$('#uploadify').uploadify('upload')">上传</a>|
									<a href="javascript:$('#uploadify').uploadify('cancel')">取消上传</a>
								</p> -->
							</div>

							<p>
								<small>Please select JPG/JPEG file.</small>
							</p>
						</div>
					</div>
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
			$(".sysuser-item").eq(0).show();
		});
		/* 提交文件上传 */
		$(function () {
            $("#uploadify").uploadify({
                //指定swf文件
                "swf": "${basePath}js/uploadify/uploadify.swf",
                //后台处理的页面
                "uploader": "${basePath}upload.jsp",
                //按钮显示的文字
                "buttonText": "上传图片",
                //显示的高度和宽度，默认 height 30；width 120
                "height": 25,
                "width": 80,
                //上传文件的类型  默认为所有文件    "All Files"  ;  "*.*"
                //在浏览窗口底部的文件类型下拉菜单中显示的文本
                "fileTypeDesc": "Image Files",
                //允许上传的文件后缀
                "fileTypeExts": "*.gif; *.jpg; *.png",
                //发送给后台的其他参数通过formData指定
                //"formData": {"face":face},
                //上传文件页面中，你想要用来作为文件队列的元素的id, 默认为false  自动生成,  不带#
                //"queueID": "fileQueue",
                //选择文件后自动上传
                "auto": true,
                //设置为true将允许多文件上传
                "multi": true,
                "onUploadSuccess": function (file, data, response) {
                	var imgUrl = data.trim();
                	$("#userFace").attr("src","../upload/"+imgUrl);
                	$("#loginFace").attr("src","../upload/"+imgUrl);
                }
            });
        });
		
		/* 选项卡切换效果 */
		$(".con-nav").find("li").click(function() {
			var index = $(this).index();
			$(".con-nav").find("li").eq(index).addClass("active").siblings().removeClass("active");
			$(".sysuser-item").eq(index).show().siblings().hide();
		});

		/* 监听窗口变化 */
		window.onresize = function() {
			autoRigthWidth();
			autoLeftHeight();
		};

		/* 注册新用户 */
		function submit_new() {
			var account = $("#account").val();
			var nickName = $("#nickName").val();
			var password = $("#password").val();
			var password2 = $("#password2").val();
			var verifyCode = $("#verifyCode").val();
			var params = {
				"account" : account,
				"nickName" : nickName,
				"password" : password,
				"verifyCode" : verifyCode,
				"password2" : password2
			};
			if (paramsIsEmpty(params) == false) {
				return;
			};
			if (eqauls(password, password2) == false) {
				return;
			};
			//验证码
			if (isEmpty(verifyCode)) {
				alert("验证码不能为空！");
				return;
			};
			$.ajax({
				type : "post",
				url : "${basePath}user/registerAction.jxp",
				data : {
					"verifyCode" : verifyCode
				},
				success : function(response) {
					if (eqaulsRD($.trim(response), "verifyIsSuccess") == false) {
						alert("验证码不正确！");
						return;
					}
				}
			});
			$.ajax({
				type : "POST",
				url : "${basePath}user/create.jxp",
				data : params,
				success : function(response) {
					alert(response);
					if (eqauls(response, "success")) {
						reset_new();
						alert("用户注册成功！");
					}
				}

			});
		};

		/* 修改用户信息 */
		function submit_edit() {
			var iid = $(".user-info").data("iid");
			if (isEmpty(iid)) {
				alert("当前用户不存在!");
				return;
			}
			var nickName = $("#nickName_edit").val();
			if (isEmpty(nickName)) {
				alert("妮称不能为空!");
				return;
			}
			var password = $("#password_edit").val();
			if (isEmpty(password)) {
				alert("密码不能为空!");
				return;
			}
			var password2 = $("#password2_edit").val();
			if (isEmpty(password)) {
				alert("密码2不能为空!");
				return;
			}
			var params = {
				"id" : iid,
				"nickName" : nickName,
				"password" : password,
			};
			if (eqauls(password, password2) == false) {
				alert("两次输入的密码不正确！");
				return;
			};
			$.ajax({
				type : "POST",
				url : "${basePath}user/create.jxp",
				data : params,
				success : function(response) {
					if (isNotEmpty(response)) {
						reset_new();
						alert("修改成功!");
					}
				}
			});
		};

		/* 点击更换验证码  TODO  */
		$("#verifypng").click(function() {
			$.ajax({
				type : "GET",
				url : "${basePath}user/verify.jxp",
				success : function(response) {
					//var pngpath = "${basePath}upload/"+ response;
					//$(this).attr("src",pngpath);
				}
			});
		});
		
		/* 处理输入为空时的提示 */
		$("#form-new > div").find("input").blur(function() {
			var text = $(this).val();
			if (isEmpty(text)) {
				$(this).parent("div").find("i").text("x");
			} else {
				$(this).parent("div").find("i").text("");
			}
		});

		/* 判断第一次输入的密码长度 */
		$("#password").blur(function() {
			var pw = $("#password").val();
			if (isNotEmpty($(this).val()) && pw.length < 6) {
				$(this).parent("div").find("i").text( "密码长度不能小于6")
						.addClass("badge-important")
						.removeClass("badge-success");
			} else {
				$(this).parent("div").find("i").text("")
						.addClass("badge-success")
						.removeClass("badge-important");
			}
		});
		
		/* 判断第一次输入的密码长度 */
		$("#password_edit").blur(function() {
			var pw = $("#password_edit").val();
			if (isNotEmpty($(this).val()) && pw.length < 6) {
				$(this).parent("div").find("i").text("密码长度不能小于6")
						.addClass("badge-important")
						.removeClass("badge-success");
			} else {
				$(this).parent("div").find("i").text("")
						.addClass("badge-success")
						.removeClass("badge-important");
			}
		});
		/* 判断两次密码是否一致 */
		$("#password2").blur(function() {
			var pw = $("#password").val();
			if (isNotEmpty($(this).val()) && isNotEmpty(pw)) {
				if (eqauls(pw, $(this).val())) {
					$(this).parent("div").find("i").text("两次密码一致")
							.addClass("badge-success")
							.removeClass("badge-important");
				} else {
					$(this).parent("div").find("i").text("两次密码不一致")
							.addClass("badge-important")
							.removeClass("badge-success");
				}
			}
		});

		/* 处理提交参数空值项 */
		function paramsIsEmpty(obj) {
			var result = true;
			$.each(obj, function(k, v) {
				if (isEmpty(v)) {
					$("#" + k).parent("div").find("i").text("x");
					result = false;
				}
			});
			return result;
		};

		/* 处理提交参数空值项 */
		function paramsIsEmpty2(obj) {
			var result = true;
			$.each(obj, function(k, v) {
				if (isEmpty(v)) {
					result = false;
				}
			});
			return result;
		};
	</script>
</body>
</html>
