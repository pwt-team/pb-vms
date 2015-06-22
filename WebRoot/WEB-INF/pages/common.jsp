<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	application.setAttribute("basePath", basePath);
%>
<link rel="stylesheet" type="text/css" href="${basePath}css/common.css">
<link rel="stylesheet" type="text/css" href="${basePath}js/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/animate.css">
<link rel="shortcut icon" href ="${basePath}images/favicon.png">
<script type="text/javascript" src="${basePath}js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="${basePath}js/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${basePath}js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${basePath}js/util.js"></script>
<script type="text/javascript" src="${basePath}js/main-autowh.js"></script>
<script type="text/javascript" src="${basePath}js/upload/tz_upload.js"></script>
<script type="text/javascript" src="${basePath}js/sg/sg.js"></script>

