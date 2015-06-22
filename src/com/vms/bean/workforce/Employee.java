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
/**
 * 
* @ClassName: Employee
* @Description: 员工信息表
* @author yuanzhong
* @date 2015年3月22日 下午2:23:20
*
 */
@Entity
@Table (name="WORKFORCE_EMPLOYEES")
public class Employee implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID_")
	private Integer id;
	/**
	 * 编码
	 */
	@Column (name="CODE_",length=12)
	private String code;
	/**
	 * 姓名
	 */
	@Column (name="NAME_",length = 80)
	private String name;
	//头像
	@Column(name="FACE_")
	private String face;
	/**
	 * 性别(0:女,1:男,2:保密)
	 */
	@Column(name="SEX_",length=1)
	private Integer sex;
	/**
	 * 身份证号码
	 */
	@Column(name="IDCARD_",length=22)
	private String idcard;
	/**
	 * 证件照片
	 */
	@Column(name="IDCARD_PHOTO_")
	private String idcardPhoto;
	/**
	 * 驾驶证照片
	 */
	@Column(name="DRIVER_PHOTO")
	private String driverPhoto;
	/**
	 * 出生日期
	 */
	@Column(name="BIRTHDAY_")
	private Date birthday;
	/**
	 * 年龄
	 */
	@Column(name="AGE_",length=3)
	private Integer age;
	/**
	 * 家庭地址
	 */
	@Column(name="HOME_ADDRESS_")
	private String homeAddres;
	/**
	 * 电话
	 */
	@Column(name="PHONE_")
	private String phone;
	/**
	 * 手机
	 */
	@Column(name="CALL_")
	private String call;
	/**
	 * QQ
	 */
	@Column (name="QQ_")
	private String qq;
	/**
	 * mail
	 */
	@Column (name="MAIL_")
	private String mail;
	/**
	 * 紧急联络人
	 */
	@Column(name="EMERGENCY_CONTACT_")
	private String emergencyContact;
	/**
	 * 紧急联络人电话
	 */
	@Column(name="EMERGENCY_PHONE_")
	private String emergencyPhone;
	/**
	 * 紧邹联络人关系
	 */
	@Column(name="RELATION_")
	private String relation;
	/**
	 * 部门
	 */
	@ManyToOne
	@JoinColumn(name="DEPARTMENTID_")
	private Department department;
	/**
	 * 薪资
	 */
	@Column(name="PAY_")
	private Float pay;
	/**
	 * 小组
	 */
	@ManyToOne
	@JoinColumn(name="WORKGROUPID_")
	private Workgroup workgroup;
	/**
	 * 岗位类型
	 */
	@ManyToOne
	@JoinColumn(name="POSITIONTYPEID_")
	private PositionType positionType;
	/**
	 * 最高学历
	 */
	@Column(name="EDUCATION_")
	private String education;
	/**
	 * 专业技能
	 */
	@Column(name="SKILL_")
	private String skill;
	/**
	 * 入职日期
	 */
	@Column(name="ENTRY_DATE_")
	private Date entryDate;
	/**
	 * 离职日期
	 */
	@Column(name="LEAVE_DATE_")
	private Date leaveDate;
	/**
	 * 在职状态
	 */
	@Column(name="STATUS_",length=1)
	private Integer status;
	/**
	 * 删除标识，0:正常，1:删除
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
	
	//构造方法
	
	public Employee(){
		
	}
	public Employee(Integer id){
		this.id = id;
	}
	
	//getter/setter
	
	
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
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getIdcardPhoto() {
		return idcardPhoto;
	}
	public void setIdcardPhoto(String idcardPhoto) {
		this.idcardPhoto = idcardPhoto;
	}
	public String getDriverPhoto() {
		return driverPhoto;
	}
	public void setDriverPhoto(String driverPhoto) {
		this.driverPhoto = driverPhoto;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getHomeAddres() {
		return homeAddres;
	}
	public void setHomeAddres(String homeAddres) {
		this.homeAddres = homeAddres;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCall() {
		return call;
	}
	public void setCall(String call) {
		this.call = call;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getEmergencyContact() {
		return emergencyContact;
	}
	public void setEmergencyContact(String emergencyContact) {
		this.emergencyContact = emergencyContact;
	}
	public String getEmergencyPhone() {
		return emergencyPhone;
	}
	public void setEmergencyPhone(String emergencyPhone) {
		this.emergencyPhone = emergencyPhone;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public Float getPay() {
		return pay;
	}
	public void setPay(Float pay) {
		this.pay = pay;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public Date getEntryDate() {
		return entryDate;
	}
	public void setEntryDate(Date entryDate) {
		this.entryDate = entryDate;
	}
	public Date getLeaveDate() {
		return leaveDate;
	}
	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
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
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Workgroup getWorkgroup() {
		return workgroup;
	}
	public void setWorkgroup(Workgroup workgroup) {
		this.workgroup = workgroup;
	}
	public PositionType getPositionType() {
		return positionType;
	}
	public void setPositionType(PositionType positionType) {
		this.positionType = positionType;
	}

}
