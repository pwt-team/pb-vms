<%@page import="com.vms.web.base.UserController"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String verifyCode = request.getParameter("verifyCode");
	System.out.print("params:"+verifyCode);
	String verifyNumr = (String)session.getAttribute("verifyCode"); 
	System.out.print("tools:"+verifyNumr);
	if(verifyNumr.equals("")){
		out.print("verifyIsNull");
	}else{
		if(!verifyCode.equalsIgnoreCase(verifyNumr)){
			out.print("verifyIsError");
		}else{
			out.print("verifyIsSuccess");
		}
	}

%>