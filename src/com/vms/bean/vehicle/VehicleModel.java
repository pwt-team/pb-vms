package com.vms.bean.vehicle;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**  
* @Title: VehicleModel.java
* @Package com.vms.bean.vehicle
* @Description: 车型信息
* @author yuanzhong
* @date 2015年4月8日 下午10:05:25
* @version V1.0  
*/
@Entity
@Table(name="VECHICLE_MODELS")
public class VehicleModel implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID_")
	private Integer id;
	
	@Column(name="CODE_")
	private String code;
	
	@Column(name="NAME_")
	private String name;
	
	@Column(name="ISDELETE_",length=1)
	private Integer isDelete;
	
	@Column(name="STATUS_",length=1)
	private Integer status;
	
	/**
	 * 创建时间 
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
	@Column(name="UPDATEUSER_")
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
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
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
