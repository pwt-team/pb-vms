<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	application.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>VMS-欢迎页！</title>
	<meta name="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="refresh" content="3;url=./index" /> 
	<link rel="stylesheet" type="text/css" href="./css/default.css">
	<style type="text/css">
		.box {width:100%; height:400px;  margin:0 auto;  }
		.box .panel {width:238px; height:380px; margin:100px auto; }
		</style>
  </head>
  
  <body>
  
  	<div class="box">
  		<div class="panel"><img alt="鹏博物流" src="images/wl.png"></div>
  	</div>
  </body>
</html>
