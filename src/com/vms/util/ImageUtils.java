package com.vms.util;

import java.awt.Image;
import java.awt.Rectangle;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;

import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;

import org.apache.commons.lang.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 * 
 * @ClassName: ImageUtils
 * @Description: 图片处理工具类
 * @author yuanzhong
 * @date 2015年4月6日 下午8:51:05
 * 
 */
public class ImageUtils {

	// java.net
	public static void main() {

		String imgUrl = "https://www.baidu.com/img/bdlogo.png";
		downloadImg(imgUrl, "f:");
	}

	/**********************************************************************************************/
	/**
	 * 通过图片地址载图片
	 * 
	 * @param imgUrl
	 * @param outPath
	 */
	public static void downloadImg(String imgUrl, String outPath) {
		OutputStream os = null;
		InputStream is = null;
		try {
			// 打开一个url
			URL url = new URL(imgUrl);
			// 打开这个地址
			HttpURLConnection connection = (HttpURLConnection) url
					.openConnection();
			// 用inputStream 输入文件流下载
			is = connection.getInputStream();
			// 指定每次传输的字节大小
			byte[] bs = new byte[4028];
			int len = 0;
			os = new FileOutputStream(outPath + "/baidu.png");
			while ((len = is.read(bs)) != -1) {
				os.write(bs, 0, len);
			}

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				// 关注输出流
				if (os != null)
					os.close();
				// 关注输入流
				if (is != null)
					is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	public static String getResourHTML(String htmlUrl) {
		if (StringUtils.isEmpty(htmlUrl)) {
			return null;
		}

		InputStream iStream = null;
		OutputStream oStream = null;
		BufferedReader bfr = null;
		InputStreamReader read = null;
		StringBuilder builder = new StringBuilder();
		try {
			URL url = new URL(htmlUrl);

			HttpURLConnection connection = (HttpURLConnection) url
					.openConnection();
			// 防止
			connection.setRequestProperty("User-Agent", "java");
			iStream = connection.getInputStream();
			read = new InputStreamReader(iStream);
			bfr = new BufferedReader(read);
			String line = null;
			while ((line = bfr.readLine()) != null) {
				builder.append(line + "\n");
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (bfr != null)
					bfr.close();
				if (read != null)
					read.close();
				if (oStream != null)
					oStream.close();
				if (iStream != null)
					iStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null; // TODO
	}

	/**
	 * 解析网页元素
	 * 
	 * @param htmlURL
	 */
	public static void getResour(String htmlURL) {
		Document document = Jsoup.parse(htmlURL);
		// 获取指定id元素对象
		document.getElementById("id");
		// 获取一个class的多对象
		Elements elements = document.getElementsByClass("class");
		// 获取多对象是的其中一项
		Element element = elements.get(0);
		for (Element el : elements) {
			System.out.println(element);
		}

		// 获取所有img对象
		elements = document.getElementsByTag("img");
		for (Element el : elements) {
			System.out.println(el);
		}
	}

	/**********************************************************************************************/

	/* 
     * 根据尺寸图片居中裁剪 
     */  
     public static void cutCenterImage(String src,String dest,int w,int h) throws IOException{   
         Iterator iterator = ImageIO.getImageReadersByFormatName("jpg");   
         ImageReader reader = (ImageReader)iterator.next();   
         InputStream in=new FileInputStream(src);  
         ImageInputStream iis = ImageIO.createImageInputStream(in);   
         reader.setInput(iis, true);   
         ImageReadParam param = reader.getDefaultReadParam();   
         int imageIndex = 0;   
         Rectangle rect = new Rectangle((reader.getWidth(imageIndex)-w)/2, (reader.getHeight(imageIndex)-h)/2, w, h);    
         param.setSourceRegion(rect);   
         BufferedImage bi = reader.read(0,param);     
         ImageIO.write(bi, "jpg", new File(dest));             
    
     }  
    /* 
     * 图片裁剪二分之一 
     */  
     public static void cutHalfImage(String src,String dest) throws IOException{   
         Iterator iterator = ImageIO.getImageReadersByFormatName("jpg");   
         ImageReader reader = (ImageReader)iterator.next();   
         InputStream in=new FileInputStream(src);  
         ImageInputStream iis = ImageIO.createImageInputStream(in);   
         reader.setInput(iis, true);   
         ImageReadParam param = reader.getDefaultReadParam();   
         int imageIndex = 0;   
         int width = reader.getWidth(imageIndex)/2;   
         int height = reader.getHeight(imageIndex)/2;   
         Rectangle rect = new Rectangle(width/2, height/2, width, height);   
         param.setSourceRegion(rect);   
         BufferedImage bi = reader.read(0,param);     
         ImageIO.write(bi, "jpg", new File(dest));     
     }  
    /* 
     * 图片裁剪通用接口 
     */  
  
    public static void cutImage(String src,String dest,int x,int y,int w,int h) throws IOException{   
           Iterator iterator = ImageIO.getImageReadersByFormatName("jpg");   
           ImageReader reader = (ImageReader)iterator.next();   
           InputStream in=new FileInputStream(src);  
           ImageInputStream iis = ImageIO.createImageInputStream(in);   
           reader.setInput(iis, true);   
           ImageReadParam param = reader.getDefaultReadParam();   
           Rectangle rect = new Rectangle(x, y, w,h);    
           param.setSourceRegion(rect);   
           BufferedImage bi = reader.read(0,param);     
           ImageIO.write(bi, "jpg", new File(dest));             
  
    }   
    /* 
     * 图片缩放 
     */  
    public static void zoomImage(String src,String dest,int w,int h) throws Exception {  
        double wr=0,hr=0;  
        File srcFile = new File(src);  
        File destFile = new File(dest);  
        BufferedImage bufImg = ImageIO.read(srcFile);  
        Image Itemp = bufImg.getScaledInstance(w, h, bufImg.SCALE_SMOOTH);  
        wr=w*1.0/bufImg.getWidth();  
        hr=h*1.0 / bufImg.getHeight();  
        AffineTransformOp ato = new AffineTransformOp(AffineTransform.getScaleInstance(wr, hr), null);  
        Itemp = ato.filter(bufImg, null);  
        try {  
            ImageIO.write((BufferedImage) Itemp,dest.substring(dest.lastIndexOf(".")+1), destFile);  
        } catch (Exception ex) {  
            ex.printStackTrace();  
        }  
          
    }  
}
