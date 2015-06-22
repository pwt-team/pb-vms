<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
  <title>VMS - 管理平台</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <%@include file="common.jsp" %>
   
  <style type="text/css">
	/* 响应式布局 */
	@media screen and (max-width: 800px) { 
		.rightArea {display:none; }
		.header .logo .l-text,.header .nav .nav-right {display:none; }
	} 
		
  </style>
</head>
  <body>  
  	<%@include file ="header.jsp" %>
    <div class="center">
    	<!-- 左侧开始 -->
    	<div class="leftArea">
    		<%@include file ="menu.jsp" %>
    	</div>
    	<!-- 左侧结束 -->
    	
    	<!-- 右侧开始 -->
    	<div class="rightArea">
    		<div class="content">
    			<%@include file ="model/base/mainpanel.jsp" %>
    		</div>
    	<%@include file ="footer.jsp" %>
    	</div>
    </div>
    

    
  <script type="text/javascript">
  	/* 浏览器初始化  */
	$(function(){
		autoRigthWidth();
		autoLeftHeight();
		/* 监听窗口变化 */
		$(window).off("resize").resize(function() {
			autoRigthWidth();
			autoLeftHeight();
		});
	});

  </script>  
  </body>
</html>
