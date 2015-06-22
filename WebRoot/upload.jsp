<%@page import="com.vms.bean.base.User"%>
<%@page import="com.vms.service.base.IUserServiceImpl"%>
<%@page import="com.vms.service.base.IUserService"%>
<%@page import="com.vms.dao.base.UserDao"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="com.vms.util.YzUpload"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//设置请求的编码和输出的编码
	request.setCharacterEncoding("UTF-8");//这个解决请求的乱码的问题
	response.setCharacterEncoding("UTF-8");//这个服务器传输给浏览器端中文的乱码问题
	

	//检查文件上传的请求是否使用了multipart/form-data
	String face = (String) session.getAttribute("face");
	String uuid = (String) session.getAttribute("uuid");
	String fileUrl = YzUpload.getUploadFile(request, response,face,uuid);
	if(StringUtils.isNotEmpty(fileUrl)){
		session.setAttribute("face", fileUrl);
		out.print(fileUrl);
	}else{
		out.print("fail");
	}
	
%>

