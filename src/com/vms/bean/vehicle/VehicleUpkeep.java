package com.vms.bean.vehicle;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.vms.bean.workforce.Employee;
/**  
* @Title: VehicleUpkeep.java
* @Package com.vms.bean.vehicle
* @Description: 车辆保养登录
* @author yuanzhong
* @date 2015年4月8日 下午10:38:11
* @version V1.0  
*/
@Entity
@Table(name="VEHICLE_UPKEEPS")
public class VehicleUpkeep implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_")
	private Integer id;
	//编码
	@Column(name="CODE_")
	private String code;
	//类型
	@Column(name="TYPE_")
	private Integer type;   //TODO 应该允许用户维护
	//车辆
	@Column(name="TRUCKID_")
	private VechicleTruck vechicleTruck;
	//计划日期
	@Column(name="PLANDATE_")
	private Date planDate;
	//实际日期
	@Column(name="ACTULEDATE_")
	private Date actuleDate;
	//保养机构
	@Column(name="ORGANIZATION_")
	private Integer organization;  //TODO 应该允许用户维护
	//支出费用
	@Column(name="PAY_")
	private Float pay;
	//驾驶员
	@Column(name="DRIVER_")
	private Employee driver;
	//状态
	@Column(name="STATUS_",length=1)
	private Integer status;
	//删除标识
	@Column(name="ISDELETE_",length=1)
	private Integer isDelete;
	//创建时间 
	@Column(name="CREATETIME_")
	private Date createTime;
	//创建人
	@Column(name="CREATEUSER_")
	private String createUser;
	//编辑时间
	@Column(name="UPDATETIME_")
	private Date updateTime;
	//编辑人
	@Column(name="UPDATEUSER")
	private String updateUser;
	
	
	//getter/setter-------------------------------
	
	
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
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public VechicleTruck getVechicleTruck() {
		return vechicleTruck;
	}
	public void setVechicleTruck(VechicleTruck vechicleTruck) {
		this.vechicleTruck = vechicleTruck;
	}
	public Date getPlanDate() {
		return planDate;
	}
	public void setPlanDate(Date planDate) {
		this.planDate = planDate;
	}
	public Date getActuleDate() {
		return actuleDate;
	}
	public void setActuleDate(Date actuleDate) {
		this.actuleDate = actuleDate;
	}
	public Integer getOrganization() {
		return organization;
	}
	public void setOrganization(Integer organization) {
		this.organization = organization;
	}
	public Float getPay() {
		return pay;
	}
	public void setPay(Float pay) {
		this.pay = pay;
	}
	public Employee getDriver() {
		return driver;
	}
	public void setDriver(Employee driver) {
		this.driver = driver;
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
