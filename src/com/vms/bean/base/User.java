package com.vms.bean.base;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.vms.bean.workforce.Employee;

/**
 * 
* @ClassName: User
* @Description: 系统用户
* @author yuanzhong
* @date 2015年3月22日 下午2:11:37
*
 */
@Entity
@Table (name="BASE_USERS")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID_")
	private Integer id;
	//登录帐号
	@Column(name="ACCOUNT_",length=80)
	private String account;
	//登录密码
	@Column(name="PASSWORD_",length=255)
	private String password;
	//妮称
	@Column(name="NICKNAME_",length=80)
	private String nickName;
	//关联员工信息,cascade = CascadeType.ALL  表示级联实现
	@ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)  //懒加载,一般在manyTomany 效果明显;
	@JoinColumn(name="EMPLOYEEID_")
	private Employee employee;
	
	@Column(name="ROLE_")
	private Integer role;
	
	@Column(name="FACE_")
	private String face;
	
	
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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
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

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public String getFace() {
		return face;
	}

	public void setFace(String face) {
		this.face = face;
	}
	
}
