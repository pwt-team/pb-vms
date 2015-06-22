<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	application.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML>
<html>
<head>
<title>VMS - 登录页</title>
<meta name="keywords" content="keyword1,keyword2,keyword3">
<link rel="stylesheet" type="text/css" href="${basePath}css/default.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/animate.css">
<script type="text/javascript" src="${basePath}js/jquery-1.11.2.min.js"></script>
<style type="text/css">
body {
	background: #ddd;
}

.login {
	width: 600px;
	height: 300px;
	margin: 10% auto;
}

.login span {
	font-size: 46px;
}

.login p {
	font-size: 38px;
	text-align: center;
	padding-bottom: 30px;
}

.login .box {
	width: 350px;
	height: 300px;
	margin: 0 auto;
}

.login .box .message {
	width: 350px;
	height: 35px;
	color: red;
	line-height: 35px;
	padding: 0 10px;
}

.login .box .username,.password,.button,.message {
	width: 350px;
	height: 45px;
	margin-bottom: 15px;
}

.login .box .username,.password {
	background: #fff;
	border: 1px solid #f3f3f3;
	font-size: 20px;
}

.login .box .button {
	background: #09c;
	font-family: "微软雅黑";
	font-size: 18px;
	transition: background 0.3s ease;
}

.login .box .button:hover {
	background: #0866cc;
}

.login .box .button a {
	display: block;
	line-height: 45px;
	text-align: center;
	color: #f3f3f3;
}

input[type="text"],[type="password"] {
	width: 340px;
	height: 35px;
	font-size: 18px;
}

.copy {
	width: 100%;
	text-align: center;
	display: block;
}
</style>

</head>

<body>

	<div class="login animated bounceInDown">
		<p>
			<span>V</span>ehicle <span>M</span>anagement <span>S</span>ystem
		</p>
		<div class="box">
			<div class="message"></div>
			<div class="username">
				<input type="text" id="username" value="yuanzhong"
					autocomplete="off" placeholder="请输入帐号">
			</div>
			<div class="password">
				<input type="password" id="password" value="123"
					autocomplete="off" placeholder="请输入密码">
			</div>
			<div class="button">
				<a href="javascript:void(0);" onclick="login(this);">登录系统</a>
			</div>
		</div>

	</div>

	<span class="copy">© 2015. PengBo VMS. All Rights Reserved.</span>

	<script type="text/javascript">
		function login() {
			var username = $("#username").val();
			var password = $("#password").val();
			$.ajax({
				type : "post",
				data : {
					account : username,
					password : password
				},
				url : "${basePath}login",
				beforSend : function() {
				},
				success : function(data) {
					var result = data.trim();
					if (result != null && result == "success") {
						window.location.href = "${basePath}main";
					} else {
						message("登录失败:请您输入正常的帐号和密码！");
					}
				},
				complete : function() {
				}
			});

		}
		/* 为消息框赋值  */
		function message(text) {
			$(".message").text(text);
			setTimeout(function() {
				$(".message").text("");
			}, 3000);
			$("#password").val("");
			$("#username").select();
		};
	</script>

</body>
</html>
