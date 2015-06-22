package com.vms.bean.base;

/**
 * 
 * 文件实体
 * FileInfo
 * 创建人:keke
 * 时间：2015年4月1日-下午11:43:20 
 * @version 1.0.0
 *
 */
public class FileInfo {

	// 原文件名
	private String name;
	// 文件类型
	private String fileType;
	// 文件路径
	private String path;
	// 文件后缀
	private String ext;
	// 新文件名
	private String newName;
	// 文件大小
	private long size;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public String getNewName() {
		return newName;
	}

	public void setNewName(String newName) {
		this.newName = newName;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}

}
