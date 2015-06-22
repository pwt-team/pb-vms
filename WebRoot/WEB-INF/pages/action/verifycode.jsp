<%@page import="com.vms.util.YzUtil"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Font"%>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.Graphics"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%

	//第一步：清除缓存
	response.setHeader("Pragma","no-cache");  
	response.setHeader("chache-control", "no-cache");
	response.setDateHeader("expires",0);
	
	//第二步：创建验证码图片
	//定义尺寸
	int width = 90;
	int height = 32;
	
	//建议BufferdImage 对象
	BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
	//响应的输出流
	OutputStream os = response.getOutputStream();
	
	//创建Graphics对象的画布
	Graphics gc = image.getGraphics();
	//绘制图片背景
	Random random = new Random();
	//gc.setColor(getRandomColor(200, 250));
	gc.setColor(Color.lightGray);
	gc.fillRect(0, 0, width, height);
	
	//设置字体
	gc.setFont(new Font("console",Font.BOLD,16));
	
	//设置干扰线颜色
	//gc.setColor(getRandomColor(100, 250));
	for(int i=0; i < 155 ; i++){
		int x = random.nextInt(width);
		int y = random.nextInt(height);
		int x1 = random.nextInt(50);
		int y1 = random.nextInt(50); 
		gc.drawLine(x, y, x1, y1);
		
	} 
	
	
	gc.setColor(Color.white);
	String numr = YzUtil.getRdomChar(6);
	gc.drawString(numr, 12, 20);
	gc.dispose();
	ImageIO.write(image, "JPEG", os);
	session.setAttribute("verifyCode", numr);
	//关闭流
	os.flush();
	os.close();
	os= null;
	response.flushBuffer();
	out.clear();
	out = pageContext.pushBody();

%>

<%!
	public Color getRandomColor(int fc,int bc){
		Random random = new Random();
		if(fc > 255) fc = 255;
		if(bc > 255) bc = 255;
		int r = fc + random.nextInt(bc-fc);
		int g = fc + random.nextInt(bc-fc);
		int b = fc + random.nextInt(bc-fc);
		return new Color(r,g,b);
	}

%>


