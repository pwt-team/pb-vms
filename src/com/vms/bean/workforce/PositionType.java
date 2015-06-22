package com.vms.bean.workforce;

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
* @ClassName: PositionType
* @Description: 岗位类型
* @author yuanzhong
* @date 2015年3月22日 下午3:20:46
*
 */
@Entity
@Table(name="WORKFORCE_POSITIONTYPES")
public class PositionType implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID_")
	private Integer id;
	
	@Column(name="CODE_")
	private String code;
	
	@Column(name="NAME_")
	private String name;

	@Column(name="STATUS_",length=1)
	private Integer status;

	@Column(name="ISDELETE_",length=1)
	private Integer isDelete;

	@Column(name="CREATETIME_")
	private Date createTime;

	@Column(name="CREATEUSER_")
	private String createUser;

	@Column(name="UPDATETIME_")
	private Date updateTime;

	@Column(name="UPDATEUSER")
	private String updateUser;
	
	@Column(name="DESCRIPTION_")
	private String description;

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

}
