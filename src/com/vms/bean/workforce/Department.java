package com.vms.bean.workforce;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="WORKFORCE_DEPARTMENTS")
public class Department implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID_")
	private Integer id;
	/**
	 * 部门 代码
	 */
	@Column(name="CODE_")
	private String code;
	/**
	 * 部门名称
	 */
	@Column(name="NAME_")
	private String name;
	/**
	 * 部门职责描述
	 */
	@Column(name="DESCRIPTION_")
	private String description;
	/**
	 * 部门负责人
	 */
	@ManyToOne
	@JoinColumn(name="MANAGERID_")
	private Employee manager;
	/**
	 * 状态
	 */
	@Column(name="STATUS_")
	private Integer status;
	/**
	 * 删除标识
	 */
	@Column(name="ISDELETE_",length=1)
	private Integer isDelete;
	/**
	 * 创建时间 、
	 */
	@Column(name="CREATETIME_")
	private Date createTime;
	/**
	 * 创建人
	 */
	@Column(name="CREATEUSER_")
	private String createUser;
	/**
	 * 编辑时间
	 */
	@Column(name="UPDATETIME_")
	private Date updateTime;
	/**
	 * 编辑人
	 */
	@Column(name="UPDATEUSER")
	private String updateUser;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Employee getManager() {
		return manager;
	}
	public void setManager(Employee manager) {
		this.manager = manager;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getCreateUser() {
		return createUser;
	}
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getUpdateUser() {
		return updateUser;
	}
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

}
