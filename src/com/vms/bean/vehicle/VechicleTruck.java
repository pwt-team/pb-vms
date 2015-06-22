package com.vms.bean.vehicle;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.vms.bean.workforce.Employee;
/**  
* @Title: Vechicle.java
* @Package com.vms.bean.vehicle
* @Description: 车辆信息
* @author yuanzhong
* @date 2015年4月8日 下午10:13:06
* @version V1.0  
*/
@Entity
@Table(name="VECHICLE_TRUCKS")
public class VechicleTruck implements Serializable {


	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID_")
	private Integer id;
	//编码
	@Column(name="CODE_")
	private String code;
	//车辆名称
	@Column(name="NAME_")
	private String name;
	//车牌号
	@Column(name="NUMBER_")
	private String number;
	//车辆类型
	@ManyToOne
	@JoinColumn(name="VEHICLEMODELID_")
	private VehicleModel vehicleModel;
	//购车日期
	@Column(name="BUYDATE_")
	private Date buyDate;
	//停用日期
	@Column(name="OUTAGEDATE_")
	private Date outageDate;
	//价值
	@Column(name="WORTH_")
	private Float worth;
	//驾驶员
	@Column(name="DRIVER_")
	private Employee driver;
	//状态
	@Column(name="STATUS_")
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public VehicleModel getVehicleModel() {
		return vehicleModel;
	}
	public void setVehicleModel(VehicleModel vehicleModel) {
		this.vehicleModel = vehicleModel;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	public Date getOutageDate() {
		return outageDate;
	}
	public void setOutageDate(Date outageDate) {
		this.outageDate = outageDate;
	}
	public Float getWorth() {
		return worth;
	}
	public void setWorth(Float worth) {
		this.worth = worth;
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
