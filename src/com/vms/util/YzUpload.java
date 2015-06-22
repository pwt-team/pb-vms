package com.vms.util;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.vms.bean.base.User;
import com.vms.dao.base.UserDao;
import com.vms.service.base.IUserService;
import com.vms.service.base.IUserServiceImpl;

/**
 * 
 * @ClassName: YzUpload
 * @Description: 单文件上传工具类
 * @author yuanzhong
 * @date 2015年4月26日 下午2:46:38
 * 
 */
public class YzUpload {

	public static void main(String[] args) {
		
	}
	/**
	 * 
	* @Title: getUploadFile
	* @Description: 获取上传文件方法
	* @author yuanzhong
	* @param @param request
	* @param @param response
	* @param @return
	* @return String
	* @throws
	 */
	@SuppressWarnings("rawtypes")
	public static String getUploadFile(HttpServletRequest request,
			HttpServletResponse response,String face,String uuid) {
		System.out.println(uuid);
		String fileUrl = null;
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			boolean isFile = ServletFileUpload.isMultipartContent(request);
			if(!isFile){
				System.out.println("错误,你提交了一个非Multipart请求!");
				return fileUrl;
			}
			//构建一个文件上传的对象
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			//定义一个迭代器
			Iterator iterator = upload.parseRequest(request).iterator();
			while (iterator.hasNext()) {
				FileItem item = (FileItem) iterator.next();//每次返回一个文件
				//判断叁数作用域是普通类型还是文件上传域
				if(!item.isFormField()){
					String fileName = item.getName();
					String ext = getExt(fileName);
					String imgName = UUID.randomUUID().toString() +ext;
					String filePath = request.getServletContext().getRealPath("upload");
					System.out.println("文件路径:"+filePath +"\\"+imgName);
					File file = new File(filePath);
					if(!file.exists()){
						file.mkdirs();
					}
					file = new File(filePath+"\\"+face);
					System.out.println("当前文件名称:"+filePath+"\\"+face);
					if(file.exists()){
						file.delete();
					}
					//构造一个文件上传路径
					File uploadFile = new File(filePath,imgName);
					//获取文件大
					String size = countFileSize(item.getSize());
					System.out.println("文件大小："+size);
					item.write(uploadFile);
					fileUrl = imgName;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return fileUrl;
		}

		return fileUrl;
	}
	
	public static String countFileSize(long fileSize) {
		String fileSizeString = "";
		try {
			DecimalFormat df = new DecimalFormat("#.00");
			long fileS = fileSize;
			if (fileS == 0) {
				fileSizeString = "0KB";
			} else if (fileS < 1024) {
				fileSizeString = df.format((double) fileS) + "B";
			} else if (fileS < 1048576) {
				fileSizeString = df.format((double) fileS / 1024) + "KB";
			} else if (fileS < 1073741824) {
				fileSizeString = df
						.format(((double) fileS / 1024 / 1024) - 0.01) + "MB";
			} else {
				fileSizeString = df.format((double) fileS / 1024 / 1024 / 1024)
						+ "G";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileSizeString;
	}

	/**
	 * 获取一个文件的后缀(带有点)
	 * 
	 * @param fileName
	 *            文件名
	 * @return 返回文件的后缀
	 */
	public static String getExt(String fileName) {
		int pos = fileName.lastIndexOf(".");
		if (pos == -1)
			return "";
		return fileName.substring(pos, fileName.length());
	}

	/**
	 * 获取一个文件的后缀(不带有点)
	 * 
	 * @param fileName
	 *            文件名
	 * @return 返回文件的后缀
	 */
	public static String getExtNoPoint(String fileName) {
		if (fileName.lastIndexOf(".") == -1)
			return "";
		int pos = fileName.lastIndexOf(".") + 1;
		return fileName.substring(pos, fileName.length());
	}

}
