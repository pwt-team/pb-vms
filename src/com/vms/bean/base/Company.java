package com.vms.bean.base;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 
* @ClassName: Complany
* @Description: 公司信息
* @author yuanzhong
* @date 2015年3月22日 下午3:32:09
*
 */
@Entity
@Table(name="BASE_COMPLANYS")
public class Company implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID_")
	private Integer id;
	
	@Column(name="NAME_")
	private String name;
	
	@Column(name="CODE_")
	private String code;
	
	@Column(name="SHORTNAME_")
	private String shortName;
	
	@Column(name="FULLNAME_")
	private String fullName;
	
	@Column(name="PHONE_")
	private String phone;
	
	@Column(name="WEB_")
	private String web;
	
	@Column(name="STATUS_",length=1)
	private Integer status;

	@Column(name="ISDELETE_",length=1)
	private Integer isDelete;

	@Column(name="CREATETIME_")
	private Date createTime;

	@Column(name="CREATEUSER_")
	private Integer createUser;

	@Column(name="UPDATETIME_")
	private Date updateTime;

	@Column(name="UPDATEUSER")
	private Integer updateUser;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
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

	public Integer getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Integer createUser) {
		this.createUser = createUser;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(Integer updateUser) {
		this.updateUser = updateUser;
	}
	

}
