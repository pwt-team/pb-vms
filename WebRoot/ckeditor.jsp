<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
application.setAttribute("basePath", basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<link rel="stylesheet" type="text/css" href="${basePath}js/ckeditor/contents.css">
	<script type="text/javascript" src="${basePath}js/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="${basePath}js/ckeditor/styles.js"></script>
	<link>
  </head>
  	<div id="box"></div>
  	<input type="button" onclick="go()" value="获取内容"/>
  
  <body>
    <script type="text/javascript">
    	/* 引入富文本编辑器  */
    	CKEDITOR.replace("box");
    	
    	function go(box){
    		SetContents("box");
    	}
    	
    	
    	function SetContents(editorId) {
    		var editor = CKEDITOR.instances[editorId];
    		var value = document.getElementById(editorId).value;
    		
    		editor.setData( value );
    		alert(value);
    	};
    	
		/* 获取富文本编辑器中,带样式的内容  */
    	function GetContents(editorId) {
    		var editor = CKEDITOR.instances[editorId];
    		var value = editor.getData();
    		alert(value );
    	};
    	
    	/* 获取富文本编辑器中,不带样式的内容  */
    	function GetEditorText(editorId) {
    		var editor = CKEDITOR.instances[editorId].document.getBody().getText();
    		alert(editor );
    	};  	
    	
    	
    </script>
  </body>
</html>
