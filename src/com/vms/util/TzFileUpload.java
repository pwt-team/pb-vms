package com.vms.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.vms.bean.base.FileInfo;

/**
 * 
 * 文件上传类 TZFileUpload 创建人:keke 时间：2015年4月1日-下午11:37:41
 * 
 * @version 1.0.0
 * 
 */
public class TzFileUpload {

	/**
	 * 文件上传 方法名：uploadFile 创建人：xuchengfei 时间：2015年4月1日-下午11:37:36
	 * 
	 * @param request
	 * @throws Exception
	 *             void
	 * @exception
	 * @since 1.0.0
	 */
	public static void uploadFile(HttpServletRequest request) throws Exception {
		// 检查文件上传的请求是否使用了multipart/form-data
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (!isMultipart) {
			System.out.println("请设置:enctype=multipart/form-data");
			return;
		}
		// 创建一个文件上传的工厂
		FileItemFactory factory = new DiskFileItemFactory();
		// 创建一个文件上传的处理器
		ServletFileUpload upload = new ServletFileUpload(factory);
		// 接受上传的文件，文件上传可以会上传多个,一个文件就是一个FileItem
		List<FileItem> fileItems = null;
		try {
			// 获取请求对象里面客户端通过form表单传递过来的file列表信息
			fileItems = upload.parseRequest(request);
		} catch (FileUploadException ex) {
			ex.printStackTrace();
		}

		if (fileItems == null) {
			System.out.println("没有找到对应文件上传信息,请选择文件进行上传...");
			return;
		}

		// [name=3.jpg,
		// StoreLocation=E:\\tomcat7\\temp\\upload_09f974c6_6df3_45ef_a25c_2f24a16c70eb_00000000.tmp
		// 开始文件上传
		for (FileItem fileItem : fileItems) {
			if (fileItem == null) {
				continue;// 继续上传
			}
			// //获取文件信息，名称，大小,类型
			String fileName = fileItem.getName();
			// //类型
			// String contentType = fileItem.getContentType();
			// //大小
			// long fileSize = fileItem.getSize();
			// String fieldName = fileItem.getFieldName();
			// System.out.println("文件的名称："+fileName);
			// System.out.println("文件的类型："+contentType);
			// System.out.println("文件的大小："+fileSize);
			// 文件的第二阶段：开始注意点
			// 客户端文件上传上传的文件有中文，使用下载不支持中文，所以都必须把文件名进行重命名以后在重写写入上传目录

			// 把文件写入到服务器上
			// 1:写到哪里去,获取服务器的路径
			String uploadPath = request.getRealPath("upload");// d://tomcat/tzweb/upload
			// 判断一下这个目录是否在服务器上存在,不存在就创建
			File file = new File(uploadPath);
			if (!file.exists())
				file.mkdirs();
			// 获取文件上传的后缀，注意带有.如果不带.fileName.lastIndexOf(".")+1
			String ext = fileName.substring(fileName.lastIndexOf("."));
			// 新文件名的重命名
			// String newname = new
			// SimpleDateFormat("yyyyMMddHHmmss").format(new Date())+new
			// Random().nextInt(1000000);
			String newname = UUID.randomUUID().toString();
			// 2:怎么写入,讲文件写入服务器uploadPah目录下
			File uploadFile = new File(uploadPath, newname + ext);
			fileItem.write(uploadFile);
		}
	}

	/**
	 * 文件上传 方法名：uploadFile 创建人：xuchengfei 时间：2015年4月1日-下午11:37:36
	 * 
	 * @param request
	 * @throws Exception
	 *             void
	 * @exception
	 * @since 1.0.0
	 */
	public static List<FileInfo> uploadFile2(HttpServletRequest request)
			throws Exception {
		// 检查文件上传的请求是否使用了multipart/form-data
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (!isMultipart) {
			System.out.println("请设置:enctype=multipart/form-data");
			return null;
		}
		// 创建一个文件上传的工厂
		FileItemFactory factory = new DiskFileItemFactory();
		// 创建一个文件上传的处理器
		ServletFileUpload upload = new ServletFileUpload(factory);
		// 接受上传的文件，文件上传可以会上传多个,每一个文件就是一个FileItem
		List<FileItem> fileItems = null;
		try {
			// 获取请求对象里面客户端通过form表单传递过来的file列表信息
			fileItems = upload.parseRequest(request);
		} catch (FileUploadException ex) {
			ex.printStackTrace();
		}

		if (fileItems == null) {
			System.out.println("没有找到对应文件上传信息,请选择文件进行上传...");
			return null;
		}

		List<FileInfo> fileInfos = new ArrayList<FileInfo>();
		FileInfo fileInfo = null;
		// 开始文件上传
		for (FileItem fileItem : fileItems) {

			if (fileItem == null) {
				continue;// 继续上传
			}

			fileInfo = new FileInfo();
			// 获取文件信息，名称，大小,类型
			String fileName = fileItem.getName();
			String contentType = fileItem.getContentType();
			// 大小
			long fileSize = fileItem.getSize();
			// 后缀
			String ext = fileName.substring(fileName.lastIndexOf("."));
			// 新文件名
			// 1:写到哪里去,获取服务器的路径
			String uploadPath = request.getRealPath("upload");// d://tomcat/tzweb/upload
			String newName = UUID.randomUUID().toString();
			String fname = newName + ext;
			fileInfo.setName(fileName);
			fileInfo.setFileType(contentType);
			fileInfo.setSize(fileSize);
			fileInfo.setNewName(newName);
			fileInfo.setExt(ext);
			fileInfo.setPath("upload/" + fname);
			File file = new File(uploadPath);
			if (!file.exists())
				file.mkdirs();
			File uploadFile = new File(uploadPath, fname);
			fileItem.write(uploadFile);
			fileInfos.add(fileInfo);
		}
		return fileInfos;
	}
}
